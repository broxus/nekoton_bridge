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
