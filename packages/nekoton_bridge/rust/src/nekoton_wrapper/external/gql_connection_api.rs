#![allow(unused_variables, dead_code)]

use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::external::connections::{GqlConnectionBox, GqlConnectionBoxTrait};
use async_trait::async_trait;
use flutter_rust_bridge::frb;
pub use flutter_rust_bridge::DartFnFuture;
use nekoton::external::{GqlConnection, GqlRequest};
use std::sync::Arc;

/// This is a wrapper structure above GqlConnectionBoxTrait to provide instance in dart side.
pub struct GqlConnectionDartWrapper {
    pub inner_connection: RustOpaque<Arc<dyn GqlConnectionBoxTrait>>,
}

impl GqlConnectionDartWrapper {
    #[frb(sync)]
    pub fn new(
        is_local: bool,
        on_post: impl Fn(String) -> DartFnFuture<String> + Send + Sync + 'static,
    ) -> GqlConnectionDartWrapper {
        Self {
            inner_connection: RustOpaque::new(GqlConnectionBox::create(Arc::new(
                GqlConnectionImpl {
                    is_local,
                    on_post: Arc::new(on_post),
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
pub struct GqlConnectionImpl {
    pub is_local: bool,
    pub on_post: Arc<dyn Fn(String) -> DartFnFuture<String> + Send + Sync>,
}

#[async_trait]
impl GqlConnection for GqlConnectionImpl {
    fn is_local(&self) -> bool {
        self.is_local
    }

    async fn post(&self, req: GqlRequest) -> anyhow::Result<String> {
        let fut = (self.on_post)(req.data);
        Ok(fut.await)
    }
}
