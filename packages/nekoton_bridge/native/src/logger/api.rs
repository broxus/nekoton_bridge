#![allow(unused_variables)]

use flutter_rust_bridge::*;
use log::*;

use crate::logger::{LogEntry, LogLevel};

/// Init logger
pub fn init_logger(level: LogLevel, mobile_logger: bool) {
    crate::logger::init_logger(level, mobile_logger);
}

/// Create log stream
pub fn create_log_stream(s: StreamSink<LogEntry>) {
    crate::logger::SendToDartLogger::set_stream_sink(s);
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
