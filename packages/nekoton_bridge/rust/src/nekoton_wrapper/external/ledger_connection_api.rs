#![allow(unused_variables, dead_code)]

use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::external::connections::{
    LedgerConnectionBox, LedgerConnectionBoxTrait,
};
use async_trait::async_trait;
pub use ed25519_dalek::{PUBLIC_KEY_LENGTH, SIGNATURE_LENGTH};
use flutter_rust_bridge::frb;
pub use flutter_rust_bridge::DartFnFuture;
pub use nekoton::external;
use std::convert::TryInto;
use std::sync::Arc;

/// This is a wrapper structure above LedgerConnectionBoxTrait to provide instance in dart side.
pub struct LedgerConnectionDartWrapper {
    pub inner_connection: RustOpaque<Arc<dyn LedgerConnectionBoxTrait>>,
}

impl LedgerConnectionDartWrapper {
    #[frb(sync)]
    pub fn new(
        on_get_public_key: impl Fn(u16) -> DartFnFuture<Vec<u8>> + Send + Sync + 'static,
        on_sign: impl Fn(u16, Option<i32>, Vec<u8>) -> DartFnFuture<Vec<u8>> + Send + Sync + 'static,
        on_sign_transaction: impl Fn(u16, u16, Option<i32>, Vec<u8>, String) -> DartFnFuture<Vec<u8>>
            + Send
            + Sync
            + 'static,
    ) -> LedgerConnectionDartWrapper {
        Self {
            inner_connection: RustOpaque::new(LedgerConnectionBox::create(Arc::new(
                LedgerConnectionImpl {
                    on_get_public_key: Arc::new(on_get_public_key),
                    on_sign: Arc::new(on_sign),
                    on_sign_transaction: Arc::new(on_sign_transaction),
                },
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
    pub on_get_public_key: Arc<dyn Fn(u16) -> DartFnFuture<Vec<u8>> + Send + Sync>,
    pub on_sign: Arc<dyn Fn(u16, Option<i32>, Vec<u8>) -> DartFnFuture<Vec<u8>> + Send + Sync>,
    pub on_sign_transaction:
        Arc<dyn Fn(u16, u16, Option<i32>, Vec<u8>, String) -> DartFnFuture<Vec<u8>> + Send + Sync>,
}

#[async_trait]
impl external::LedgerConnection for LedgerConnectionImpl {
    async fn get_public_key(&self, account_id: u16) -> anyhow::Result<[u8; PUBLIC_KEY_LENGTH]> {
        let data = (self.on_get_public_key)(account_id).await;
        if data.len() != PUBLIC_KEY_LENGTH {
            anyhow::bail!(
                "Invalid public key length: expected {}, got {}",
                PUBLIC_KEY_LENGTH,
                data.len()
            );
        }
        Ok(data.as_slice().try_into().unwrap())
    }

    async fn sign(
        &self,
        account: u16,
        signature_id: Option<i32>,
        message: &[u8],
    ) -> anyhow::Result<[u8; SIGNATURE_LENGTH]> {
        let data = (self.on_sign)(account, signature_id, message.to_vec()).await;
        if data.len() != SIGNATURE_LENGTH {
            anyhow::bail!(
                "Invalid signature length: expected {}, got {}",
                SIGNATURE_LENGTH,
                data.len()
            );
        }
        Ok(data.as_slice().try_into().unwrap())
    }

    async fn sign_transaction(
        &self,
        account: u16,
        wallet: u16,
        signature_id: Option<i32>,
        message: &[u8],
        context: &external::LedgerSignatureContext,
    ) -> anyhow::Result<[u8; SIGNATURE_LENGTH]> {
        let ctx_json = serde_json::to_string(context)?;
        let data =
            (self.on_sign_transaction)(account, wallet, signature_id, message.to_vec(), ctx_json)
                .await;
        if data.len() != SIGNATURE_LENGTH {
            anyhow::bail!(
                "Invalid signature length: expected {}, got {}",
                SIGNATURE_LENGTH,
                data.len()
            );
        }
        Ok(data.as_slice().try_into().unwrap())
    }
}
