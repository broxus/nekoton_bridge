#![allow(unused_variables, dead_code)]

use std::collections::HashMap;

use flutter_rust_bridge::*;
use log::*;

use crate::utils::caller;
use crate::utils::caller;
use crate::utils::logger;
use crate::utils::mega_struct;

// logger tests

pub fn test_logger_info(string: String) {
    info!("Info: {string}");
}

pub fn test_logger_debug(string: String) {
    debug!("Debug: {string}");
}

pub fn test_logger_warn(string: String) {
    warn!("Warn: {string}");
}

pub fn test_logger_error(string: String) {
    error!("Error: {string}");
}

pub fn test_logger_panic(string: String) {
    panic!("Panic: {}", string);
}

// caller tests

pub fn test_caller_call_test0_async(string: String, need_result: bool) -> DynamicValue {
    info!("test_caller_call_test0_async {string}");
    let stub = caller::DartCallStub {
        instance_hash: String::from("0"),
        fn_name: String::from("test0"),
        args: vec![caller::DynamicValue::String(string)],
        named_args: vec![],
    };

    caller::call(stub, need_result)
}

pub fn test_caller_call_test0_sync(string: String, need_result: bool) -> SyncReturn<DynamicValue> {
    info!("test_caller_call_test0_sync {string}");
    let stub = caller::DartCallStub {
        instance_hash: String::from("0"),
        fn_name: String::from("test0"),
        args: vec![caller::DynamicValue::String(string)],
        named_args: vec![],
    };

    SyncReturn(caller::call(stub, need_result))
}

pub fn test_caller_call_test1_async(string: String, need_result: bool) -> DynamicValue {
  info!("test_caller_call_test1_async {string}");
  let stub = caller::DartCallStub {
      instance_hash: String::from("0"),
      fn_name: String::from("test1"),
      args: vec![caller::DynamicValue::String(string)],
      named_args: vec![],
  };

  caller::call(stub, need_result)
}
