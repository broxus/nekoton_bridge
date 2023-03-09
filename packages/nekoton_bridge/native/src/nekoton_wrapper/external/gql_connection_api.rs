#![allow(unused_variables, dead_code)]

use crate::utils::caller;
use async_trait::async_trait;
use nekoton::external::{GqlConnection, GqlRequest};

/// Implementation of nekoton's GqlConnection
pub struct GqlConnectionImpl {
    pub is_local: bool,
    pub instance_hash: String,
}

impl GqlConnectionImpl {
    pub fn new(is_local: bool, instance_hash: String) -> GqlConnectionImpl {
        Self {
            is_local,
            instance_hash,
        }
    }
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
        let res = caller::call(stub, true).as_string();
        res
    }
}
