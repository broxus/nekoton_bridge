#![allow(unused_variables, dead_code)]

use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::external::connections::{JrpcConnectionBox, JrpcConnectionBoxTrait};
use async_trait::async_trait;
use flutter_rust_bridge::frb;
pub use flutter_rust_bridge::DartFnFuture;
use nekoton::external::{JrpcConnection, JrpcRequest};
use std::sync::Arc;

/// This is a wrapper structure above JrpcConnectionBoxTrait to provide instance in dart side.
pub struct JrpcConnectionDartWrapper {
    pub inner_connection: RustOpaque<Arc<dyn JrpcConnectionBoxTrait>>,
}

impl JrpcConnectionDartWrapper {
    #[frb(sync)]
    pub fn new(
        on_post: impl Fn(String) -> DartFnFuture<String> + Send + Sync + 'static,
    ) -> JrpcConnectionDartWrapper {
        Self {
            inner_connection: RustOpaque::new(JrpcConnectionBox::create(Arc::new(
                JrpcConnectionImpl {
                    on_post: Arc::new(on_post),
                },
            ))),
        }
    }

    /// Method to provide real GqlConnection to transport level, used only in rust
    pub(crate) fn get_connection(&self) -> Arc<dyn JrpcConnectionBoxTrait> {
        (*self.inner_connection).clone()
    }
}

/// Implementation of nekoton's JrpcConnection
pub struct JrpcConnectionImpl {
    pub on_post: Arc<dyn Fn(String) -> DartFnFuture<String> + Send + Sync>,
}

#[async_trait]
impl JrpcConnection for JrpcConnectionImpl {
    async fn post(&self, req: JrpcRequest) -> anyhow::Result<String> {
        let fut = (self.on_post)(req.data);
        Ok(fut.await)
    }
}
