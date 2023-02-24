#![allow(unused_variables)]

use flutter_rust_bridge::*;
use log::*;

mod caller;
mod logger;

pub enum LogLevel {
    Trace,
    Debug,
    Info,
    Warn,
    Error,
}

/// Log entry
pub struct LogEntry {
    pub time_millis: i64,
    pub level: LogLevel,
    pub tag: String,
    pub msg: String,
}

/// Init logger
pub fn init_logger(level: LogLevel, mobile_logger: bool) {
    logger::init_logger(level, mobile_logger);
}

/// Create log stream
pub fn create_log_stream(s: StreamSink<LogEntry>) {
    logger::SendToDartLogger::set_stream_sink(s);
}

// / Dynamic value for transmitting between Dart and Rust. We can't use Box<dyn Any> because frb doesn't support it.
#[derive(Clone, Debug)]
pub enum DynamicValue {
    U32(u32),
    I32(i32),

    U64(u64),
    I64(i64),

    F32(f32),
    F64(f64),

    String(String),
}

impl Default for DynamicValue {
    fn default() -> Self {
        DynamicValue::U64(0)
    }
}

#[derive(Default, Debug, Clone)]
pub struct DynamicNamedValue {
    pub name: String,
    pub value: Option<DynamicValue>,
}

#[derive(Default, Debug, Clone)]
pub struct DartCallStub {
    pub fn_name: String,
    pub args: Vec<DynamicValue>,
    pub named_args: Vec<DynamicNamedValue>,
}

/// Init caller
pub fn init_caller(stream_sink: StreamSink<DartCallStub>) {
    caller::set_stream_sink(stream_sink);
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
    caller::call(stub_dcs());
}

pub fn stub_call_dart(stub: DartCallStub) {
    caller::call(stub);
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

    caller::call(stub);
}

// impl Default for DynamicValue {
//     fn default() -> Self {
//         DynamicValue::U64(0)
//     }
// }

// impl Default for DynamicNamedValue {
//     fn default() -> Self {
//         Self {
//             name: Default::default(),
//             value: Default::default(),
//         }
//     }
// }
