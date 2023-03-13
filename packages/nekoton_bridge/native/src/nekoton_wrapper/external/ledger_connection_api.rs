#![allow(unused_variables, dead_code)]

use crate::utils::caller;
use async_trait::async_trait;
pub use ed25519_dalek::{PUBLIC_KEY_LENGTH, SIGNATURE_LENGTH};
pub use nekoton::external;
use std::convert::TryInto;

/// Implementation of nekoton's LedgerConnection
pub struct LedgerConnectionImpl {
    pub instance_hash: String,
}

impl LedgerConnectionImpl {
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
        let res = caller::call(stub, true).as_string();
        match res {
            Ok(v) => anyhow::Result::Ok(hex::decode(v).unwrap().as_slice().try_into().unwrap()),
            Err(e) => anyhow::Result::Err(e),
        }
    }

    async fn sign(
        &self,
        account: u16,
        signature_id: Option<i32>,
        message: &[u8],
    ) -> anyhow::Result<[u8; SIGNATURE_LENGTH]> {
        todo!()
    }

    async fn sign_transaction(
        &self,
        account: u16,
        wallet: u16,
        signature_id: Option<i32>,
        message: &[u8],
        context: &external::LedgerSignatureContext,
    ) -> anyhow::Result<[u8; SIGNATURE_LENGTH]> {
        todo!()
    }
}
