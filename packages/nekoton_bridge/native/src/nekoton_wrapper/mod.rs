pub mod crypto;
pub mod models_api;

use anyhow::{Context, Result};
use serde::Serialize;
use ton_block::MsgAddressInt;

use std::str::FromStr;

#[macro_export]
macro_rules! clock {
    () => {
        CLOCK.clone()
    };
}

#[derive(Serialize)]
#[serde(rename_all = "camelCase", tag = "type", content = "data")]
pub enum ExecutionResult<T>
where
    T: Serialize,
{
    Ok(T),
    Err(String),
}

pub trait MatchResult {
    fn match_result(self) -> String;
}

impl<T> MatchResult for Result<T, String>
where
    T: Serialize,
{
    fn match_result(self) -> String {
        let result = match self {
            Ok(ok) => ExecutionResult::Ok(ok),
            Err(err) => ExecutionResult::Err(err),
        };

        serde_json::to_string(&result).unwrap().to_string()
    }
}

pub trait HandleError {
    type Output;

    fn handle_error(self) -> Result<Self::Output, String>;
}

/// Returns T or String as error
impl<T, E> HandleError for Result<T, E>
where
    E: ToString,
{
    type Output = T;

    fn handle_error(self) -> Result<Self::Output, String> {
        self.map_err(|e| e.to_string())
    }
}

fn parse_hash(hash: String) -> Result<ton_types::UInt256, String> {
    ton_types::UInt256::from_str(hash.as_str()).handle_error()
}

fn parse_public_key(public_key: String) -> Result<ed25519_dalek::PublicKey, anyhow::Error> {
    Ok(ed25519_dalek::PublicKey::from_bytes(
        &hex::decode(public_key.as_str()).context("Bad hex data")?,
    )?)
}

fn parse_address(address: String) -> Result<MsgAddressInt, String> {
    MsgAddressInt::from_str(address.as_str()).handle_error()
}

pub(crate) fn str_list_to_string_vec(slice: &[&str]) -> Vec<String> {
    slice.into_iter().map(|x| x.to_string()).collect()
}

pub(crate) fn str_vec_to_string_vec(slice: Vec<&'static str>) -> Vec<String> {
    slice.into_iter().map(|x| x.to_string()).collect()
}
