use super::*;
// Section: wire functions

#[wasm_bindgen]
pub fn wire_resend_mnemonic(port_: MessagePort, mnemonic: JsValue) {
    wire_resend_mnemonic_impl(port_, mnemonic)
}

#[wasm_bindgen]
pub fn wire_nt_generate_key(port_: MessagePort, account_type: JsValue) {
    wire_nt_generate_key_impl(port_, account_type)
}

#[wasm_bindgen]
pub fn wire_nt_get_hints(port_: MessagePort, input: String) {
    wire_nt_get_hints_impl(port_, input)
}

#[wasm_bindgen]
pub fn wire_nt_derive_from_phrase(port_: MessagePort, phrase: String, mnemonic_type: JsValue) {
    wire_nt_derive_from_phrase_impl(port_, phrase, mnemonic_type)
}

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
            3,
            "Expected 3 elements, got {}",
            self_.length()
        );
        DartCallStub {
            fn_name: self_.get(0).wire2api(),
            args: self_.get(1).wire2api(),
            named_args: self_.get(2).wire2api(),
        }
    }
}
impl Wire2Api<DynamicNamedValue> for JsValue {
    fn wire2api(self) -> DynamicNamedValue {
        let self_ = self.dyn_into::<JsArray>().unwrap();
        assert_eq!(
            self_.length(),
            2,
            "Expected 2 elements, got {}",
            self_.length()
        );
        DynamicNamedValue {
            name: self_.get(0).wire2api(),
            value: self_.get(1).wire2api(),
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

impl Wire2Api<Vec<DynamicNamedValue>> for JsValue {
    fn wire2api(self) -> Vec<DynamicNamedValue> {
        self.dyn_into::<JsArray>()
            .unwrap()
            .iter()
            .map(Wire2Api::wire2api)
            .collect()
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

impl Wire2Api<MnemonicType> for JsValue {
    fn wire2api(self) -> MnemonicType {
        let self_ = self.unchecked_into::<JsArray>();
        match self_.get(0).unchecked_into_f64() as _ {
            0 => MnemonicType::Legacy,
            1 => MnemonicType::Labs(self_.get(1).wire2api()),
            _ => unreachable!(),
        }
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
impl Wire2Api<Option<DynamicValue>> for JsValue {
    fn wire2api(self) -> Option<DynamicValue> {
        (!self.is_undefined() && !self.is_null()).then(|| self.wire2api())
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
impl Wire2Api<u16> for JsValue {
    fn wire2api(self) -> u16 {
        self.unchecked_into_f64() as _
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
