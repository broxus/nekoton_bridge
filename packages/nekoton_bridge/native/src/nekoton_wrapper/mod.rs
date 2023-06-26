pub mod core;
pub mod crypto;
pub mod external;
pub mod helpers;
pub mod models_api;
pub mod transport;

use anyhow::Context;
use anyhow::Result;
use flutter_rust_bridge::handler::Error;
use flutter_rust_bridge::handler::ErrorHandler;
use flutter_rust_bridge::handler::Executor;
use flutter_rust_bridge::rust2dart::Rust2Dart;
use flutter_rust_bridge::rust2dart::TaskCallback;
use flutter_rust_bridge::spawn;
use flutter_rust_bridge::FfiCallMode;
use flutter_rust_bridge::IntoDart;
use flutter_rust_bridge::SyncReturn;
use flutter_rust_bridge::WrapInfo;
use lazy_static::lazy_static;
use nekoton_utils::SimpleClock;
use serde::Serialize;
use std::panic;
use std::panic::UnwindSafe;
use std::str::FromStr;
use std::sync::Arc;
use std::sync::Mutex;
use tokio::runtime::Runtime;
use ton_block::MsgAddressInt;
use ton_types::UInt256;

lazy_static! {
    pub static ref CLOCK: Arc<SimpleClock> = Arc::new(SimpleClock {});
    pub static ref RUNTIME: Mutex<Option<Runtime>> = Mutex::new(None);
}

/// The new executor.
pub struct MyPoolExecutor<EH: ErrorHandler> {
    error_handler: EH,
}

impl<EH: ErrorHandler> MyPoolExecutor<EH> {
    /// Create a new executor
    pub fn new(error_handler: EH) -> Self {
        MyPoolExecutor { error_handler }
    }
}

// Actually it is copied from default ThreadPoolExecutor implementation
impl<EH: ErrorHandler> Executor for MyPoolExecutor<EH> {
    fn execute<TaskFn, TaskRet>(&self, wrap_info: WrapInfo, task: TaskFn)
    where
        TaskFn: FnOnce(TaskCallback) -> Result<TaskRet> + Send + UnwindSafe + 'static,
        TaskRet: IntoDart,
    {
        let eh = self.error_handler;
        let eh2 = self.error_handler;

        let WrapInfo { port, mode, .. } = wrap_info;

        spawn!(|port: Option<MessagePort>| {
            let port2 = port.as_ref().cloned();
            let thread_result = panic::catch_unwind(move || {
                let port2 = port2.expect("(worker) thread");
                #[allow(clippy::clone_on_copy)]
                let rust2dart = Rust2Dart::new(port2.clone());

                let ret = task(TaskCallback::new(rust2dart.clone())).map(IntoDart::into_dart);

                match ret {
                    Ok(result) => {
                        match mode {
                            FfiCallMode::Normal => {
                                rust2dart.success(result);
                            }
                            FfiCallMode::Stream => {
                                // nothing - ignore the return value of a Stream-typed function
                            }
                            FfiCallMode::Sync => {
                                panic!("FfiCallMode::Sync should not call execute, please call execute_sync instead")
                            }
                        }
                    }
                    Err(error) => {
                        eh2.handle_error(port2, Error::ResultError(error));
                    }
                };
            });

            if let Err(error) = thread_result {
                eh.handle_error(port.expect("(worker) eh"), Error::Panic(error));
            }
        });
    }

    fn execute_sync<SyncTaskFn, TaskRet>(
        &self,
        _wrap_info: WrapInfo,
        sync_task: SyncTaskFn,
    ) -> Result<SyncReturn<TaskRet>>
    where
        SyncTaskFn: FnOnce() -> Result<SyncReturn<TaskRet>> + UnwindSafe,
        TaskRet: IntoDart,
    {
        sync_task()
    }
}

pub fn init_tokio_runtime() {
    let rt = tokio::runtime::Builder::new_multi_thread()
        .enable_all()
        .build()
        .expect("Can't create tokio runtime");
    RUNTIME.lock().expect("Mutex poisoned").replace(rt);
}

#[macro_export]
macro_rules! clock {
    () => {
        $crate::nekoton_wrapper::CLOCK.clone()
    };
}

#[macro_export]
/// This macro help to run async code in sync way on the global runtime.
macro_rules! async_run {
    ($exp:expr) => {{
        $crate::nekoton_wrapper::RUNTIME
            .lock()
            .expect("Mutex poisoned")
            .as_ref()
            .expect("Runtime not initialized")
            .block_on(async { $exp })
    }};
}

/// This help interface to convert value to json string or return error.
/// Typical usage:
/// ```
/// serde_json::to_value(my_object_to_json).json_or_error()
/// ```
pub trait JsonOrError {
    fn json_or_error(self) -> anyhow::Result<String>;
}

impl<T, E> JsonOrError for anyhow::Result<T, E>
where
    T: Serialize,
    E: ToString,
{
    fn json_or_error(self) -> anyhow::Result<String> {
        match self {
            Ok(ok) => serde_json::to_string(&ok).handle_error(),
            Err(err) => Err(anyhow::Error::msg(err.to_string())),
        }
    }
}

/// Returns expected type or Error
pub trait HandleError {
    type Output;

    fn handle_error(self) -> anyhow::Result<Self::Output>;
}

/// Returns expected type or Error
impl<T, E> HandleError for anyhow::Result<T, E>
where
    E: ToString,
{
    type Output = T;

    fn handle_error(self) -> anyhow::Result<Self::Output> {
        self.map_err(|e| anyhow::Error::msg(e.to_string()))
    }
}

/// Parse hash string to UInt256
pub fn parse_hash(hash: String) -> anyhow::Result<UInt256> {
    UInt256::from_str(hash.as_str()).handle_error()
}

/// Parse public key from string and return its instance or throw error
pub fn parse_public_key(public_key: String) -> anyhow::Result<ed25519_dalek::PublicKey> {
    Ok(ed25519_dalek::PublicKey::from_bytes(
        &hex::decode(public_key).context("Bad hex data")?,
    )?)
}

/// Parse address from string and return its instance or throw error
pub fn parse_address(address: String) -> anyhow::Result<MsgAddressInt> {
    MsgAddressInt::from_str(address.as_str()).handle_error()
}

pub fn str_list_to_string_vec(slice: &[&str]) -> Vec<String> {
    slice.iter().map(|x| x.to_string()).collect()
}

pub fn str_vec_to_string_vec(slice: Vec<&'static str>) -> Vec<String> {
    slice.into_iter().map(|x| x.to_string()).collect()
}

pub trait ToNekoton<T> {
    fn to_nekoton(self) -> T;
}

pub trait ToSerializable<T> {
    fn to_serializable(self) -> T;
}
