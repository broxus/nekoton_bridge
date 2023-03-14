#![allow(unused_variables, dead_code)]

use std::collections::HashMap;

use flutter_rust_bridge::*;
use log::*;

use crate::utils::caller;
use crate::utils::logger;
use crate::utils::mega_struct;

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
