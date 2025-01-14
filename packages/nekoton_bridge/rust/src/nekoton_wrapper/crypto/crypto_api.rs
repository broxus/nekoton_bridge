#![allow(unused_variables, dead_code)]

pub use crate::nekoton_wrapper::crypto::models::UnsignedMessageBoxTrait;
use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::{parse_public_key, HandleError};
use crate::nekoton_wrapper::helpers::{parse_hex_or_base64_bytes, parse_signature};
use ed25519_dalek::Verifier;
pub use nekoton::crypto::UnsignedMessage;
use std::sync::Arc;

/// Check signature by publicKey and data
pub fn nt_verify_signature(
    public_key: String,
    data: String,
    signature: String,
    signature_id: Option<i32>,
) -> anyhow::Result<bool> {
    let public_key = parse_public_key(public_key)?;

    let data = parse_hex_or_base64_bytes(data).handle_error()?;
    let signature = parse_signature(signature)?;

    let data = nekoton::crypto::extend_with_signature_id(&data, signature_id);

    Ok(public_key.verify(data.as_ref(), &signature).is_ok())
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
    /// Returns secondsSinceEpoch
    pub fn expire_at(&self) -> u32 {
        self.inner_message.expire_at()
    }

    /// Returns base64 encoded hash string of UnsignedMessage
    pub fn hash(&self) -> String {
        self.inner_message.hash()
    }

    /// Sign message with signature and return json-encoded SignedMessage.
    /// signature receives from KeyStore.sign where data is UnsignedMessage.hash
    pub fn sign(&self, signature: String) -> anyhow::Result<String> {
        self.inner_message.sign(signature)
    }

    /// Sign message with fake signature and return json-encoded SignedMessage or throws error
    pub fn sign_fake(&self) -> anyhow::Result<String> {
        self.inner_message.sign_fake()
    }
}
