#![allow(unused)]
use crate::{
    nekoton_wrapper::{
        crypto::mnemonic::models::KeypairHelper, str_list_to_string_vec, str_vec_to_string_vec,
        HandleError, MatchResult,
    },
    utils::{caller, logger, mega_struct},
};
use flutter_rust_bridge::*;
use log::*;
pub use nekoton::crypto::{derive_from_phrase, dict, generate_key, MnemonicType};
use std::collections::HashMap;

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
pub fn nt_generate_key(account_type: MnemonicType) -> GeneratedKeyG {
    let key = generate_key(account_type);
    GeneratedKeyG {
        words: str_vec_to_string_vec(key.words),
        account_type: key.account_type,
    }
}
/// Get hints for input part of word of seed phrase to get possible words
/// input: acco
/// returns [account, accommodate, ...]
pub fn nt_get_hints(input: String) -> Vec<String> {
    str_list_to_string_vec(dict::get_hints(input.as_str()))
}
/// Generate public and secret keys from seed phrase and mnemonic type
/// Returns json {'public': '...', 'secret': '...'}
pub fn nt_derive_from_phrase(phrase: String, mnemonic_type: MnemonicType) -> String {
    let keypair = derive_from_phrase(phrase.as_str(), mnemonic_type).handle_error();
    serde_json::to_value(KeypairHelper(keypair.unwrap()))
        .handle_error()
        .match_result()
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
pub fn init_logger(level: logger::LogLevel, mobile_logger: bool) {
    logger::init_logger(level, mobile_logger);
}
/// Create log stream
pub fn create_log_stream(s: StreamSink<logger::LogEntry>) {
    logger::SendToDartLogger::set_stream_sink(s);
}
/// Init caller
pub fn init_caller(stream_sink: StreamSink<caller::DartCallStubRegistred>) {
    caller::set_stream_sink(stream_sink);
}
/// Callback functions for returning Dart method result
pub fn call_send_result(id: String, value: caller::DynamicValue) {
    caller::call_send_result(id, value);
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
pub fn stub_dv() -> caller::DynamicValue {
    caller::DynamicValue::U32(0)
}
pub fn stub_dcs() -> caller::DartCallStub {
    caller::DartCallStub {
        instance_hash: String::from("0"),
        fn_name: String::from("func0"),
        args: vec![
            caller::DynamicValue::String(String::from(
                "Hello from rust, this is simple_call_func0",
            )),
            caller::DynamicValue::I64(42),
            caller::DynamicValue::F64(42.42),
        ],
        named_args: vec![
            caller::DynamicNamedValue {
                name: String::from("arg0"),
                value: Some(caller::DynamicValue::I64(420)),
            },
            caller::DynamicNamedValue {
                name: String::from("arg1"),
                value: Some(caller::DynamicValue::F64(420.42)),
            },
        ],
    }
}
pub fn simple_call_dart() {
    let ret = caller::call(stub_dcs(), true);
    debug!("simple_call_dart returns: {:?}", ret);
}
pub fn stub_call_dart(stub: caller::DartCallStub) {
    caller::call(stub, true);
}
pub fn simple_call_func0(need_result: bool) {
    let stub = caller::DartCallStub {
        instance_hash: String::from("0"),
        fn_name: String::from("func0"),
        args: vec![
            caller::DynamicValue::String(String::from(
                "Hello from rust, this is simple_call_func0",
            )),
            caller::DynamicValue::I64(42),
            caller::DynamicValue::F64(42.42),
        ],
        named_args: vec![
            caller::DynamicNamedValue {
                name: String::from("arg0"),
                value: Some(caller::DynamicValue::I64(420)),
            },
            caller::DynamicNamedValue {
                name: String::from("arg1"),
                value: Some(caller::DynamicValue::F64(420.42)),
            },
        ],
    };
    let result = caller::call(stub, need_result);
    let dgbstr = if need_result {
        result.as_string()
    } else {
        String::from("no return value")
    };
    debug!("Something returned from simple_call_func0: {:?}", dgbstr);
}
pub fn simple_call_func1(need_result: bool) {
    let stub = caller::DartCallStub {
        instance_hash: String::from("0"),
        fn_name: String::from("func1"),
        args: vec![
            caller::DynamicValue::String(String::from(
                "Hello from rust, this is simple_call_func1",
            )),
            caller::DynamicValue::I64(42),
            caller::DynamicValue::F64(42.42),
        ],
        named_args: vec![
            caller::DynamicNamedValue {
                name: String::from("arg0"),
                value: Some(caller::DynamicValue::I64(420)),
            },
            caller::DynamicNamedValue {
                name: String::from("arg1"),
                value: Some(caller::DynamicValue::F64(420.42)),
            },
        ],
    };
    debug!(
        "Something returned from simple_call_func1: {:?}",
        caller::call(stub, need_result)
    );
}
pub fn simple_call_func2() {
    let mut props = HashMap::new();
    props.insert(String::from("Key0"), String::from("Value0"));
    props.insert(String::from("Key1"), String::from("Value1"));
    let to_send_mega_struct = mega_struct::MegaStruct {
        name: String::from("megastruct from rust"),
        coords: mega_struct::Coords {
            x: 1.1,
            y: 2.2,
            z: 3.3,
        },
        props,
    };
    let to_send_dynamic_value = caller::DynamicValue::MegaStruct(to_send_mega_struct.to_json());
    let stub = caller::DartCallStub {
        instance_hash: String::from("0"),
        fn_name: String::from("func2"),
        args: vec![to_send_dynamic_value],
        named_args: vec![],
    };
    let mega_struct = caller::call(stub, true).as_mega_struct();
    debug!(
        "Something returned from simple_call_func2: name: {} debug: {:?}",
        mega_struct.name, mega_struct,
    );
}
pub struct CallerTestClass {
    pub instance_hash: String,
    pub value: i32,
}
impl CallerTestClass {
    pub fn new(instance_hash: String, value: i32) -> CallerTestClass {
        Self {
            instance_hash,
            value,
        }
    }
    pub fn call_some_func(&self) {
        let stub = caller::DartCallStub {
            instance_hash: self.instance_hash.clone(),
            fn_name: String::from("request"),
            args: vec![caller::DynamicValue::String(String::from(
                "RequestOptionData",
            ))],
            named_args: vec![],
        };
        let result = caller::call(stub, true).as_string();
        debug!("Returned request from CallerTestClass: {}", result);
    }
}
