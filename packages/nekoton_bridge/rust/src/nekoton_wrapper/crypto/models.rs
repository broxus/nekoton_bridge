#![allow(unused_variables, dead_code)]

use crate::clock;
use crate::frb_generated::RustOpaque;
use base64::engine::general_purpose;
use base64::Engine;
pub use nekoton::crypto;
use nekoton_utils::serde_uint256;
use serde::{Deserialize, Serialize};
use std::convert::TryInto;
use std::panic::{RefUnwindSafe, UnwindSafe};
use std::sync::Arc;
use ton_block::Serializable;
use ton_types::{Cell, UInt256};

use crate::nekoton_wrapper::{HandleError, JsonOrError, ToNekoton, ToSerializable};

/// -----------------------------
/// Rust level models, no need to import it to Dart
/// ------------------------------

/// List of key signers that could be used in keystore
#[derive(Eq, PartialEq)]
pub enum KeySigner {
    Encrypted,
    Derived,
    Ledger,

    /// Do not use this type. This is fucking hack because generator don't want generate
    /// converter for Vec<KeySigner> if it is simple enum
    Stub(bool),
}

impl ToString for KeySigner {
    fn to_string(&self) -> String {
        match self {
            KeySigner::Encrypted => String::from("EncryptedKeySigner"),
            KeySigner::Derived => String::from("DerivedKeySigner"),
            KeySigner::Ledger => String::from("LedgerKeySigner"),
            KeySigner::Stub(_) => String::from(""),
        }
    }
}

#[derive(Serialize, Deserialize)]
pub struct SignedMessage {
    #[serde(with = "serde_uint256")]
    pub hash: UInt256,
    // secondsSinceEpoch
    pub expire_at: u32,
    #[serde(with = "serde_message")]
    pub boc: ton_block::Message,
}

impl ToSerializable<SignedMessage> for crypto::SignedMessage {
    fn to_serializable(self) -> SignedMessage {
        let cell: Cell = self
            .message
            .write_to_new_cell()
            .handle_error()
            .unwrap()
            .into_cell()
            .expect("failed to create cell from builder");

        let hash = cell.repr_hash();

        SignedMessage {
            hash,
            expire_at: self.expire_at,
            boc: self.message,
        }
    }
}

impl ToNekoton<crypto::SignedMessage> for SignedMessage {
    fn to_nekoton(self) -> crypto::SignedMessage {
        crypto::SignedMessage {
            message: self.boc,
            expire_at: self.expire_at,
        }
    }
}

pub mod serde_message {
    use nekoton_utils::serde_cell;
    use serde::de::Error;
    use ton_block::{Deserializable, Serializable};

    use super::*;

    pub fn serialize<S>(data: &ton_block::Message, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::Error;

        serde_cell::serialize(&data.serialize().map_err(Error::custom)?, serializer)
    }

    pub fn deserialize<'de, D>(deserializer: D) -> Result<ton_block::Message, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        let data = String::deserialize(deserializer)?;
        ton_block::Message::construct_from_base64(&data).map_err(Error::custom)
    }
}

/// This is a fucking hack that allows using nekoton::UnsignedMessage in dart classes.
/// This is a trait-wrapper above real UnsignedMessage with UnwindSafe + RefUnwindSafe.
pub trait UnsignedMessageBoxTrait: Send + Sync + UnwindSafe + RefUnwindSafe {
    /// Adjust expiration timestamp from now
    fn refresh_timeout(&self) -> RustOpaque<Arc<dyn UnsignedMessageBoxTrait>>;

    /// Current expiration timestamp as secondsSinceEpoch
    fn expire_at(&self) -> u32;

    /// Message body hash
    fn hash(&self) -> String;

    /// Create signed message from prepared inputs
    /// # Arguments
    /// `signature` - signature receives from KeyStore.sign where data is UnsignedMessage.hash
    fn sign(&self, signature: String) -> anyhow::Result<String>;

    /// Sign message with fake signature and return json-encoded SignedMessage or throws error
    fn sign_fake(&self) -> anyhow::Result<String>;
}

pub struct UnsignedMessageBox {
    inner_message: Box<dyn crypto::UnsignedMessage>,
}

impl UnwindSafe for UnsignedMessageBox {}

impl RefUnwindSafe for UnsignedMessageBox {}

/// Create suitable object for frb
impl UnsignedMessageBox {
    pub fn create(
        inner_message: Box<dyn crypto::UnsignedMessage>,
    ) -> RustOpaque<Arc<dyn UnsignedMessageBoxTrait>> {
        RustOpaque::new(Arc::new(Self { inner_message }))
    }
}

/// Real implementation of methods that allows us handle nekoton methods with some logic
impl UnsignedMessageBoxTrait for UnsignedMessageBox {
    fn refresh_timeout(&self) -> RustOpaque<Arc<dyn UnsignedMessageBoxTrait>> {
        let mut msg = self.inner_message.clone();
        msg.refresh_timeout(clock!().as_ref());

        UnsignedMessageBox::create(msg)
    }

    /// Return current expiration timestamp of UnsignedMessage
    /// Returns secondsSinceEpoch
    fn expire_at(&self) -> u32 {
        self.inner_message.expire_at()
    }

    /// Returns base64 encoded hash string of UnsignedMessage
    fn hash(&self) -> String {
        general_purpose::STANDARD.encode(self.inner_message.hash())
    }

    /// Sign message with signature and return json-encoded SignedMessage.
    /// signature receives from UnsignedMessage.hash
    fn sign(&self, signature: String) -> anyhow::Result<String> {
        let signature: [u8; ed25519_dalek::SIGNATURE_LENGTH] = general_purpose::STANDARD
            .decode(signature)
            .handle_error()?
            .as_slice()
            .try_into()
            .handle_error()?;

        let signed_message = self.inner_message.sign(&signature);

        match signed_message {
            Ok(message) => serde_json::to_value(message).json_or_error(),
            Err(e) => Err(e),
        }
    }

    /// Sign message with fake signature and return json-encoded SignedMessage or throws error
    fn sign_fake(&self) -> anyhow::Result<String> {
        let signed_message = self.inner_message.sign(&[0; 64]).handle_error()?;

        serde_json::to_value(signed_message).json_or_error()
    }
}
