use super::*;
// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_resend_mnemonic(port_: i64, mnemonic: *mut wire_MnemonicType) {
    wire_resend_mnemonic_impl(port_, mnemonic)
}

#[no_mangle]
pub extern "C" fn wire_nt_generate_key(port_: i64, account_type: *mut wire_MnemonicType) {
    wire_nt_generate_key_impl(port_, account_type)
}

#[no_mangle]
pub extern "C" fn wire_nt_get_hints(port_: i64, input: *mut wire_uint_8_list) {
    wire_nt_get_hints_impl(port_, input)
}

#[no_mangle]
pub extern "C" fn wire_nt_derive_from_phrase(
    port_: i64,
    phrase: *mut wire_uint_8_list,
    mnemonic_type: *mut wire_MnemonicType,
) {
    wire_nt_derive_from_phrase_impl(port_, phrase, mnemonic_type)
}

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
pub extern "C" fn new_box_autoadd_dynamic_value_0() -> *mut wire_DynamicValue {
    support::new_leak_box_ptr(wire_DynamicValue::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_box_autoadd_mnemonic_type_0() -> *mut wire_MnemonicType {
    support::new_leak_box_ptr(wire_MnemonicType::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_box_autoadd_my_class_0() -> *mut wire_MyClass {
    support::new_leak_box_ptr(wire_MyClass::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_list_dynamic_named_value_0(len: i32) -> *mut wire_list_dynamic_named_value {
    let wrap = wire_list_dynamic_named_value {
        ptr: support::new_leak_vec_ptr(<wire_DynamicNamedValue>::new_with_null_ptr(), len),
        len,
    };
    support::new_leak_box_ptr(wrap)
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
impl Wire2Api<DynamicValue> for *mut wire_DynamicValue {
    fn wire2api(self) -> DynamicValue {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        Wire2Api::<DynamicValue>::wire2api(*wrap).into()
    }
}
impl Wire2Api<MnemonicType> for *mut wire_MnemonicType {
    fn wire2api(self) -> MnemonicType {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        Wire2Api::<MnemonicType>::wire2api(*wrap).into()
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
            named_args: self.named_args.wire2api(),
        }
    }
}
impl Wire2Api<DynamicNamedValue> for wire_DynamicNamedValue {
    fn wire2api(self) -> DynamicNamedValue {
        DynamicNamedValue {
            name: self.name.wire2api(),
            value: self.value.wire2api(),
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

impl Wire2Api<Vec<DynamicNamedValue>> for *mut wire_list_dynamic_named_value {
    fn wire2api(self) -> Vec<DynamicNamedValue> {
        let vec = unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        };
        vec.into_iter().map(Wire2Api::wire2api).collect()
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

impl Wire2Api<MnemonicType> for wire_MnemonicType {
    fn wire2api(self) -> MnemonicType {
        match self.tag {
            0 => MnemonicType::Legacy,
            1 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.Labs);
                MnemonicType::Labs(ans.field0.wire2api())
            },
            _ => unreachable!(),
        }
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
    named_args: *mut wire_list_dynamic_named_value,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_DynamicNamedValue {
    name: *mut wire_uint_8_list,
    value: *mut wire_DynamicValue,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_list_dynamic_named_value {
    ptr: *mut wire_DynamicNamedValue,
    len: i32,
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

#[repr(C)]
#[derive(Clone)]
pub struct wire_MnemonicType {
    tag: i32,
    kind: *mut MnemonicTypeKind,
}

#[repr(C)]
pub union MnemonicTypeKind {
    Legacy: *mut wire_MnemonicType_Legacy,
    Labs: *mut wire_MnemonicType_Labs,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_MnemonicType_Legacy {}

#[repr(C)]
#[derive(Clone)]
pub struct wire_MnemonicType_Labs {
    field0: u16,
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
            named_args: core::ptr::null_mut(),
        }
    }
}

impl Default for wire_DartCallStub {
    fn default() -> Self {
        Self::new_with_null_ptr()
    }
}

impl NewWithNullPtr for wire_DynamicNamedValue {
    fn new_with_null_ptr() -> Self {
        Self {
            name: core::ptr::null_mut(),
            value: core::ptr::null_mut(),
        }
    }
}

impl Default for wire_DynamicNamedValue {
    fn default() -> Self {
        Self::new_with_null_ptr()
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

impl NewWithNullPtr for wire_MnemonicType {
    fn new_with_null_ptr() -> Self {
        Self {
            tag: -1,
            kind: core::ptr::null_mut(),
        }
    }
}

#[no_mangle]
pub extern "C" fn inflate_MnemonicType_Labs() -> *mut MnemonicTypeKind {
    support::new_leak_box_ptr(MnemonicTypeKind {
        Labs: support::new_leak_box_ptr(wire_MnemonicType_Labs {
            field0: Default::default(),
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

impl Default for wire_MyClass {
    fn default() -> Self {
        Self::new_with_null_ptr()
    }
}

// Section: sync execution mode utility

#[no_mangle]
pub extern "C" fn free_WireSyncReturn(ptr: support::WireSyncReturn) {
    unsafe {
        let _ = support::box_from_leak_ptr(ptr);
    };
}
