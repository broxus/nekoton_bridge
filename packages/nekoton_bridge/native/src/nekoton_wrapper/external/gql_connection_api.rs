#![allow(unused_variables, dead_code)]

use crate::nekoton_wrapper::external::connections::{GqlConnectionBox, GqlConnectionBoxTrait};
use crate::utils::caller;
use async_trait::async_trait;
use flutter_rust_bridge::RustOpaque;
use nekoton::external::{GqlConnection, GqlRequest};
use std::sync::Arc;

/// This is a wrapper structure above GqlConnectionBoxTrait to provide instance in dart side.
pub struct GqlConnectionDartWrapper {
    pub inner_connection: RustOpaque<Arc<dyn GqlConnectionBoxTrait>>,
}

impl GqlConnectionDartWrapper {
    pub fn new(is_local: bool, instance_hash: String) -> GqlConnectionDartWrapper {
        Self {
            inner_connection: RustOpaque::new(GqlConnectionBox::create(Arc::new(
                GqlConnectionImpl {
                    is_local,
                    instance_hash,
                },
            ))),
        }
    }

    /// Method to provide real GqlConnection to transport level, used only in rust
    pub(crate) fn get_connection(&self) -> Arc<dyn GqlConnectionBoxTrait> {
        (*self.inner_connection).clone()
    }
}

/// Implementation of nekoton's GqlConnection
struct GqlConnectionImpl {
    pub is_local: bool,
    pub instance_hash: String,
}

#[async_trait]
impl GqlConnection for GqlConnectionImpl {
    fn is_local(&self) -> bool {
        self.is_local
    }

    async fn post(&self, req: GqlRequest) -> anyhow::Result<String> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("post"),
            args: vec![caller::DynamicValue::String(req.data)],
            named_args: vec![],
        };
        caller::call(stub, true).as_string()
    }
}
