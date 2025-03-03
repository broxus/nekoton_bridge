#![allow(unused_variables, dead_code)]

use flutter_rust_bridge::frb;
pub use nekoton::crypto::{Bip39Entropy, Bip39MnemonicData, Bip39Path, MnemonicType};

/// -------------------------
/// Types to generate in dart
/// -------------------------

/// Mirror struct of MnemonicType
#[frb(mirror(MnemonicType))]
pub enum _MnemonicType {
    Legacy,
    Bip39(Bip39MnemonicData),
}

/// Mirror struct of Bip39MnemonicData
#[frb(mirror(Bip39MnemonicData))]
pub struct _Bip39MnemonicData {
    pub account_id: u16,
    pub path: Bip39Path,
    pub entropy: Bip39Entropy,
}

#[frb(mirror(Bip39Path))]
pub enum _Bip39Path {
    Ever,
    Ton,
}

#[frb(mirror(Bip39Entropy))]
pub enum _Bip39Entropy {
    Bits128,
    Bits256,
}

/// Wrapper struct above GeneratedKey with suitable type for generation
pub struct GeneratedKeyG {
    pub words: Vec<String>,
    pub account_type: MnemonicType,
}
