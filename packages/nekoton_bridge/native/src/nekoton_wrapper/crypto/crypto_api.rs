#![allow(unused_variables, dead_code)]

pub use crate::nekoton_wrapper::crypto::models::UnsignedMessageBoxTrait;
use crate::nekoton_wrapper::{parse_public_key, HandleError};
use ed25519_dalek::Verifier;
pub use flutter_rust_bridge::RustOpaque;
pub use nekoton::crypto::UnsignedMessage;
use std::convert::TryFrom;
use std::sync::Arc;

/// Check signature by publicKey and data hash
pub fn verify_signature(
    public_key: String,
    data_hash: String,
    signature: String,
) -> Result<bool, anyhow::Error> {
    let public_key = parse_public_key(public_key).handle_error()?;

    let data_hash = match hex::decode(&data_hash) {
        Ok(data_hash) => data_hash,
        Err(e) => match base64::decode(&data_hash) {
            Ok(data_hash) => data_hash,
            Err(e) => return Err(anyhow::Error::msg(e)),
        },
    };

    if data_hash.len() != 32 {
        return Err(anyhow::Error::msg("Invalid data hash. Expected 32 bytes"));
    }

    let signature = match base64::decode(&signature) {
        Ok(signature) => signature,
        Err(e) => match hex::decode(&signature) {
            Ok(signature) => signature,
            Err(_) => return Err(anyhow::Error::msg(e)),
        },
    };

    let signature = match ed25519_dalek::Signature::try_from(signature.as_slice()) {
        Ok(signature) => signature,
        Err(_) => return Err(anyhow::Error::msg("Invalid signature. Expected 64 bytes")),
    };

    anyhow::Result::Ok(public_key.verify(&data_hash, &signature).is_ok())
}

/// This struct creates only in rust side and describes UnsignedMessage
pub struct UnsignedMessageImpl {
    pub inner_message: RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>,
}

impl UnsignedMessageImpl {
    pub fn refresh_timeout(&self) {
        self.inner_message.refresh_timeout();
    }

    /// Return current expiration timestamp of UnsignedMessage
    pub fn expire_at(&self) -> u32 {
        self.inner_message.expire_at()
    }

    /// Returns base64 encoded hash string of UnsignedMessage
    pub fn hash(&self) -> String {
        self.inner_message.hash()
    }

    /// Sign message with signature and return json-encoded SignedMessage.
    /// signature receives from UnsignedMessage.hash
    pub fn sign(&self, signature: String) -> Result<String, anyhow::Error> {
        self.inner_message.sign(signature)
    }
}
