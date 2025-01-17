#![allow(unused_variables, dead_code)]

use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::external::storage::{StorageBox, StorageBoxTrait};
use crate::utils::caller;
use crate::utils::caller::{DynamicNamedValue, DynamicValue};
use async_trait::async_trait;
use nekoton::external::Storage;
use std::sync::Arc;

/// This is a wrapper structure above StorageBoxTrait to provide instance in dart side.
pub struct StorageDartWrapper {
    pub inner_storage: RustOpaque<Arc<dyn StorageBoxTrait>>,
}

impl StorageDartWrapper {
    pub fn new(instance_hash: String) -> StorageDartWrapper {
        Self {
            inner_storage: RustOpaque::new(StorageBox::create(Arc::new(StorageImpl {
                instance_hash,
            }))),
        }
    }

    /// Method to provide real Storage to keystore level, used only in rust
    pub(crate) fn get_storage(&self) -> Arc<dyn StorageBoxTrait> {
        (*self.inner_storage).clone()
    }
}

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
            args: vec![DynamicValue::String(key.to_string())],
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
                    value: Some(DynamicValue::String(key.to_string())),
                },
                DynamicNamedValue {
                    name: "value".to_string(),
                    value: Some(DynamicValue::String(value.to_string())),
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
                    value: Some(DynamicValue::String(key.to_string())),
                },
                DynamicNamedValue {
                    name: "value".to_string(),
                    value: Some(DynamicValue::String(value.to_string())),
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
                value: Some(DynamicValue::String(key.to_string())),
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
                value: Some(DynamicValue::String(key.to_string())),
            }],
        };
        caller::call(stub, false);
    }
}
