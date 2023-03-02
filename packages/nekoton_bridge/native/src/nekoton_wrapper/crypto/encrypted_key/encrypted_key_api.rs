#![allow(unused_variables, dead_code)]

pub use nekoton::crypto::MnemonicType;

pub const ENCRYPTED_KEY_SIGNER_NAME: &str = "EncryptedKeySigner";

/// Test func
pub fn resend_mnemonic(mnemonic: MnemonicType) -> MnemonicType {
    mnemonic
}
