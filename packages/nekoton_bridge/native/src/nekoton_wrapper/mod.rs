pub mod crypto;
pub mod external;
pub mod helpers;
pub mod models_api;
// pub mod transport;

use anyhow::{Context, Result};
use lazy_static::lazy_static;
use nekoton_utils::SimpleClock;
use serde::Serialize;
use std::str::FromStr;
use std::sync::Arc;
use ton_block::MsgAddressInt;

lazy_static! {
    pub static ref CLOCK: Arc<SimpleClock> = Arc::new(SimpleClock {});
}

#[macro_export]
macro_rules! clock {
    () => {
        $crate::nekoton_wrapper::CLOCK.clone()
    };
}

/// This help interface to convert value to json string or return error.
/// Typical usage:
/// ```
/// serde_json::to_value(my_object_to_json).json_or_error()
/// ```
pub trait JsonOrError {
    fn json_or_error(self) -> Result<String, anyhow::Error>;
}

impl<T, E> JsonOrError for Result<T, E>
where
    T: Serialize,
    E: ToString,
{
    fn json_or_error(self) -> Result<String, anyhow::Error> {
        match self {
            Ok(ok) => serde_json::to_string(&ok).handle_error(),
            Err(err) => Err(anyhow::Error::msg(err.to_string())),
        }
    }
}

/// Returns expected type or Error
pub trait HandleError {
    type Output;

    fn handle_error(self) -> Result<Self::Output, anyhow::Error>;
}

/// Returns expected type or Error
impl<T, E> HandleError for Result<T, E>
where
    E: ToString,
{
    type Output = T;

    fn handle_error(self) -> Result<Self::Output, anyhow::Error> {
        self.map_err(|e| anyhow::Error::msg(e.to_string()))
    }
}

// fn parse_hash(hash: String) -> Result<ton_types::UInt256, String> {
//     ton_types::UInt256::from_str(hash.as_str()).handle_error()
// }

/// Parse public key from string and return its instance or throw error
pub fn parse_public_key(public_key: String) -> Result<ed25519_dalek::PublicKey, anyhow::Error> {
    Ok(ed25519_dalek::PublicKey::from_bytes(
        &hex::decode(public_key).context("Bad hex data")?,
    )?)
}

/// Parse address from string and return its instance or throw error
pub fn parse_address(address: String) -> Result<MsgAddressInt, anyhow::Error> {
    MsgAddressInt::from_str(address.as_str()).handle_error()
}

pub fn str_list_to_string_vec(slice: &[&str]) -> Vec<String> {
    slice.iter().map(|x| x.to_string()).collect()
}

pub fn str_vec_to_string_vec(slice: Vec<&'static str>) -> Vec<String> {
    slice.into_iter().map(|x| x.to_string()).collect()
}

pub trait ToNekoton<T> {
    fn to_nekoton(self) -> T;
}

pub trait ToSerializable<T> {
    fn to_serializable(self) -> T;
}
