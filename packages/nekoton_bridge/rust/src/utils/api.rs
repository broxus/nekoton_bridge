#![allow(unused_variables, dead_code)]

use crate::frb_generated::StreamSink;
use crate::utils::logger;
use crate::nekoton_wrapper::update_clock_offset;

/// Init utils
pub fn init_logger(level: logger::LogLevel, mobile_logger: bool) {
    logger::init_logger(level, mobile_logger);
}

/// Create log stream
pub fn create_log_stream(s: StreamSink<logger::LogEntry>) {
    logger::SendToDartLogger::set_stream_sink(s);
}

/// Set clock offset in milliseconds
pub fn set_clock_offset(offset_ms: i64) {
    update_clock_offset(offset_ms);
}
