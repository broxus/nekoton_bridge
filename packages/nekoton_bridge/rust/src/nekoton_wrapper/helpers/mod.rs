#![allow(unused_variables, dead_code)]

use crate::nekoton_wrapper::helpers::models::AbiParam;
use crate::nekoton_wrapper::transport::models::FullContractState;
use crate::nekoton_wrapper::HandleError;
use base64::{engine::general_purpose, Engine};
use nekoton::transport::models::RawContractState;
use nekoton_abi::MethodName;
use std::{convert::TryFrom, str::FromStr};
use ton_block::{AccountStuff, Deserializable, MaybeDeserialize, Serializable};
use ton_types::{Cell, SliceData};

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
pub fn parse_account_stuff(boc: String) -> anyhow::Result<ton_block::AccountStuff> {
    let bytes = general_purpose::STANDARD.decode(boc).handle_error()?;
    ton_types::deserialize_tree_of_cells(&mut bytes.as_slice())
        .and_then(|cell| {
            let mut slice = SliceData::load_cell(cell)?;
            Ok(ton_block::AccountStuff {
                addr: Deserializable::construct_from(&mut slice)?,
                storage_stat: Deserializable::construct_from(&mut slice)?,
                storage: ton_block::AccountStorage {
                    last_trans_lt: Deserializable::construct_from(&mut slice)?,
                    balance: Deserializable::construct_from(&mut slice)?,
                    state: Deserializable::construct_from(&mut slice)?,
                    init_code_hash: if slice.remaining_bits() > 0 {
                        ton_types::UInt256::read_maybe_from(&mut slice)?
                    } else {
                        None
                    },
                },
            })
        })
        .handle_error()
}

/// Parse cell and return its instance or throw error
pub fn parse_cell(boc: String) -> anyhow::Result<Cell> {
    let boc = boc.trim();
    if boc.is_empty() {
        Ok(Cell::default())
    } else {
        let body = general_purpose::STANDARD.decode(boc).handle_error()?;
        ton_types::deserialize_tree_of_cells(&mut body.as_slice()).handle_error()
    }
}

/// Parse contract abi from string and return its instance or throws error
pub fn parse_contract_abi(contract_abi: String) -> anyhow::Result<ton_abi::Contract> {
    ton_abi::Contract::load(&contract_abi).handle_error()
}

