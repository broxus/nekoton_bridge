use nekoton::{
    core::models::TransactionsBatchInfo,
    transport::models::{ExistingContract, RawContractState},
};
use nekoton_abi::{GenTimings, LastTransactionId, TransactionId};
use nekoton_utils::{serde_hex_array, serde_optional_address, serde_ton_block, serde_vec_address};
use serde::{Deserialize, Serialize};
use ton_block::{ConfigParams, MsgAddressInt};
use ton_types::UInt256;

#[derive(Serialize, Deserialize)]
pub struct RawContractStateHelper(#[serde(with = "RawContractStateDef")] pub RawContractState);

#[allow(clippy::large_enum_variant)]
#[derive(Serialize, Deserialize)]
#[serde(
    remote = "RawContractState",
    rename_all = "camelCase",
    tag = "type",
    content = "data"
)]
pub enum RawContractStateDef {
    NotExists { timings: GenTimings },
    Exists(ExistingContract),
}

#[derive(Serialize)]
#[serde(rename_all = "camelCase")]
pub struct FullContractState {
    pub balance: String,
    pub gen_timings: GenTimings,
    pub last_transaction_id: Option<LastTransactionId>,
    pub is_deployed: bool,
    pub code_hash: Option<String>,
    pub boc: String,
}

#[derive(Serialize)]
pub struct TransactionsList {
    // item=Transaction, to get it use `convert_transaction_to_json`
    pub transactions: Vec<serde_json::Value>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub continuation: Option<TransactionId>,
    pub info: Option<TransactionsBatchInfo>,
}

#[derive(Serialize)]
pub struct AccountsList {
    #[serde(with = "serde_vec_address")]
    pub accounts: Vec<MsgAddressInt>,
    #[serde(
        with = "serde_optional_address",
        skip_serializing_if = "Option::is_none"
    )]
    pub continuation: Option<MsgAddressInt>,
}

#[derive(Serialize)]
pub struct RawTransactionDef {
    #[serde(with = "serde_hex_array")]
    pub hash: UInt256,

    // data=Transaction, to get it use `convert_transaction_to_json`
    pub data: serde_json::Value,
}

#[derive(Serialize)]
#[serde(rename_all = "camelCase")]
pub struct BlockchainConfigDef {
    pub capabilities: u64,
    pub global_version: u32,
    pub global_id: i32,
    #[serde(with = "serde_ton_block")]
    pub config: ConfigParams,
}
