#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.64.0.

use crate::api::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

// Section: wire functions

fn wire_init_logger_impl(
    port_: MessagePort,
    level: impl Wire2Api<LogLevel> + UnwindSafe,
    mobile_logger: impl Wire2Api<bool> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "init_logger",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_level = level.wire2api();
            let api_mobile_logger = mobile_logger.wire2api();
            move |task_callback| Ok(init_logger(api_level, api_mobile_logger))
        },
    )
}
fn wire_create_log_stream_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "create_log_stream",
            port: Some(port_),
            mode: FfiCallMode::Stream,
        },
        move || move |task_callback| Ok(create_log_stream(task_callback.stream_sink())),
    )
}
fn wire_init_caller_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "init_caller",
            port: Some(port_),
            mode: FfiCallMode::Stream,
        },
        move || move |task_callback| Ok(init_caller(task_callback.stream_sink())),
    )
}
fn wire_simple_log_impl(port_: MessagePort, string: impl Wire2Api<String> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "simple_log",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_string = string.wire2api();
            move |task_callback| Ok(simple_log(api_string))
        },
    )
}
fn wire_simple_panic_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "simple_panic",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(simple_panic()),
    )
}
fn wire_simple_adder_sync_impl(
    a: impl Wire2Api<i32> + UnwindSafe,
    b: impl Wire2Api<i32> + UnwindSafe,
) -> support::WireSyncReturn {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync(
        WrapInfo {
            debug_name: "simple_adder_sync",
            port: None,
            mode: FfiCallMode::Sync,
        },
        move || {
            let api_a = a.wire2api();
            let api_b = b.wire2api();
            Ok(simple_adder_sync(api_a, api_b))
        },
    )
}
fn wire_simple_adder_impl(
    port_: MessagePort,
    a: impl Wire2Api<i32> + UnwindSafe,
    b: impl Wire2Api<i32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "simple_adder",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_a = a.wire2api();
            let api_b = b.wire2api();
            move |task_callback| Ok(simple_adder(api_a, api_b))
        },
    )
}
fn wire_stub_dv_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "stub_dv",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(stub_dv()),
    )
}
fn wire_stub_dcs_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "stub_dcs",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(stub_dcs()),
    )
}
fn wire_simple_call_dart_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "simple_call_dart",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(simple_call_dart()),
    )
}
fn wire_stub_call_dart_impl(port_: MessagePort, stub: impl Wire2Api<DartCallStub> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "stub_call_dart",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_stub = stub.wire2api();
            move |task_callback| Ok(stub_call_dart(api_stub))
        },
    )
}
fn wire_simple_call_func0_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "simple_call_func0",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(simple_call_func0()),
    )
}
fn wire_new__static_method__MyClass_impl(port_: MessagePort, a: impl Wire2Api<i32> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "new__static_method__MyClass",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_a = a.wire2api();
            move |task_callback| Ok(MyClass::new(api_a))
        },
    )
}
fn wire_my_format__method__MyClass_impl(
    port_: MessagePort,
    that: impl Wire2Api<MyClass> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "my_format__method__MyClass",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| Ok(MyClass::my_format(&api_that))
        },
    )
}
// Section: wrapper structs

// Section: static checks

// Section: allocate functions

