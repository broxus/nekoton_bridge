#![allow(unused_variables, dead_code)]

use crate::utils::caller;
use crate::utils::caller::{DynamicNamedValue, DynamicValue};
use async_trait::async_trait;
use nekoton::external::Storage;

/// Implementation of nekoton's Storage
pub struct StorageImpl {
    pub instance_hash: String,
}

impl StorageImpl {
    pub fn new(instance_hash: String) -> StorageImpl {
        Self { instance_hash }
    }
}

#[async_trait]
impl Storage for StorageImpl {
    async fn get(&self, key: &str) -> anyhow::Result<Option<String>> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("get"),
            args: vec![caller::DynamicValue::String(key.to_string())],
            named_args: vec![],
        };
        caller::call(stub, true).as_string_option()
    }

    async fn set(&self, key: &str, value: &str) -> anyhow::Result<()> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("set"),
            args: vec![],
            named_args: vec![
                DynamicNamedValue {
                    name: "key".to_string(),
                    value: Option::Some(DynamicValue::String(key.to_string())),
                },
                DynamicNamedValue {
                    name: "value".to_string(),
                    value: Option::Some(DynamicValue::String(value.to_string())),
                },
            ],
        };
        caller::call(stub, true).as_void()
    }

    fn set_unchecked(&self, key: &str, value: &str) {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("setUnchecked"),
            args: vec![],
            named_args: vec![
                DynamicNamedValue {
                    name: "key".to_string(),
                    value: Option::Some(DynamicValue::String(key.to_string())),
                },
                DynamicNamedValue {
                    name: "value".to_string(),
                    value: Option::Some(DynamicValue::String(value.to_string())),
                },
            ],
        };
        caller::call(stub, false);
    }

    async fn remove(&self, key: &str) -> anyhow::Result<()> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("remove"),
            args: vec![],
            named_args: vec![DynamicNamedValue {
                name: "key".to_string(),
                value: Option::Some(DynamicValue::String(key.to_string())),
            }],
        };
        caller::call(stub, true).as_void()
    }

    fn remove_unchecked(&self, key: &str) {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("removeUnchecked"),
            args: vec![],
            named_args: vec![DynamicNamedValue {
                name: "key".to_string(),
                value: Option::Some(DynamicValue::String(key.to_string())),
            }],
        };
        caller::call(stub, false);
    }
}
