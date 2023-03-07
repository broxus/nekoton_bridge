use std::{
    collections::HashMap,
    sync::{
        mpsc::{self, Sender},
        Mutex,
    },
};

use flutter_rust_bridge::StreamSink;
use lazy_static::lazy_static;
use log::{debug, warn};
use parking_lot::RwLock;
use uuid::Uuid;

use crate::utils::mega_struct;

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

impl DynamicValue {
    pub fn as_string(&self) -> String {
        match self {
            DynamicValue::String(string) => string.clone(),
            _ => panic!("Can't convert DynamicValue to String {:?}", &self),
        }
    }

    pub fn as_mega_struct(&self) -> mega_struct::MegaStruct {
        match self {
            DynamicValue::MegaStruct(string) => mega_struct::MegaStruct::from_json(string),
            _ => panic!("Can't convert DynamicValue to MegaStruct {:?}", &self),
        }
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

lazy_static! {
    static ref SEND_TO_DART_CALLER_STREAM_SINK: RwLock<Option<StreamSink<DartCallStubRegistred>>> =
        RwLock::new(None);
    static ref CALLBACK_MAP: Mutex<HashMap<String, Sender<DynamicValue>>> =
        Mutex::new(HashMap::new());
}

pub fn set_stream_sink(stream_sink: StreamSink<DartCallStubRegistred>) {
    let mut guard = SEND_TO_DART_CALLER_STREAM_SINK.write();
    let overriding = guard.is_some();

    *guard = Some(stream_sink);

    drop(guard);

    if overriding {
        warn!(
                "SendToDartCaller::set_stream_sink but already exist a sink, thus overriding. \
                (This may or may not be a problem. It will happen normally if hot-reload Flutter app.)"
            );
    }
}

/// Call Dart method
pub fn call(stub: DartCallStub, need_result: bool) -> DynamicValue {
    if let Some(sink) = &*SEND_TO_DART_CALLER_STREAM_SINK.read() {
        let (id, rx) = if need_result {
            let (tx, rx) = mpsc::channel::<DynamicValue>();
            let id = Uuid::new_v4().to_string();
            CALLBACK_MAP.lock().unwrap().insert(id.clone(), tx);

            (Some(id), Some(rx))
        } else {
            (None, None)
        };

        let stub_registred = DartCallStubRegistred { id, stub };
        sink.add(stub_registred);
        if rx.is_none() {
            return DynamicValue::None;
        }
        return rx.unwrap().recv().unwrap();
    }
    panic!("Can't call Dart function {:?}", stub);
}

pub fn call_send_result(id: String, value: DynamicValue) {
    let mut map = CALLBACK_MAP.lock().unwrap();
    let sender = map.remove(&id).expect("Can't find caller Sender");
    sender.send(value).expect("Can't send to caller");
    debug!("Map length: {}", map.len());
}
