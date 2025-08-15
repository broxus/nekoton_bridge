#![allow(unused_variables, dead_code)]

use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::external::connections::{
    LedgerConnectionBox, LedgerConnectionBoxTrait,
};
use crate::utils::caller;
use async_trait::async_trait;
pub use ed25519_dalek::{PUBLIC_KEY_LENGTH, SIGNATURE_LENGTH};
use flutter_rust_bridge::frb;
pub use nekoton::external;
use std::convert::TryInto;
use std::sync::Arc;

/// This is a wrapper structure above LedgerConnectionBoxTrait to provide instance in dart side.
pub struct LedgerConnectionDartWrapper {
    pub inner_connection: RustOpaque<Arc<dyn LedgerConnectionBoxTrait>>,
}

impl LedgerConnectionDartWrapper {
    #[frb(sync)]
    pub fn new(instance_hash: String) -> LedgerConnectionDartWrapper {
        Self {
            inner_connection: RustOpaque::new(LedgerConnectionBox::create(Arc::new(
                LedgerConnectionImpl { instance_hash },
            ))),
        }
    }

    /// Method to provide real LedgerConnection to KeyStore level, used only in rust
    pub(crate) fn get_connection(&self) -> Arc<dyn LedgerConnectionBoxTrait> {
        (*self.inner_connection).clone()
    }
}

/// Implementation of nekoton's LedgerConnection
pub struct LedgerConnectionImpl {
    pub instance_hash: String,
}

impl LedgerConnectionImpl {
    #[frb(sync)]
    pub fn new(instance_hash: String) -> LedgerConnectionImpl {
        Self { instance_hash }
    }
}

#[async_trait]
impl external::LedgerConnection for LedgerConnectionImpl {
    async fn get_public_key(&self, account_id: u16) -> anyhow::Result<[u8; PUBLIC_KEY_LENGTH]> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("getPublicKey"),
            args: vec![caller::DynamicValue::U16(account_id)],
            named_args: vec![],
        };
        let res = caller::call(stub, true).as_vec_u8();
        match res {
            Ok(v) => Ok(v.as_slice().try_into().unwrap()),
            Err(e) => Err(e),
        }
    }

    async fn sign(
        &self,
        account: u16,
        signature_id: Option<i32>,
        message: &[u8],
    ) -> anyhow::Result<[u8; SIGNATURE_LENGTH]> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("sign"),
            args: vec![
                caller::DynamicValue::U16(account),
                match signature_id {
                    Some(id) => caller::DynamicValue::I32(id),
                    None => caller::DynamicValue::None,
                },
                caller::DynamicValue::VecU8(message.to_vec()),
            ],
            named_args: vec![],
        };
        let res = caller::call(stub, true).as_vec_u8();
        match res {
            Ok(v) => Ok(v.as_slice().try_into().unwrap()),
            Err(e) => Err(e),
        }
    }

    async fn sign_transaction(
        &self,
        account: u16,
        wallet: u16,
        signature_id: Option<i32>,
        message: &[u8],
        context: &external::LedgerSignatureContext,
    ) -> anyhow::Result<[u8; SIGNATURE_LENGTH]> {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("signTransaction"),
            args: vec![
                caller::DynamicValue::U16(account),
                caller::DynamicValue::U16(wallet),
                match signature_id {
                    Some(id) => caller::DynamicValue::I32(id),
                    None => caller::DynamicValue::None,
                },
                caller::DynamicValue::VecU8(message.to_vec()),
                caller::DynamicValue::String(serde_json::to_string(context).unwrap()),
            ],
            named_args: vec![],
        };
        let res = caller::call(stub, true).as_vec_u8();
        match res {
            Ok(v) => Ok(v.as_slice().try_into().unwrap()),
            Err(e) => Err(e),
        }
    }
}
