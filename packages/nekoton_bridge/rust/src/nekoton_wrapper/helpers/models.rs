#![allow(unused_variables, dead_code)]

use serde::{Deserialize, Serialize};

/// ------------------------------------
/// Json-Converted models
/// ------------------------------------

#[derive(Serialize, Deserialize)]
pub struct AbiParam {
    pub name: String,
    #[serde(rename = "type")]
    pub param_type: String,
    pub components: Option<Vec<AbiParam>>,
}

#[derive(Serialize)]
pub struct ExecutionOutput {
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub output: Option<serde_json::Value>,
    pub code: i32,
}

#[derive(Serialize)]
pub struct DecodedInput {
    pub method: String,
    pub input: serde_json::Value,
}

#[derive(Serialize)]
pub struct DecodedOutput {
    pub method: String,
    pub output: serde_json::Value,
}

#[derive(Serialize)]
pub struct DecodedEvent {
    pub event: String,
    pub data: serde_json::Value,
}

#[derive(Serialize)]
pub struct DecodedTransaction {
    pub method: String,
    pub input: serde_json::Value,
    pub output: serde_json::Value,
}

#[derive(Serialize, Deserialize)]
pub struct StorageFeeInfo {
    #[serde(rename = "storageFee")]
    pub storage_fee: String,
    #[serde(rename = "storageFeeDebt")]
    pub storage_fee_debt: Option<String>,
    #[serde(rename = "accountStatus")]
    pub account_status: String,
    #[serde(rename = "freezeDueLimit")]
    pub freeze_due_limit: String,
    #[serde(rename = "deleteDueLimit")]
    pub delete_due_limit: String,
}
