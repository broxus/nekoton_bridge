#![allow(unused_variables, dead_code)]

use std::collections::HashMap;
use std::{thread, time};

use flutter_rust_bridge::frb;
use log::*;

use crate::frb_generated::StreamSink;
use crate::utils::caller;
use crate::utils::logger;
use crate::utils::mega_struct;

use crate::nekoton_wrapper::update_clock_offset;

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
#[frb(sync)]
pub fn call_send_result(id: String, value: caller::DynamicValue) {
    caller::call_send_result(id, value)
}

/// Set clock offset in milliseconds
pub fn set_clock_offset(offset_ms: i64) {
    update_clock_offset(offset_ms);
}

// TODO: remove all non-integration test related things FROM here

pub fn simple_log(string: String) {
    info!("Info: {string}");
    debug!("Debug: {string}");
    warn!("Warn: {string}");
    error!("Error: {string}");
}

pub fn simple_panic() {
    panic!("Just a panic");
}

#[frb(sync)]
pub fn simple_adder_sync(a: i32, b: i32) -> i32 {
    (a + b)
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
        Result::Ok(String::from("no return value"))
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

pub fn simple_call_func3() {
    let duration = time::Duration::from_secs(2);
    thread::sleep(duration);

    debug!("Returned from simple_call_func3");
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
        debug!("Returned request from CallerTestClass: {}", result.unwrap());
    }
}

// TODO: remove all non-integration test related things TO here
