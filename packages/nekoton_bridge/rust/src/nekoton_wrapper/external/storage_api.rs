#![allow(unused_variables, dead_code)]

use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::external::storage::{StorageBox, StorageBoxTrait};
use async_trait::async_trait;
use flutter_rust_bridge::frb;
pub use flutter_rust_bridge::DartFnFuture;
use nekoton::external::Storage;
use std::sync::Arc;

/// This is a wrapper structure above StorageBoxTrait to provide instance in dart side.
pub struct StorageDartWrapper {
    pub inner_storage: RustOpaque<Arc<dyn StorageBoxTrait>>,
}

impl StorageDartWrapper {
    #[frb(sync)]
    pub fn new(
        on_get: impl Fn(String) -> DartFnFuture<Option<String>> + Send + Sync + 'static,
        on_set: impl Fn(String, String) -> DartFnFuture<()> + Send + Sync + 'static,
        on_set_unchecked: impl Fn(String, String) -> DartFnFuture<()> + Send + Sync + 'static,
        on_remove: impl Fn(String) -> DartFnFuture<()> + Send + Sync + 'static,
        on_remove_unchecked: impl Fn(String) -> DartFnFuture<()> + Send + Sync + 'static,
    ) -> StorageDartWrapper {
        Self {
            inner_storage: RustOpaque::new(StorageBox::create(Arc::new(StorageImpl {
                on_get: Arc::new(on_get),
                on_set: Arc::new(on_set),
                on_set_unchecked: Arc::new(on_set_unchecked),
                on_remove: Arc::new(on_remove),
                on_remove_unchecked: Arc::new(on_remove_unchecked),
            }))),
        }
    }

    /// Method to provide real Storage to keystore level, used only in rust
    pub(crate) fn get_storage(&self) -> Arc<dyn StorageBoxTrait> {
        (*self.inner_storage).clone()
    }
}

/// Implementation of nekoton's Storage
pub struct StorageImpl {
    // Stored Dart callback passed from Flutter side.
    pub on_get: Arc<dyn Fn(String) -> DartFnFuture<Option<String>> + Send + Sync>,
    pub on_set: Arc<dyn Fn(String, String) -> DartFnFuture<()> + Send + Sync>,
    pub on_set_unchecked: Arc<dyn Fn(String, String) -> DartFnFuture<()> + Send + Sync>,
    pub on_remove: Arc<dyn Fn(String) -> DartFnFuture<()> + Send + Sync>,
    pub on_remove_unchecked: Arc<dyn Fn(String) -> DartFnFuture<()> + Send + Sync>,
}

impl StorageImpl {
    pub fn new(
        on_get: Arc<dyn Fn(String) -> DartFnFuture<Option<String>> + Send + Sync>,
        on_set: Arc<dyn Fn(String, String) -> DartFnFuture<()> + Send + Sync>,
        on_set_unchecked: Arc<dyn Fn(String, String) -> DartFnFuture<()> + Send + Sync>,
        on_remove: Arc<dyn Fn(String) -> DartFnFuture<()> + Send + Sync>,
        on_remove_unchecked: Arc<dyn Fn(String) -> DartFnFuture<()> + Send + Sync>,
    ) -> StorageImpl {
        Self {
            on_get,
            on_set,
            on_set_unchecked,
            on_remove,
            on_remove_unchecked,
        }
    }
}

#[async_trait]
impl Storage for StorageImpl {
    async fn get(&self, key: &str) -> anyhow::Result<Option<String>> {
        let fut = (self.on_get)(key.to_string());
        let result = fut.await;
        Ok(result)
    }

    async fn set(&self, key: &str, value: &str) -> anyhow::Result<()> {
        let fut = (self.on_set)(key.to_string(), value.to_string());
        let result = fut.await;
        Ok(result)
    }

    fn set_unchecked(&self, key: &str, value: &str) {
        let fut = (self.on_set_unchecked)(key.to_string(), value.to_string());
        flutter_rust_bridge::spawn(async move {
            fut.await;
        });
    }

    async fn remove(&self, key: &str) -> anyhow::Result<()> {
        let fut = (self.on_remove)(key.to_string());
        let result = fut.await;
        Ok(result)
    }

    fn remove_unchecked(&self, key: &str) {
        let fut = (self.on_remove_unchecked)(key.to_string());
        flutter_rust_bridge::spawn(async move {
            fut.await;
        });
    }
}
