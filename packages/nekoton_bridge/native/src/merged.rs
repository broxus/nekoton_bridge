use crate::{
    nekoton_wrapper::{
        crypto::mnemonic::models::KeypairHelper, str_list_to_string_vec, str_vec_to_string_vec,
        HandleError, MatchResult,
    },
    utils::{
        caller::{call, set_stream_sink, DartCallStub, DynamicNamedValue, DynamicValue},
        logger::{LogEntry, LogLevel},
    },
};
use flutter_rust_bridge::*;
use log::*;
pub use nekoton::crypto::{derive_from_phrase, dict, generate_key, MnemonicType};

///----------------------------
/// CONTENT OF src/nekoton_wrapper/crypto/ledger_key/ledger_api.rs
///----------------------------

pub const LEDGER_KEY_SIGNER_NAME: &str = "LedgerKeySigner";

///----------------------------
/// CONTENT OF src/nekoton_wrapper/crypto/encrypted_key/encrypted_key_api.rs
///----------------------------

pub const ENCRYPTED_KEY_SIGNER_NAME: &str = "EncryptedKeySigner";

/// Test func
pub fn resend_mnemonic(mnemonic: MnemonicType) -> MnemonicType {
    mnemonic
}
///----------------------------
/// CONTENT OF src/nekoton_wrapper/crypto/mnemonic/mnemonic_api.rs
///----------------------------

/// Generate seed phrase by specified mnemonic type
pub fn nt_generate_key(account_type: MnemonicType) -> SyncReturn<GeneratedKeyG> {
    let key = generate_key(account_type);
    SyncReturn(GeneratedKeyG {
        words: str_vec_to_string_vec(key.words),
        account_type: key.account_type,
    })
}
/// Get hints for input part of word of seed phrase to get possible words
/// input: acco
/// returns [account, accommodate, ...]
pub fn nt_get_hints(input: String) -> SyncReturn<Vec<String>> {
    SyncReturn(str_list_to_string_vec(dict::get_hints(input.as_str())))
}
/// Generate public and secret keys from seed phrase and mnemonic type
/// Returns json {'public': '...', 'secret': '...'}
pub fn nt_derive_from_phrase(phrase: String, mnemonic_type: MnemonicType) -> SyncReturn<String> {
    // Result<Keypair, Error> {
    let keypair = derive_from_phrase(phrase.as_str(), mnemonic_type).handle_error();
    SyncReturn(
        serde_json::to_value(KeypairHelper(keypair.unwrap()))
            .handle_error()
            .match_result(),
    )
}

///----------------------------
/// CONTENT OF src/nekoton_wrapper/crypto/derived_key/derived_key_api.rs
///----------------------------

pub const DERIVED_KEY_SIGNER_NAME: &str = "DerivedKeySigner";

///----------------------------
/// CONTENT OF src/nekoton_wrapper/models_api.rs
///----------------------------

/// -------------------------
/// Types to generate in dart
/// -------------------------
/// Mirror struct of MnemonicType
#[frb(mirror(MnemonicType))]
pub enum _MnemonicType {
    Legacy,
    Labs(u16),
}
/// Wrapper struct above GeneratedKey with suitable type for generation
pub struct GeneratedKeyG {
    pub words: Vec<String>,
    pub account_type: MnemonicType,
}

///----------------------------
/// CONTENT OF src/utils/api.rs
///----------------------------

/// Init utils
pub fn init_logger(level: LogLevel, mobile_logger: bool) {
    crate::utils::logger::init_logger(level, mobile_logger);
}
/// Create log stream
pub fn create_log_stream(s: StreamSink<LogEntry>) {
    crate::utils::logger::SendToDartLogger::set_stream_sink(s);
}
/// Init caller
pub fn init_caller(stream_sink: StreamSink<DartCallStub>) {
    set_stream_sink(stream_sink);
}
// TODO: all code below is only sandbox-related things
pub fn simple_log(string: String) {
    info!("Info: {string}");
    debug!("Debug: {string}");
    warn!("Warn: {string}");
    error!("Error: {string}");
}
pub fn simple_panic() {
    panic!("Just a panic");
}
pub fn simple_adder_sync(a: i32, b: i32) -> SyncReturn<i32> {
    SyncReturn(a + b)
}
pub fn simple_adder(a: i32, b: i32) -> i32 {
    a + b
}
pub trait MyFormat {
    fn my_format(&self) -> String;
}
impl MyFormat for i32 {
    fn my_format(&self) -> String {
        format!("i32 {self}")
    }
}
pub struct MyClass {
    pub val: i32,
}
impl MyClass {
    pub fn new(a: i32) -> MyClass {
        MyClass { val: a }
    }
    pub fn my_format(&self) -> String {
        self.val.my_format()
    }
}
pub fn stub_dv() -> DynamicValue {
    DynamicValue::U32(0)
}
pub fn stub_dcs() -> DartCallStub {
    DartCallStub {
        fn_name: String::from("func0"),
        args: vec![
            DynamicValue::String(String::from("Hello from rust, this is simple_call_func0")),
            DynamicValue::I64(42),
            DynamicValue::F64(42.42),
        ],
        named_args: vec![
            DynamicNamedValue {
                name: String::from("arg0"),
                value: Some(DynamicValue::I64(420)),
            },
            DynamicNamedValue {
                name: String::from("arg1"),
                value: Some(DynamicValue::F64(420.42)),
            },
        ],
    }
}
pub fn simple_call_dart() {
    call(stub_dcs());
}
pub fn stub_call_dart(stub: DartCallStub) {
    call(stub);
}
pub fn simple_call_func0() {
    let stub = DartCallStub {
        fn_name: String::from("func0"),
        args: vec![
            DynamicValue::String(String::from("Hello from rust, this is simple_call_func0")),
            DynamicValue::I64(42),
            DynamicValue::F64(42.42),
        ],
        named_args: vec![
            DynamicNamedValue {
                name: String::from("arg0"),
                value: Some(DynamicValue::I64(420)),
            },
            DynamicNamedValue {
                name: String::from("arg1"),
                value: Some(DynamicValue::F64(420.42)),
            },
        ],
    };
    call(stub);
}
