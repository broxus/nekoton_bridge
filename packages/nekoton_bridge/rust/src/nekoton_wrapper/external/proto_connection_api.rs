#![allow(unused_variables, dead_code)]

use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::external::connections::{ProtoConnectionBox, ProtoConnectionBoxTrait};
use async_trait::async_trait;
use flutter_rust_bridge::frb;
pub use flutter_rust_bridge::DartFnFuture;
use nekoton::external::{ProtoConnection, ProtoRequest};
use std::sync::Arc;

/// This is a wrapper structure above ProtoConnectionBoxTrait to provide instance in dart side.
pub struct ProtoConnectionDartWrapper {
    pub inner_connection: RustOpaque<Arc<dyn ProtoConnectionBoxTrait>>,
}

impl ProtoConnectionDartWrapper {
    #[frb(sync)]
    pub fn new(
        on_post: impl Fn(Vec<u8>) -> DartFnFuture<Vec<u8>> + Send + Sync + 'static,
    ) -> ProtoConnectionDartWrapper {
        Self {
            inner_connection: RustOpaque::new(ProtoConnectionBox::create(Arc::new(
                ProtoConnectionImpl {
                    on_post: Arc::new(on_post),
                },
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
    pub on_post: Arc<dyn Fn(Vec<u8>) -> DartFnFuture<Vec<u8>> + Send + Sync>,
}

#[async_trait]
impl ProtoConnection for ProtoConnectionImpl {
    async fn post(&self, req: ProtoRequest) -> anyhow::Result<Vec<u8>> {
        let fut = (self.on_post)(req.data);
        Ok(fut.await)
    }
}
