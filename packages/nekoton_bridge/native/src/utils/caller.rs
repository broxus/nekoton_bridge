use flutter_rust_bridge::StreamSink;
use lazy_static::lazy_static;
use log::warn;
use parking_lot::RwLock;


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

lazy_static! {
    static ref SEND_TO_DART_CALLER_STREAM_SINK: RwLock<Option<StreamSink<DartCallStub>>> =
        RwLock::new(None);
}

pub fn set_stream_sink(stream_sink: StreamSink<DartCallStub>) {
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

pub fn call(stub: DartCallStub) {
    if let Some(sink) = &*SEND_TO_DART_CALLER_STREAM_SINK.read() {
        sink.add(stub);
    }
}