// Section: related functions

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        (!self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<bool> for bool {
    fn wire2api(self) -> bool {
        self
    }
}

impl Wire2Api<f32> for f32 {
    fn wire2api(self) -> f32 {
        self
    }
}
impl Wire2Api<f64> for f64 {
    fn wire2api(self) -> f64 {
        self
    }
}
impl Wire2Api<i32> for i32 {
    fn wire2api(self) -> i32 {
        self
    }
}
impl Wire2Api<i64> for i64 {
    fn wire2api(self) -> i64 {
        self
    }
}

impl Wire2Api<LogLevel> for i32 {
    fn wire2api(self) -> LogLevel {
        match self {
            0 => LogLevel::Trace,
            1 => LogLevel::Debug,
            2 => LogLevel::Info,
            3 => LogLevel::Warn,
            4 => LogLevel::Error,
            _ => unreachable!("Invalid variant for LogLevel: {}", self),
        }
    }
}

impl Wire2Api<u32> for u32 {
    fn wire2api(self) -> u32 {
        self
    }
}
impl Wire2Api<u64> for u64 {
    fn wire2api(self) -> u64 {
        self
    }
}
impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

// Section: impl IntoDart

impl support::IntoDart for DartCallStub {
    fn into_dart(self) -> support::DartAbi {
        vec![self.fn_name.into_dart(), self.args.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for DartCallStub {}

impl support::IntoDart for DynamicValue {
    fn into_dart(self) -> support::DartAbi {
        match self {
            Self::U32(field0) => vec![0.into_dart(), field0.into_dart()],
            Self::I32(field0) => vec![1.into_dart(), field0.into_dart()],
            Self::U64(field0) => vec![2.into_dart(), field0.into_dart()],
            Self::I64(field0) => vec![3.into_dart(), field0.into_dart()],
            Self::F32(field0) => vec![4.into_dart(), field0.into_dart()],
            Self::F64(field0) => vec![5.into_dart(), field0.into_dart()],
            Self::String(field0) => vec![6.into_dart(), field0.into_dart()],
        }
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for DynamicValue {}

impl support::IntoDart for LogEntry {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.time_millis.into_dart(),
            self.level.into_dart(),
            self.tag.into_dart(),
            self.msg.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for LogEntry {}

impl support::IntoDart for LogLevel {
    fn into_dart(self) -> support::DartAbi {
        match self {
            Self::Trace => 0,
            Self::Debug => 1,
            Self::Info => 2,
            Self::Warn => 3,
            Self::Error => 4,
        }
        .into_dart()
    }
}
impl support::IntoDart for MyClass {
    fn into_dart(self) -> support::DartAbi {
        vec![self.val.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for MyClass {}

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

/// cbindgen:ignore
#[cfg(target_family = "wasm")]
mod web {
    use super::*;
    // Section: wire functions

    #[wasm_bindgen]
    pub fn wire_init_logger(port_: MessagePort, level: i32, mobile_logger: bool) {
        wire_init_logger_impl(port_, level, mobile_logger)
    }

    #[wasm_bindgen]
    pub fn wire_create_log_stream(port_: MessagePort) {
        wire_create_log_stream_impl(port_)
    }

    #[wasm_bindgen]
    pub fn wire_init_caller(port_: MessagePort) {
        wire_init_caller_impl(port_)
    }

    #[wasm_bindgen]
    pub fn wire_simple_log(port_: MessagePort, string: String) {
        wire_simple_log_impl(port_, string)
    }

    #[wasm_bindgen]
    pub fn wire_simple_panic(port_: MessagePort) {
        wire_simple_panic_impl(port_)
    }

    #[wasm_bindgen]
    pub fn wire_simple_adder_sync(a: i32, b: i32) -> support::WireSyncReturn {
        wire_simple_adder_sync_impl(a, b)
    }

    #[wasm_bindgen]
    pub fn wire_simple_adder(port_: MessagePort, a: i32, b: i32) {
        wire_simple_adder_impl(port_, a, b)
    }

    #[wasm_bindgen]
    pub fn wire_stub_dv(port_: MessagePort) {
        wire_stub_dv_impl(port_)
    }

    #[wasm_bindgen]
    pub fn wire_stub_dcs(port_: MessagePort) {
        wire_stub_dcs_impl(port_)
    }

    #[wasm_bindgen]
    pub fn wire_simple_call_dart(port_: MessagePort) {
        wire_simple_call_dart_impl(port_)
    }

    #[wasm_bindgen]
    pub fn wire_stub_call_dart(port_: MessagePort, stub: JsValue) {
        wire_stub_call_dart_impl(port_, stub)
    }

    #[wasm_bindgen]
    pub fn wire_simple_call_func0(port_: MessagePort) {
        wire_simple_call_func0_impl(port_)
    }

    #[wasm_bindgen]
    pub fn wire_new__static_method__MyClass(port_: MessagePort, a: i32) {
        wire_new__static_method__MyClass_impl(port_, a)
    }

    #[wasm_bindgen]
    pub fn wire_my_format__method__MyClass(port_: MessagePort, that: JsValue) {
        wire_my_format__method__MyClass_impl(port_, that)
    }

    // Section: allocate functions

    // Section: related functions

    // Section: impl Wire2Api

    impl Wire2Api<String> for String {
        fn wire2api(self) -> String {
            self
        }
    }

    impl Wire2Api<DartCallStub> for JsValue {
        fn wire2api(self) -> DartCallStub {
            let self_ = self.dyn_into::<JsArray>().unwrap();
            assert_eq!(
                self_.length(),
                2,
                "Expected 2 elements, got {}",
                self_.length()
            );
            DartCallStub {
                fn_name: self_.get(0).wire2api(),
                args: self_.get(1).wire2api(),
            }
        }
    }
    impl Wire2Api<DynamicValue> for JsValue {
        fn wire2api(self) -> DynamicValue {
            let self_ = self.unchecked_into::<JsArray>();
            match self_.get(0).unchecked_into_f64() as _ {
                0 => DynamicValue::U32(self_.get(1).wire2api()),
                1 => DynamicValue::I32(self_.get(1).wire2api()),
                2 => DynamicValue::U64(self_.get(1).wire2api()),
                3 => DynamicValue::I64(self_.get(1).wire2api()),
                4 => DynamicValue::F32(self_.get(1).wire2api()),
                5 => DynamicValue::F64(self_.get(1).wire2api()),
                6 => DynamicValue::String(self_.get(1).wire2api()),
                _ => unreachable!(),
            }
        }
    }

    impl Wire2Api<Vec<DynamicValue>> for JsValue {
        fn wire2api(self) -> Vec<DynamicValue> {
            self.dyn_into::<JsArray>()
                .unwrap()
                .iter()
                .map(Wire2Api::wire2api)
                .collect()
        }
    }

    impl Wire2Api<MyClass> for JsValue {
        fn wire2api(self) -> MyClass {
            let self_ = self.dyn_into::<JsArray>().unwrap();
            assert_eq!(
                self_.length(),
                1,
                "Expected 1 elements, got {}",
                self_.length()
            );
            MyClass {
                val: self_.get(0).wire2api(),
            }
        }
    }

    impl Wire2Api<Vec<u8>> for Box<[u8]> {
        fn wire2api(self) -> Vec<u8> {
            self.into_vec()
        }
    }
    // Section: impl Wire2Api for JsValue

    impl Wire2Api<String> for JsValue {
        fn wire2api(self) -> String {
            self.as_string().expect("non-UTF-8 string, or not a string")
        }
    }
    impl Wire2Api<bool> for JsValue {
        fn wire2api(self) -> bool {
            self.is_truthy()
        }
    }
    impl Wire2Api<f32> for JsValue {
        fn wire2api(self) -> f32 {
            self.unchecked_into_f64() as _
        }
    }
    impl Wire2Api<f64> for JsValue {
        fn wire2api(self) -> f64 {
            self.unchecked_into_f64() as _
        }
    }
    impl Wire2Api<i32> for JsValue {
        fn wire2api(self) -> i32 {
            self.unchecked_into_f64() as _
        }
    }
    impl Wire2Api<i64> for JsValue {
        fn wire2api(self) -> i64 {
            ::std::convert::TryInto::try_into(self.dyn_into::<js_sys::BigInt>().unwrap()).unwrap()
        }
    }
    impl Wire2Api<LogLevel> for JsValue {
        fn wire2api(self) -> LogLevel {
            (self.unchecked_into_f64() as i32).wire2api()
        }
    }
    impl Wire2Api<u32> for JsValue {
        fn wire2api(self) -> u32 {
            self.unchecked_into_f64() as _
        }
    }
    impl Wire2Api<u64> for JsValue {
        fn wire2api(self) -> u64 {
            ::std::convert::TryInto::try_into(self.dyn_into::<js_sys::BigInt>().unwrap()).unwrap()
        }
    }
    impl Wire2Api<u8> for JsValue {
        fn wire2api(self) -> u8 {
            self.unchecked_into_f64() as _
        }
    }
    impl Wire2Api<Vec<u8>> for JsValue {
        fn wire2api(self) -> Vec<u8> {
            self.unchecked_into::<js_sys::Uint8Array>().to_vec().into()
        }
    }
}
#[cfg(target_family = "wasm")]
pub use web::*;

#[cfg(not(target_family = "wasm"))]
mod io {
    use super::*;
    // Section: wire functions

    #[no_mangle]
    pub extern "C" fn wire_init_logger(port_: i64, level: i32, mobile_logger: bool) {
        wire_init_logger_impl(port_, level, mobile_logger)
    }

    #[no_mangle]
    pub extern "C" fn wire_create_log_stream(port_: i64) {
        wire_create_log_stream_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_init_caller(port_: i64) {
        wire_init_caller_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_simple_log(port_: i64, string: *mut wire_uint_8_list) {
        wire_simple_log_impl(port_, string)
    }

    #[no_mangle]
    pub extern "C" fn wire_simple_panic(port_: i64) {
        wire_simple_panic_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_simple_adder_sync(a: i32, b: i32) -> support::WireSyncReturn {
        wire_simple_adder_sync_impl(a, b)
    }

    #[no_mangle]
    pub extern "C" fn wire_simple_adder(port_: i64, a: i32, b: i32) {
        wire_simple_adder_impl(port_, a, b)
    }

    #[no_mangle]
    pub extern "C" fn wire_stub_dv(port_: i64) {
        wire_stub_dv_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_stub_dcs(port_: i64) {
        wire_stub_dcs_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_simple_call_dart(port_: i64) {
        wire_simple_call_dart_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_stub_call_dart(port_: i64, stub: *mut wire_DartCallStub) {
        wire_stub_call_dart_impl(port_, stub)
    }

    #[no_mangle]
    pub extern "C" fn wire_simple_call_func0(port_: i64) {
        wire_simple_call_func0_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_new__static_method__MyClass(port_: i64, a: i32) {
        wire_new__static_method__MyClass_impl(port_, a)
    }

    #[no_mangle]
    pub extern "C" fn wire_my_format__method__MyClass(port_: i64, that: *mut wire_MyClass) {
        wire_my_format__method__MyClass_impl(port_, that)
    }

    // Section: allocate functions

    #[no_mangle]
    pub extern "C" fn new_box_autoadd_dart_call_stub_0() -> *mut wire_DartCallStub {
        support::new_leak_box_ptr(wire_DartCallStub::new_with_null_ptr())
    }

    #[no_mangle]
    pub extern "C" fn new_box_autoadd_my_class_0() -> *mut wire_MyClass {
        support::new_leak_box_ptr(wire_MyClass::new_with_null_ptr())
    }

    #[no_mangle]
    pub extern "C" fn new_list_dynamic_value_0(len: i32) -> *mut wire_list_dynamic_value {
        let wrap = wire_list_dynamic_value {
            ptr: support::new_leak_vec_ptr(<wire_DynamicValue>::new_with_null_ptr(), len),
            len,
        };
        support::new_leak_box_ptr(wrap)
    }

    #[no_mangle]
    pub extern "C" fn new_uint_8_list_0(len: i32) -> *mut wire_uint_8_list {
        let ans = wire_uint_8_list {
            ptr: support::new_leak_vec_ptr(Default::default(), len),
            len,
        };
        support::new_leak_box_ptr(ans)
    }

    // Section: related functions

    // Section: impl Wire2Api

    impl Wire2Api<String> for *mut wire_uint_8_list {
        fn wire2api(self) -> String {
            let vec: Vec<u8> = self.wire2api();
            String::from_utf8_lossy(&vec).into_owned()
        }
    }

    impl Wire2Api<DartCallStub> for *mut wire_DartCallStub {
        fn wire2api(self) -> DartCallStub {
            let wrap = unsafe { support::box_from_leak_ptr(self) };
            Wire2Api::<DartCallStub>::wire2api(*wrap).into()
        }
    }
    impl Wire2Api<MyClass> for *mut wire_MyClass {
        fn wire2api(self) -> MyClass {
            let wrap = unsafe { support::box_from_leak_ptr(self) };
            Wire2Api::<MyClass>::wire2api(*wrap).into()
        }
    }
    impl Wire2Api<DartCallStub> for wire_DartCallStub {
        fn wire2api(self) -> DartCallStub {
            DartCallStub {
                fn_name: self.fn_name.wire2api(),
                args: self.args.wire2api(),
            }
        }
    }
    impl Wire2Api<DynamicValue> for wire_DynamicValue {
        fn wire2api(self) -> DynamicValue {
            match self.tag {
                0 => unsafe {
                    let ans = support::box_from_leak_ptr(self.kind);
                    let ans = support::box_from_leak_ptr(ans.U32);
                    DynamicValue::U32(ans.field0.wire2api())
                },
                1 => unsafe {
                    let ans = support::box_from_leak_ptr(self.kind);
                    let ans = support::box_from_leak_ptr(ans.I32);
                    DynamicValue::I32(ans.field0.wire2api())
                },
                2 => unsafe {
                    let ans = support::box_from_leak_ptr(self.kind);
                    let ans = support::box_from_leak_ptr(ans.U64);
                    DynamicValue::U64(ans.field0.wire2api())
                },
                3 => unsafe {
                    let ans = support::box_from_leak_ptr(self.kind);
                    let ans = support::box_from_leak_ptr(ans.I64);
                    DynamicValue::I64(ans.field0.wire2api())
                },
                4 => unsafe {
                    let ans = support::box_from_leak_ptr(self.kind);
                    let ans = support::box_from_leak_ptr(ans.F32);
                    DynamicValue::F32(ans.field0.wire2api())
                },
                5 => unsafe {
                    let ans = support::box_from_leak_ptr(self.kind);
                    let ans = support::box_from_leak_ptr(ans.F64);
                    DynamicValue::F64(ans.field0.wire2api())
                },
                6 => unsafe {
                    let ans = support::box_from_leak_ptr(self.kind);
                    let ans = support::box_from_leak_ptr(ans.String);
                    DynamicValue::String(ans.field0.wire2api())
                },
                _ => unreachable!(),
            }
        }
    }

    impl Wire2Api<Vec<DynamicValue>> for *mut wire_list_dynamic_value {
        fn wire2api(self) -> Vec<DynamicValue> {
            let vec = unsafe {
                let wrap = support::box_from_leak_ptr(self);
                support::vec_from_leak_ptr(wrap.ptr, wrap.len)
            };
            vec.into_iter().map(Wire2Api::wire2api).collect()
        }
    }

    impl Wire2Api<MyClass> for wire_MyClass {
        fn wire2api(self) -> MyClass {
            MyClass {
                val: self.val.wire2api(),
            }
        }
    }

    impl Wire2Api<Vec<u8>> for *mut wire_uint_8_list {
        fn wire2api(self) -> Vec<u8> {
            unsafe {
                let wrap = support::box_from_leak_ptr(self);
                support::vec_from_leak_ptr(wrap.ptr, wrap.len)
            }
        }
    }
    // Section: wire structs

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_DartCallStub {
        fn_name: *mut wire_uint_8_list,
        args: *mut wire_list_dynamic_value,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_list_dynamic_value {
        ptr: *mut wire_DynamicValue,
        len: i32,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_MyClass {
        val: i32,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_uint_8_list {
        ptr: *mut u8,
        len: i32,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_DynamicValue {
        tag: i32,
        kind: *mut DynamicValueKind,
    }

    #[repr(C)]
    pub union DynamicValueKind {
        U32: *mut wire_DynamicValue_U32,
        I32: *mut wire_DynamicValue_I32,
        U64: *mut wire_DynamicValue_U64,
        I64: *mut wire_DynamicValue_I64,
        F32: *mut wire_DynamicValue_F32,
        F64: *mut wire_DynamicValue_F64,
        String: *mut wire_DynamicValue_String,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_DynamicValue_U32 {
        field0: u32,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_DynamicValue_I32 {
        field0: i32,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_DynamicValue_U64 {
        field0: u64,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_DynamicValue_I64 {
        field0: i64,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_DynamicValue_F32 {
        field0: f32,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_DynamicValue_F64 {
        field0: f64,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_DynamicValue_String {
        field0: *mut wire_uint_8_list,
    }

    // Section: impl NewWithNullPtr

    pub trait NewWithNullPtr {
        fn new_with_null_ptr() -> Self;
    }

    impl<T> NewWithNullPtr for *mut T {
        fn new_with_null_ptr() -> Self {
            std::ptr::null_mut()
        }
    }

    impl NewWithNullPtr for wire_DartCallStub {
        fn new_with_null_ptr() -> Self {
            Self {
                fn_name: core::ptr::null_mut(),
                args: core::ptr::null_mut(),
            }
        }
    }

    impl NewWithNullPtr for wire_DynamicValue {
        fn new_with_null_ptr() -> Self {
            Self {
                tag: -1,
                kind: core::ptr::null_mut(),
            }
        }
    }

    #[no_mangle]
    pub extern "C" fn inflate_DynamicValue_U32() -> *mut DynamicValueKind {
        support::new_leak_box_ptr(DynamicValueKind {
            U32: support::new_leak_box_ptr(wire_DynamicValue_U32 {
                field0: Default::default(),
            }),
        })
    }

    #[no_mangle]
    pub extern "C" fn inflate_DynamicValue_I32() -> *mut DynamicValueKind {
        support::new_leak_box_ptr(DynamicValueKind {
            I32: support::new_leak_box_ptr(wire_DynamicValue_I32 {
                field0: Default::default(),
            }),
        })
    }

    #[no_mangle]
    pub extern "C" fn inflate_DynamicValue_U64() -> *mut DynamicValueKind {
        support::new_leak_box_ptr(DynamicValueKind {
            U64: support::new_leak_box_ptr(wire_DynamicValue_U64 {
                field0: Default::default(),
            }),
        })
    }

    #[no_mangle]
    pub extern "C" fn inflate_DynamicValue_I64() -> *mut DynamicValueKind {
        support::new_leak_box_ptr(DynamicValueKind {
            I64: support::new_leak_box_ptr(wire_DynamicValue_I64 {
                field0: Default::default(),
            }),
        })
    }

    #[no_mangle]
    pub extern "C" fn inflate_DynamicValue_F32() -> *mut DynamicValueKind {
        support::new_leak_box_ptr(DynamicValueKind {
            F32: support::new_leak_box_ptr(wire_DynamicValue_F32 {
                field0: Default::default(),
            }),
        })
    }

    #[no_mangle]
    pub extern "C" fn inflate_DynamicValue_F64() -> *mut DynamicValueKind {
        support::new_leak_box_ptr(DynamicValueKind {
            F64: support::new_leak_box_ptr(wire_DynamicValue_F64 {
                field0: Default::default(),
            }),
        })
    }

    #[no_mangle]
    pub extern "C" fn inflate_DynamicValue_String() -> *mut DynamicValueKind {
        support::new_leak_box_ptr(DynamicValueKind {
            String: support::new_leak_box_ptr(wire_DynamicValue_String {
                field0: core::ptr::null_mut(),
            }),
        })
    }

    impl NewWithNullPtr for wire_MyClass {
        fn new_with_null_ptr() -> Self {
            Self {
                val: Default::default(),
            }
        }
    }

    // Section: sync execution mode utility

    #[no_mangle]
    pub extern "C" fn free_WireSyncReturn(ptr: support::WireSyncReturn) {
        unsafe {
            let _ = support::box_from_leak_ptr(ptr);
        };
    }
}
#[cfg(not(target_family = "wasm"))]
pub use io::*;