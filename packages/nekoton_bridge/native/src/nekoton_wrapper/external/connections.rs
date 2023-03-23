#![allow(unused_variables, dead_code)]

pub use nekoton::external::GqlConnection;
use nekoton::external::{JrpcConnection, LedgerConnection};
use std::panic::{RefUnwindSafe, UnwindSafe};
use std::sync::Arc;

/// This wrapper need to avoid frb errors related to UnwindSafe + RefUnwindSafe
pub trait GqlConnectionBoxTrait: Send + Sync + UnwindSafe + RefUnwindSafe {
    fn get_connection(&self) -> Arc<dyn GqlConnection>;
}

pub struct GqlConnectionBox {
    inner_connection: Arc<dyn GqlConnection>,
}

impl UnwindSafe for GqlConnectionBox {}
impl RefUnwindSafe for GqlConnectionBox {}

impl GqlConnectionBox {
    pub fn create(inner_connection: Arc<dyn GqlConnection>) -> Arc<dyn GqlConnectionBoxTrait> {
        Arc::new(Self { inner_connection })
    }
}

impl GqlConnectionBoxTrait for GqlConnectionBox {
    fn get_connection(&self) -> Arc<dyn GqlConnection> {
        self.inner_connection.clone()
    }
}

/// This wrapper need to avoid frb errors related to UnwindSafe + RefUnwindSafe
pub trait JrpcConnectionBoxTrait: Send + Sync + UnwindSafe + RefUnwindSafe {
    fn get_connection(&self) -> Arc<dyn JrpcConnection>;
}

pub struct JrpcConnectionBox {
    inner_connection: Arc<dyn JrpcConnection>,
}

impl UnwindSafe for JrpcConnectionBox {}
impl RefUnwindSafe for JrpcConnectionBox {}

impl JrpcConnectionBox {
    pub fn create(inner_connection: Arc<dyn JrpcConnection>) -> Arc<dyn JrpcConnectionBoxTrait> {
        Arc::new(Self { inner_connection })
    }
}

impl JrpcConnectionBoxTrait for JrpcConnectionBox {
    fn get_connection(&self) -> Arc<dyn JrpcConnection> {
        self.inner_connection.clone()
    }
}

/// This wrapper need to avoid frb errors related to UnwindSafe + RefUnwindSafe
pub trait LedgerConnectionBoxTrait: Send + Sync + UnwindSafe + RefUnwindSafe {
    fn get_connection(&self) -> Arc<dyn LedgerConnection>;
}

pub struct LedgerConnectionBox {
    inner_connection: Arc<dyn LedgerConnection>,
}

impl UnwindSafe for LedgerConnectionBox {}
impl RefUnwindSafe for LedgerConnectionBox {}

impl LedgerConnectionBox {
    pub fn create(
        inner_connection: Arc<dyn LedgerConnection>,
    ) -> Arc<dyn LedgerConnectionBoxTrait> {
        Arc::new(Self { inner_connection })
    }
}

impl LedgerConnectionBoxTrait for LedgerConnectionBox {
    fn get_connection(&self) -> Arc<dyn LedgerConnection> {
        self.inner_connection.clone()
    }
}
