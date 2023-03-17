#![allow(unused_variables, dead_code)]

use crate::nekoton_wrapper::external::connections::{JrpcConnectionBox, JrpcConnectionBoxTrait};
use crate::utils::caller;
use anyhow::anyhow;
use async_trait::async_trait;
use flutter_rust_bridge::RustOpaque;
use nekoton::external::{JrpcConnection, JrpcRequest};
use std::sync::Arc;

/// This is a wrapper structure above JrpcConnectionBoxTrait to provide instance in dart side.
pub struct JrpcConnectionDartWrapper {
    pub inner_connection: RustOpaque<Arc<dyn JrpcConnectionBoxTrait>>,
}

impl JrpcConnectionDartWrapper {
    pub fn new(instance_hash: String) -> JrpcConnectionDartWrapper {
        Self {
            inner_connection: RustOpaque::new(JrpcConnectionBox::create(Arc::new(
                JrpcConnectionImpl { instance_hash },
            ))),
        }
    }

    /// Method to provide real GqlConnection to transport level, used only in rust
    pub(crate) fn get_connection(&self) -> Arc<dyn JrpcConnectionBoxTrait> {
        self.inner_connection
            .clone()
            .try_unwrap()
            .map_err(|e| anyhow!("get connection error"))
            .unwrap()
    }
}

/// Implementation of nekoton's JrpcConnection
pub struct JrpcConnectionImpl {
    pub instance_hash: String,
}

#[async_trait]
impl JrpcConnection for JrpcConnectionImpl {
    async fn post(&self, req: JrpcRequest) -> anyhow::Result<String> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("post"),
            args: vec![caller::DynamicValue::String(req.data)],
            named_args: vec![],
        };
        caller::call(stub, true).as_string()
    }
}
