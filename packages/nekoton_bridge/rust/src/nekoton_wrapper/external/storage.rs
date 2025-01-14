use nekoton::external::Storage;
use std::panic::{RefUnwindSafe, UnwindSafe};
use std::sync::Arc;

/// This wrapper need to avoid frb errors related to UnwindSafe + RefUnwindSafe
pub trait StorageBoxTrait: Send + Sync + UnwindSafe + RefUnwindSafe {
    fn get_storage(&self) -> Arc<dyn Storage>;
}

pub struct StorageBox {
    inner_storage: Arc<dyn Storage>,
}

impl UnwindSafe for StorageBox {}
impl RefUnwindSafe for StorageBox {}

impl StorageBox {
    pub fn create(inner_storage: Arc<dyn Storage>) -> Arc<dyn StorageBoxTrait> {
        Arc::new(Self { inner_storage })
    }
}

impl StorageBoxTrait for StorageBox {
    fn get_storage(&self) -> Arc<dyn Storage> {
        self.inner_storage.clone()
    }
}
