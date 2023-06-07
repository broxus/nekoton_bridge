use crate::nekoton_wrapper::crypto::mnemonic::models::MnemonicTypeDef;
use nekoton::crypto::{EncryptedKeyCreateInput, EncryptedKeyExportSeedOutput, MnemonicType, Password};
use secstr::SecUtf8;
use serde::{Deserialize, Serialize};

#[derive(Deserialize)]
pub struct EncryptedKeyCreateInputHelper(
    #[serde(with = "EncryptedKeyCreateInputDef")] pub EncryptedKeyCreateInput,
);

#[derive(Deserialize)]
#[serde(remote = "EncryptedKeyCreateInput", rename_all = "camelCase")]
pub struct EncryptedKeyCreateInputDef {
    pub name: Option<String>,
    pub phrase: SecUtf8,
    #[serde(with = "MnemonicTypeDef")]
    pub mnemonic_type: MnemonicType,
    pub password: Password,
}

#[derive(Serialize)]
pub struct EncryptedKeyExportSeedOutputHelper(
    #[serde(with = "EncryptedKeyExportSeedOutputDef")] pub EncryptedKeyExportSeedOutput,
);

#[derive(Serialize)]
#[serde(remote = "EncryptedKeyExportSeedOutput", rename_all = "camelCase")]
pub struct EncryptedKeyExportSeedOutputDef {
    pub phrase: SecUtf8,
    #[serde(with = "MnemonicTypeDef")]
    pub mnemonic_type: MnemonicType,
}
