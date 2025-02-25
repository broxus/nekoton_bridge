use nekoton::core::{
    models::ContractState,
    ton_wallet::{ExistingWalletInfo, MultisigType, WalletType},
};
use nekoton_utils::{serde_address, serde_public_key};
use serde::{Deserialize, Serialize};
use ton_block::MsgAddressInt;

#[derive(Serialize, Deserialize)]
pub struct WalletTypeHelper(#[serde(with = "WalletTypeDef")] pub WalletType);

#[derive(Serialize, Deserialize)]
#[serde(
    remote = "WalletType",
    rename_all = "camelCase",
    tag = "type",
    content = "data"
)]
pub enum WalletTypeDef {
    Multisig(MultisigType),
    WalletV3,
    HighloadWalletV2,
    EverWallet,
    WalletV4R1,
    WalletV4R2,
    WalletV5R1,
}

#[derive(Serialize, Deserialize)]
pub struct ExistingWalletInfoHelper(
    #[serde(with = "ExistingWalletInfoDef")] pub ExistingWalletInfo,
);

#[derive(Serialize, Deserialize)]
#[serde(remote = "ExistingWalletInfo", rename_all = "camelCase")]
pub struct ExistingWalletInfoDef {
    #[serde(with = "serde_address")]
    pub address: MsgAddressInt,
    #[serde(with = "serde_public_key")]
    pub public_key: ed25519_dalek::PublicKey,
    #[serde(with = "WalletTypeDef")]
    pub wallet_type: WalletType,
    pub contract_state: ContractState,
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct TonWalletTransferParams {
    /// address of account that should receive token
    pub destination: String,
    /// amount of tokens that should be transferred
    pub amount: String,
    /// nekoton's bounce param
    pub bounce: bool,
    /// body of transfer aka comment
    pub body: Option<String>,
    pub state_init: Option<String>,
}
