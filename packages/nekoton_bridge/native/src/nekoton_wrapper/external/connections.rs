#![allow(unused_variables, dead_code)]

pub use nekoton::external::GqlConnection;
use nekoton::external::JrpcConnection;
use std::panic::{RefUnwindSafe, UnwindSafe};
use std::sync::Arc;

/// This is a holy fucking shit.
/// This wrapper need to avoid frb errors related to UnwindSafe + RefUnwindSafe
pub trait GqlConnectionBoxTrait: Send + Sync + UnwindSafe + RefUnwindSafe {
    fn get_connection(self) -> Arc<dyn GqlConnection>;
}

pub struct GqlConnectionBox {
    inner_connection: Arc<dyn GqlConnection>,
}

impl UnwindSafe for GqlConnectionBox {}
impl RefUnwindSafe for GqlConnectionBox {}

impl GqlConnectionBox {
    pub fn create(inner_connection: Arc<dyn GqlConnection>) -> Box<dyn GqlConnectionBoxTrait> {
        Box::new(Self { inner_connection })
    }
}

impl GqlConnectionBoxTrait for GqlConnectionBox {
    fn get_connection(self) -> Arc<dyn GqlConnection> {
        self.inner_connection
    }
}

/// This is a holy fucking shit.
/// This wrapper need to avoid frb errors related to UnwindSafe + RefUnwindSafe
pub trait JrpcConnectionBoxTrait: Send + Sync + UnwindSafe + RefUnwindSafe {
    fn get_connection(self) -> Arc<dyn JrpcConnection>;
}

pub struct JrpcConnectionBox {
    inner_connection: Arc<dyn JrpcConnection>,
}

impl UnwindSafe for JrpcConnectionBox {}
impl RefUnwindSafe for JrpcConnectionBox {}

impl JrpcConnectionBox {
    pub fn create(inner_connection: Arc<dyn JrpcConnection>) -> Box<dyn JrpcConnectionBoxTrait> {
        Box::new(Self { inner_connection })
    }
}

impl JrpcConnectionBoxTrait for JrpcConnectionBox {
    fn get_connection(self) -> Arc<dyn JrpcConnection> {
        self.inner_connection
    }
}
