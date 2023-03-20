#![allow(unused_variables, dead_code)]

use crate::nekoton_wrapper::helpers::models::AbiParam;
use crate::nekoton_wrapper::HandleError;
use nekoton_abi::MethodName;
use std::str::FromStr;
use ton_block::{Deserializable, MaybeDeserialize};

pub mod abi_api;
pub mod models;

#[derive(thiserror::Error, Debug)]
pub enum AbiError {
    #[error("Expected param type")]
    ExpectedParamType,
    #[error("Expected string or array")]
    ExpectedStringOrArray,
    #[error("Invalid components")]
    InvalidComponents,
}

/// Parse account stuff and return its instance or throw error
pub fn parse_account_stuff(boc: String) -> Result<ton_block::AccountStuff, anyhow::Error> {
    let bytes = general_purpose::STANDARD.decode(boc).handle_error()?;
    ton_types::deserialize_tree_of_cells(&mut bytes.as_slice())
        .and_then(|cell| {
            let slice = &mut cell.into();
            Ok(ton_block::AccountStuff {
                addr: Deserializable::construct_from(slice)?,
                storage_stat: Deserializable::construct_from(slice)?,
                storage: ton_block::AccountStorage {
                    last_trans_lt: Deserializable::construct_from(slice)?,
                    balance: Deserializable::construct_from(slice)?,
                    state: Deserializable::construct_from(slice)?,
                    init_code_hash: if slice.remaining_bits() > 0 {
                        ton_types::UInt256::read_maybe_from(slice)?
                    } else {
                        None
                    },
                },
            })
        })
        .handle_error()
}

/// Parse cell and return its instance or throw error
pub fn parse_cell(boc: String) -> Result<ton_types::Cell, anyhow::Error> {
    let boc = boc.trim();
    if boc.is_empty() {
        Ok(ton_types::Cell::default())
    } else {
        let body = general_purpose::STANDARD.decode(boc).handle_error()?;
        ton_types::deserialize_tree_of_cells(&mut body.as_slice()).handle_error()
    }
}

/// Parse contract abi from string and return its instance or throws error
pub fn parse_contract_abi(contract_abi: String) -> Result<ton_abi::Contract, anyhow::Error> {
    ton_abi::Contract::load(&contract_abi).handle_error()
}

/// Parse method name and return its instance or throws error
pub fn parse_method_name(value: Option<String>) -> Result<MethodName, anyhow::Error> {
    match value {
        Some(value) => {
            if let Ok(value) = serde_json::from_str::<String>(&value) {
                Ok(MethodName::Known(value))
            } else if let Ok(value) = serde_json::from_str::<Vec<String>>(&value) {
                Ok(MethodName::GuessInRange(value))
            } else {
                Err(AbiError::ExpectedStringOrArray).handle_error()
            }
        }
        None => Ok(MethodName::Guess),
    }
}

/// Parse boc to slice and return its instance or throws error
pub fn parse_slice(boc: String) -> Result<ton_types::SliceData, anyhow::Error> {
    let body = general_purpose::STANDARD.decode(boc).handle_error()?;
    let cell = ton_types::deserialize_tree_of_cells(&mut body.as_slice()).handle_error()?;
    Ok(cell.into())
}

/// Parse params list and returns vector of these instances or throws error
pub fn parse_params_list(params: String) -> Result<Vec<ton_abi::Param>, anyhow::Error> {
    let params = serde_json::from_str::<Vec<AbiParam>>(&params).handle_error()?;

    params
        .iter()
        .map(parse_param)
        .collect::<Result<_, AbiError>>()
        .handle_error()
}

/// Parse single param and return its instance or throws error
pub fn parse_param(param: &AbiParam) -> Result<ton_abi::Param, AbiError> {
    let name = param.name.to_owned();

    let mut kind: ton_abi::ParamType = parse_param_type(&param.param_type)?;

    let components: Vec<ton_abi::Param> = match &param.components {
        Some(components) => components
            .iter()
            .map(parse_param)
            .collect::<Result<_, AbiError>>()?,
        None => Vec::new(),
    };

    kind.set_components(components)
        .map_err(|_| AbiError::InvalidComponents)?;

    Ok(ton_abi::Param { name, kind })
}

