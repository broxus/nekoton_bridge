#![allow(unused_variables, dead_code)]

use flutter_rust_bridge::*;
use log::*;

use crate::utils::caller::{call, set_stream_sink, DartCallStub, DynamicNamedValue, DynamicValue};
use crate::utils::logger::{LogEntry, LogLevel};

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