/// Parse method name and return its instance or throws error
pub fn parse_method_name(value: Option<String>) -> anyhow::Result<MethodName> {
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
pub fn parse_slice(boc: String) -> anyhow::Result<ton_types::SliceData> {
    let body = general_purpose::STANDARD.decode(boc)?;
    let cell = ton_types::deserialize_tree_of_cells(&mut body.as_slice())?;
    SliceData::load_cell(cell)
}

/// Parse params list and returns vector of these instances or throws error
pub fn parse_params_list(params: String) -> anyhow::Result<Vec<ton_abi::Param>> {
    let params = serde_json::from_str::<Vec<AbiParam>>(&params).handle_error()?;

    params
        .iter()
        .map(parse_param)
        .collect::<anyhow::Result<Vec<_>, AbiError>>()
        .handle_error()
}

/// Parse single param and return its instance or throws error
pub fn parse_param(param: &AbiParam) -> anyhow::Result<ton_abi::Param, AbiError> {
    let name = param.name.to_owned();

    let mut kind: ton_abi::ParamType = parse_param_type(&param.param_type)?;

    let components: Vec<ton_abi::Param> = match &param.components {
        Some(components) => components
            .iter()
            .map(parse_param)
            .collect::<anyhow::Result<Vec<_>, AbiError>>()?,
        None => Vec::new(),
    };

    kind.set_components(components)
        .map_err(|_| AbiError::InvalidComponents)?;

    Ok(ton_abi::Param { name, kind })
}

/// Parse param type and return its instance or throws error
#[allow(clippy::disallowed_methods)]
pub fn parse_param_type(kind: &str) -> anyhow::Result<ton_abi::ParamType, AbiError> {
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

/// Returns tvc as base64
pub fn make_boc(data: &Cell) -> anyhow::Result<String> {
    ton_types::serialize_toc(data)
        .handle_error()
        .map(|data| general_purpose::STANDARD.encode(data))
}

/// Parse string abi version into struct
pub fn parse_abi_version(version: &str) -> anyhow::Result<ton_abi::contract::AbiVersion> {
    let version = ton_abi::contract::AbiVersion::parse(version).handle_error()?;
    if version.is_supported() {
        Ok(version)
    } else {
        Err("Unsupported ABI version").handle_error()
    }
}

/// Parse string abi version into struct or default version 2.2
pub fn parse_optional_abi_version(
    version: Option<String>,
) -> anyhow::Result<ton_abi::contract::AbiVersion> {
    match version {
        Some(version) => Ok(parse_abi_version(&version).handle_error()?),
        None => Ok(ton_abi::contract::ABI_VERSION_2_2),
    }
}

/// Returns [tvc, hash] from cell
pub fn make_boc_with_hash(cell: Cell) -> anyhow::Result<Vec<String>> {
    Ok([make_boc(&cell)?, cell.repr_hash().to_hex_string()].to_vec())
}

/// Returns [tvc, hash] with serialization of data
pub fn serialize_into_boc_with_hash(data: &dyn Serializable) -> anyhow::Result<Vec<String>> {
    let cell = data.serialize().handle_error()?;
    make_boc_with_hash(cell)
}

/// Parse hex or base64 if failed and return bytes
/// If string is empty, return empty list
pub fn parse_hex_or_base64_bytes(data: String) -> anyhow::Result<Vec<u8>> {
    let data = data.trim();
    if data.is_empty() {
        return Ok(Default::default());
    }

    match parse_hex_bytes(data) {
        Ok(signature) => Ok(signature),
        Err(e) => match general_purpose::STANDARD.decode(data) {
            Ok(signature) => Ok(signature),
            Err(_) => Err(e),
        },
    }
}

/// Parse base64 or hex if failed and return bytes
/// If string is empty, return empty list
pub fn parse_base64_or_hex_bytes(data: String) -> Result<Vec<u8>, base64::DecodeError> {
    let data = data.trim();
    if data.is_empty() {
        return Ok(Default::default());
    }

    match general_purpose::STANDARD.decode(data) {
        Ok(signature) => Ok(signature),
        Err(e) => match parse_hex_bytes(data) {
            Ok(signature) => Ok(signature),
            Err(_) => Err(e),
        },
    }
}

/// Parse hex and return decoded bytes
pub fn parse_hex_bytes(data: &str) -> anyhow::Result<Vec<u8>> {
    hex::decode(data.strip_prefix("0x").unwrap_or(data)).handle_error()
}

/// Parse signature from string returning decoded object
pub fn parse_signature(signature: String) -> anyhow::Result<ed25519_dalek::Signature> {
    let signature = parse_base64_or_hex_bytes(signature).handle_error()?;
    match ed25519_dalek::Signature::try_from(signature.as_slice()) {
        Ok(signature) => Ok(signature),
        Err(_) => Err("Invalid signature. Expected 64 bytes").handle_error(),
    }
}

/// Returns tvc as base64
pub fn serialize_into_boc(data: &dyn Serializable) -> anyhow::Result<String> {
    let cell = data.serialize().handle_error()?;
    make_boc(&cell)
}

pub fn serialize_state_init_data_key(key: u64) -> anyhow::Result<ton_types::SliceData> {
    key.serialize().and_then(ton_types::SliceData::load_cell)
}

/// Returns optional json-encoded FullContractState made from RawContractState
pub fn make_full_contract_state(
    raw_contract_state: RawContractState,
) -> anyhow::Result<Option<String>> {
    let full_contract_state = match raw_contract_state {
        RawContractState::Exists(state) => {
            let boc = serialize_into_boc(&state.account).handle_error()?;

            let is_deployed = matches!(
                &state.account.storage.state,
                ton_block::AccountState::AccountActive { state_init: _ }
            );
            let account = state.account.clone();
            let code_hash = match &state.account.storage.state {
                ton_block::AccountState::AccountActive {
                    state_init:
                        ton_block::StateInit {
                            code: Some(code), ..
                        },
                } => Some(code.repr_hash().to_hex_string()),
                _ => None,
            };

            Some(FullContractState {
                balance: account.storage.balance.grams.as_u128().to_string(),
                gen_timings: state.timings,
                last_transaction_id: Some(state.last_transaction_id),
                is_deployed,
                code_hash,
                boc,
            })
        }
        RawContractState::NotExists { timings } => None,
    };

    match full_contract_state {
        None => Ok(None),
        Some(state) => Ok(Some(serde_json::to_string(&state).handle_error()?)),
    }
}

pub fn get_code_hash(account: &AccountStuff) -> anyhow::Result<String> {
    match account.clone().storage.state {
        ton_block::AccountState::AccountActive { state_init, .. } => {
            let toc = state_init.code.as_ref().map(ton_types::serialize_toc);
            match toc {
                Some(t) => Ok(t
                    .map(|toc| general_purpose::STANDARD.encode(toc))
                    .handle_error()?),
                None => Err("WalletNotDeployed").handle_error()?,
            }
        }
        _ => Err("WalletNotDeployed").handle_error()?,
    }
}

pub fn create_plain_comment_playload(comment: &str) -> anyhow::Result<Cell> {
    use ton_types::IBitstring;

    const MAX_LEN: usize = 127 - 4; // At most 127 bytes in cell, 4 reserved for tag.

    let comment = comment.as_bytes();
    anyhow::ensure!(
        comment.len() <= MAX_LEN,
        "Comment is too large to fit into cell"
    );

    let mut b = ton_types::BuilderData::new();
    b.append_u32(0x00000000)?;
    b.append_raw(comment, comment.len() * 8)?;
    b.into_cell()
}
