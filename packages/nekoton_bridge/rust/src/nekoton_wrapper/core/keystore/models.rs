use nekoton::{core::ton_wallet::WalletType, crypto::LedgerSignInput, external::LedgerSignatureContext};
use nekoton_utils::{serde_public_key};
use serde::Deserialize;

use crate::nekoton_wrapper::core::ton_wallet::models::WalletTypeDef;

#[derive(Deserialize)]
pub struct LedgerSignInputHelper(#[serde(with = "LedgerSignInputDef")] pub LedgerSignInput);

#[derive(Deserialize)]
#[serde(remote = "LedgerSignInput", rename_all = "camelCase")]
pub struct LedgerSignInputDef {
    #[serde(with = "WalletTypeDef")]
    pub wallet: WalletType,
    #[serde(with = "serde_public_key")]
    pub public_key: ed25519_dalek::PublicKey,
    #[serde(default)]
    pub context: Option<LedgerSignatureContext>,
}

/// Structure that is used with signing data
pub struct SignedData {
    /// hex encoded hash
    pub data_hash: String,
    /// base64 encoded data
    pub signature: String,
    /// hex encoded data
    pub signature_hex: String,
    /// Signatures
    pub signature_parts: SignatureParts,
}

/// Structure that is used with signing data
pub struct SignedDataRaw {
    /// base64 encoded data
    pub signature: String,
    /// hex encoded data
    pub signature_hex: String,
    /// Signatures
    pub signature_parts: SignatureParts,
}

/// Structure that is used with signing data
/// high and low looks like: 0x{hex_data}
pub struct SignatureParts {
    /// symbols before 32-th
    pub low: String,
    /// symbols after 32-th
    pub high: String,
}
