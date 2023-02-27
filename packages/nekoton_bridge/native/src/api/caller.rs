use flutter_rust_bridge::StreamSink;
use lazy_static::lazy_static;
use log::warn;
use parking_lot::RwLock;

use crate::api::DartCallStub;

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
