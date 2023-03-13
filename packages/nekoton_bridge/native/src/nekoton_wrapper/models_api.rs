#![allow(unused_variables, dead_code)]

use flutter_rust_bridge::frb;
pub use nekoton::crypto::MnemonicType;

/// -------------------------
/// Types to generate in dart
/// -------------------------

/// Mirror struct of MnemonicType
#[frb(mirror(MnemonicType))]
pub enum _MnemonicType {
    Legacy,
    Labs(u16),
}

/// Wrapper struct above GeneratedKey with suitable type for generation
pub struct GeneratedKeyG {
    pub words: Vec<String>,
    pub account_type: MnemonicType,
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
