use flutter_rust_bridge::frb;

/// -------------------------
/// Types to generate in dart
/// -------------------------

/// Wrapper struct above MnemonicType with ability with correct generating
pub enum MnemonicTypeG {
    Legacy,
    Labs(u16),
}

/// Wrapper struct above GeneratedKey with suitable type for generation
pub struct GeneratedKeyG {
    pub words: Vec<String>,
    pub account_type: MnemonicTypeG,
}
