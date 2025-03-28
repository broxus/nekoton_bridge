#![allow(dead_code, unused_must_use)]

use flutter_rust_bridge::frb;
use std::{
    collections::HashMap,
    sync::{
        mpsc::{self, Sender},
        Mutex,
    },
};
use thiserror::Error;

use lazy_static::lazy_static;
use parking_lot::RwLock;
use uuid::Uuid;

use crate::{frb_generated::StreamSink, utils::mega_struct};

#[derive(Clone, Debug, Error)]
pub enum ErrorCode {
    #[error("No error, ok")]
    Ok,
    #[error("Network error")]
    Network,
    #[error("Some error in logic")]
    Generic,
    #[error("Exception while invoking caller function that threw not ErrorCode")]
    InvokeException,
}

// / Dynamic value for transmitting between Dart and Rust. We can't use Box<dyn Any> because frb doesn't support it.
#[derive(Clone, Debug, Default)]
pub enum DynamicValue {
    U16(u16),

    U32(u32),
    I32(i32),

    U64(u64),
    I64(i64),

    F32(f32),
    F64(f64),

    String(String),

    VecU8(Vec<u8>),

    MegaStruct(String),

    Error(ErrorCode),

    #[default]
    None,
}

/// Hand-written converters for structures
impl DynamicValue {
    pub fn as_vec_u8(&self) -> anyhow::Result<Vec<u8>> {
        match self {
            DynamicValue::VecU8(data) => anyhow::Result::Ok(data.clone()),
            DynamicValue::Error(e) => anyhow::Result::Err(anyhow::Error::new(e.clone())),
            _ => panic!("Can't convert DynamicValue to String {:?}", &self),
        }
    }

    pub fn as_string(&self) -> anyhow::Result<String> {
        match self {
            DynamicValue::String(string) => anyhow::Result::Ok(string.clone()),
            DynamicValue::Error(e) => anyhow::Result::Err(anyhow::Error::new(e.clone())),
            _ => panic!("Can't convert DynamicValue to String {:?}", &self),
        }
    }

    pub fn as_string_option(&self) -> anyhow::Result<Option<String>> {
        match self {
            DynamicValue::String(string) => anyhow::Result::Ok(Option::Some(string.clone())),
            DynamicValue::None => anyhow::Result::Ok(Option::None),
            DynamicValue::Error(e) => anyhow::Result::Err(anyhow::Error::new(e.clone())),
            _ => panic!("Can't convert DynamicValue to String? {:?}", &self),
        }
    }

    pub fn as_void(&self) -> anyhow::Result<()> {
        match self {
            DynamicValue::None => anyhow::Result::Ok(()),
            DynamicValue::Error(e) => anyhow::Result::Err(anyhow::Error::new(e.clone())),
            _ => panic!("Can't convert DynamicValue to void {:?}", &self),
        }
    }

    pub fn as_mega_struct(&self) -> mega_struct::MegaStruct {
        match self {
            DynamicValue::MegaStruct(string) => mega_struct::MegaStruct::from_json(string),
            _ => panic!("Can't convert DynamicValue to MegaStruct {:?}", &self),
        }
    }

    pub fn as_error(&self) -> ErrorCode {
        match self {
            DynamicValue::Error(error_code) => error_code.clone(),
            _ => panic!("Can't convert DynamicValue to ErrorCode {:?}", &self),
        }
    }
}

/// Value of function call that should be placed in dart as named parameter.
/// EX: void funcCall({int? valueName}) -> DynamicNamedValue(name: "valueName", value: DynamicValue::U32(10))
#[derive(Default, Debug, Clone)]
pub struct DynamicNamedValue {
    pub name: String,
    pub value: Option<DynamicValue>,
}

/// Instruction for dart side that should call some method of some class instance.
#[derive(Default, Debug, Clone)]
pub struct DartCallStub {
    /// Hash is unique id for any instance of any class, used to identify where to call method
    pub instance_hash: String,
    /// name of function that should be called
    pub fn_name: String,
    /// List of positional arguments in function
    pub args: Vec<DynamicValue>,
    /// List of named arguments of function, empty if no such arguments
    pub named_args: Vec<DynamicNamedValue>,
}

/// Registered call of dart function that is tracked in rust side
#[derive(Default, Debug, Clone)]
pub struct DartCallStubRegistred {
    /// Unique identifier of call of some method
    pub id: Option<String>,
    /// Call itself
    pub stub: DartCallStub,
}

lazy_static! {
    static ref SEND_TO_DART_CALLER_STREAM_SINK: RwLock<Option<StreamSink<DartCallStubRegistred>>> =
        RwLock::new(None);
    static ref CALLBACK_MAP: Mutex<HashMap<String, Sender<DynamicValue>>> =
        Mutex::new(HashMap::new());
}

pub fn set_stream_sink(stream_sink: StreamSink<DartCallStubRegistred>) {
    let mut guard = SEND_TO_DART_CALLER_STREAM_SINK.write();

    *guard = Some(stream_sink);

    drop(guard);
}

/// Call Dart method
pub fn call(stub: DartCallStub, need_result: bool) -> DynamicValue {
    let (id, rx) = if need_result {
        let mut mutex = CALLBACK_MAP.lock();
        let map = mutex.as_mut().unwrap();
        let (tx, rx) = mpsc::channel::<DynamicValue>();
        let id = Uuid::new_v4().to_string();
        map.insert(id.clone(), tx);
        // We want to be shure that we unlock mutex before sending message to dart
        // and wait for response
        drop(mutex);
        (Some(id), Some(rx))
    } else {
        (None, None)
    };

    if let Some(sink) = &*SEND_TO_DART_CALLER_STREAM_SINK.read() {
        let stub_registred = DartCallStubRegistred { id, stub };
        sink.add(stub_registred);
        if rx.is_none() {
            return DynamicValue::None;
        }
        return rx.unwrap().recv().unwrap();
    }

    panic!("Can't call Dart function {:?}", stub);
}

/// Get result from dart side and return it to rust function that had initiated call
#[frb(sync)]
pub fn call_send_result(id: String, value: DynamicValue) {
    let mut map = CALLBACK_MAP.lock().unwrap();
    let sender = map.remove(&id).expect("Can't find caller Sender");
    sender.send(value).expect("Can't send to caller");
}
