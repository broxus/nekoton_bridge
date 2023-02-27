use nekoton::crypto::MnemonicType;
use crate::nekoton::models_api::MnemonicTypeG;

pub fn mnemonic_type_from_dart(mnemonic: MnemonicTypeG) -> MnemonicType {
    match mnemonic {
        MnemonicTypeG::Legacy => MnemonicType::Legacy,
        MnemonicTypeG::Labs(v) => MnemonicType::Labs(v)
    }
}

pub fn mnemonic_type_to_dart(mnemonic: MnemonicType) -> MnemonicTypeG {
    match mnemonic {
        MnemonicType::Legacy => MnemonicTypeG::Legacy,
        MnemonicType::Labs(v) => MnemonicTypeG::Labs(v)
    }
}