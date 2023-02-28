#![allow(unused_variables)]

use std::collections::HashMap;

use flutter_rust_bridge::*;
use log::*;

mod caller;
mod logger;
mod mega_struct;

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

    MegaStruct(String),

    None,
}

impl Default for DynamicValue {
    fn default() -> Self {
        DynamicValue::None
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

#[derive(Default, Debug, Clone)]
pub struct DartCallStubRegistred {
    pub id: Option<String>,
    pub stub: DartCallStub,
}

/// Init caller
pub fn init_caller(stream_sink: StreamSink<DartCallStubRegistred>) {
    caller::set_stream_sink(stream_sink);
}

/// Callback functions for returning Dart method result
pub fn call_send_result(id: String, value: DynamicValue) {
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
    let ret = caller::call(stub_dcs(), true);
    debug!("simple_call_dart returns: {:?}", ret);
}

pub fn stub_call_dart(stub: DartCallStub) {
    caller::call(stub, true);
}

pub fn simple_call_func0(need_result: bool) {
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

    debug!(
        "Something returned from simple_call_func0: {:?}",
        caller::call(stub, need_result)
    );
}

pub fn simple_call_func1(need_result: bool) {
    let stub = DartCallStub {
        fn_name: String::from("func1"),
        args: vec![
            DynamicValue::String(String::from("Hello from rust, this is simple_call_func1")),
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

    debug!(
        "Something returned from simple_call_func1: {:?}",
        caller::call(stub, need_result)
    );
}

pub fn simple_call_func2(need_result: bool) {
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
        props: props,
    };

    let to_send_dynamic_value = DynamicValue::MegaStruct(to_send_mega_struct.to_json());

    let stub = DartCallStub {
        fn_name: String::from("func2"),
        args: vec![to_send_dynamic_value],
        named_args: vec![],
    };

    debug!(
        "Something returned from simple_call_func2: {:?}",
        caller::call(stub, need_result)
    );
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
