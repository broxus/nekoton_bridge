#![allow(unused_variables, dead_code)]

use crate::utils::caller;
use async_trait::async_trait;
use nekoton::external::{JrpcConnection, JrpcRequest};

/// Implementation of nekoton's JrpcConnection
pub struct JrpcConnectionImpl {
    pub instance_hash: String,
}

impl JrpcConnectionImpl {
    pub fn new(instance_hash: String) -> JrpcConnectionImpl {
        Self { instance_hash }
    }
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
