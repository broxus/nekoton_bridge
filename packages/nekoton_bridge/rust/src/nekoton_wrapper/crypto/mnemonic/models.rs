#![allow(unused_variables, dead_code)]
use nekoton::crypto::{Bip39MnemonicData, MnemonicType};
use nekoton_utils::{serde_public_key, serde_secret_key};
use serde::{Deserialize, Serialize};

/// Helper for parsing MnemonicType from json
#[derive(Serialize, Deserialize)]
#[serde(
    remote = "MnemonicType",
    rename_all = "camelCase",
    tag = "type",
    content = "data"
)]
pub enum MnemonicTypeDef {
    Legacy,
    Bip39(Bip39MnemonicData),
}

#[derive(Serialize)]
pub struct KeypairHelper(#[serde(with = "KeypairDef")] pub ed25519_dalek::Keypair);

#[derive(Serialize)]
#[serde(remote = "ed25519_dalek::Keypair")]
pub struct KeypairDef {
    #[serde(with = "serde_public_key")]
    pub public: ed25519_dalek::PublicKey,
    #[serde(with = "serde_secret_key")]
    pub secret: ed25519_dalek::SecretKey,
}
