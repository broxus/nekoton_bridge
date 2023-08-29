#![allow(unused_variables, dead_code)]

use crate::nekoton_wrapper::external::connections::{ProtoConnectionBox, ProtoConnectionBoxTrait};
use crate::utils::caller;
use async_trait::async_trait;
use flutter_rust_bridge::RustOpaque;
use nekoton::external::{ProtoConnection, ProtoRequest};
use std::sync::Arc;

/// This is a wrapper structure above ProtoConnectionBoxTrait to provide instance in dart side.
pub struct ProtoConnectionDartWrapper {
    pub inner_connection: RustOpaque<Arc<dyn ProtoConnectionBoxTrait>>,
}

impl ProtoConnectionDartWrapper {
    pub fn new(instance_hash: String) -> ProtoConnectionDartWrapper {
        Self {
            inner_connection: RustOpaque::new(ProtoConnectionBox::create(Arc::new(
                ProtoConnectionImpl { instance_hash },
            ))),
        }
    }

    /// Method to provide real ProtoConnection to transport level, used only in rust
    pub(crate) fn get_connection(&self) -> Arc<dyn ProtoConnectionBoxTrait> {
        (*self.inner_connection).clone()
    }
}

/// Implementation of nekoton's ProtoConnection
pub struct ProtoConnectionImpl {
    pub instance_hash: String,
}

#[async_trait]
impl ProtoConnection for ProtoConnectionImpl {
    async fn post(&self, req: ProtoRequest) -> anyhow::Result<Vec<u8>> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("post"),
            args: vec![caller::DynamicValue::VecU8(req.data)],
            named_args: vec![],
        };
        caller::call(stub, true).as_vec_u8()
    }
}