/// Parse param type and return its instance or throws error
#[allow(clippy::disallowed_methods)]
pub fn parse_param_type(kind: &str) -> Result<ton_abi::ParamType, AbiError> {
    if let Some(']') = kind.chars().last() {
        let num: String = kind
            .chars()
            .rev()
            .skip(1)
            .take_while(|c| *c != '[')
            .collect::<String>()
            .chars()
            .rev()
            .collect();

        let count = kind.len();
        return if num.is_empty() {
            let subtype = parse_param_type(&kind[..count - 2])?;
            Ok(ton_abi::ParamType::Array(Box::new(subtype)))
        } else {
            let len = num
                .parse::<usize>()
                .map_err(|_| AbiError::ExpectedParamType)?;

            let subtype = parse_param_type(&kind[..count - num.len() - 2])?;
            Ok(ton_abi::ParamType::FixedArray(Box::new(subtype), len))
        };
    }

    let result = match kind {
        "bool" => ton_abi::ParamType::Bool,
        "tuple" => ton_abi::ParamType::Tuple(Vec::new()),
        s if s.starts_with("int") => {
            let len = usize::from_str(&s[3..]).map_err(|_| AbiError::ExpectedParamType)?;
            ton_abi::ParamType::Int(len)
        }
        s if s.starts_with("uint") => {
            let len = usize::from_str(&s[4..]).map_err(|_| AbiError::ExpectedParamType)?;
            ton_abi::ParamType::Uint(len)
        }
        s if s.starts_with("varint") => {
            let len = usize::from_str(&s[6..]).map_err(|_| AbiError::ExpectedParamType)?;
            ton_abi::ParamType::Int(len)
        }
        s if s.starts_with("varuint") => {
            let len = usize::from_str(&s[7..]).map_err(|_| AbiError::ExpectedParamType)?;
            ton_abi::ParamType::Uint(len)
        }
        s if s.starts_with("map(") && s.ends_with(')') => {
            let types: Vec<&str> = kind[4..kind.len() - 1].splitn(2, ',').collect();
            if types.len() != 2 {
                return Err(AbiError::ExpectedParamType);
            }

            let key_type = parse_param_type(types[0])?;
            let value_type = parse_param_type(types[1])?;

            match key_type {
                ton_abi::ParamType::Int(_)
                | ton_abi::ParamType::Uint(_)
                | ton_abi::ParamType::Address => {
                    ton_abi::ParamType::Map(Box::new(key_type), Box::new(value_type))
                }
                _ => return Err(AbiError::ExpectedParamType),
            }
        }
        "cell" => ton_abi::ParamType::Cell,
        "address" => ton_abi::ParamType::Address,
        "token" | "gram" => ton_abi::ParamType::Token,
        "bytes" => ton_abi::ParamType::Bytes,
        s if s.starts_with("fixedbytes") => {
            let len = usize::from_str(&s[10..]).map_err(|_| AbiError::ExpectedParamType)?;
            ton_abi::ParamType::FixedBytes(len)
        }
        "time" => ton_abi::ParamType::Time,
        "expire" => ton_abi::ParamType::Expire,
        "pubkey" => ton_abi::ParamType::PublicKey,
        "string" => ton_abi::ParamType::String,
        s if s.starts_with("optional(") && s.ends_with(')') => {
            let inner_type = parse_param_type(&s[9..s.len() - 1])?;
            ton_abi::ParamType::Optional(Box::new(inner_type))
        }
        s if s.starts_with("ref(") && s.ends_with(')') => {
            let inner_type = parse_param_type(&s[4..s.len() - 1])?;
            ton_abi::ParamType::Ref(Box::new(inner_type))
        }
        _ => return Err(AbiError::ExpectedParamType),
    };

    Ok(result)
}
