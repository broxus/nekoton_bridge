pub mod api;

use std::sync::Once;
use std::time::{Duration, SystemTime, UNIX_EPOCH};

use flutter_rust_bridge::StreamSink;
use lazy_static::lazy_static;
use log::{error, info, warn, Log, Metadata, Record};
use parking_lot::RwLock;
use simplelog::*;

pub enum LogLevel {
    Trace,
    Debug,
    Info,
    Warn,
    Error,
}

/// Log entry
pub struct LogEntry {
    pub time_millis: i64,
    pub level: LogLevel,
    pub tag: String,
    pub msg: String,
}

static INIT_LOGGER_ONCE: Once = Once::new();

pub fn init_logger(level: LogLevel, mobile_logger: bool) {
    // https://stackoverflow.com/questions/30177845/how-to-initialize-the-logger-for-integration-tests
    INIT_LOGGER_ONCE.call_once(|| {
        let level_filter = match level {
            LogLevel::Trace => LevelFilter::Trace,
            LogLevel::Debug => LevelFilter::Debug,
            LogLevel::Info => LevelFilter::Info,
            LogLevel::Warn => LevelFilter::Warn,
            LogLevel::Error => LevelFilter::Error,
        };

        assert!(
            level_filter <= log::STATIC_MAX_LEVEL,
            "Should respect log::STATIC_MAX_LEVEL={:?}, which is done in compile time. level{:?}",
            log::STATIC_MAX_LEVEL,
            level_filter
        );

        let mut logger: Vec<Box<dyn SharedLogger>> = vec![
            Box::new(SendToDartLogger::new(level_filter)),
            // #[cfg(not(any(target_os = "android", target_os = "ios")))]
            TermLogger::new(
                level_filter,
                ConfigBuilder::new()
                    .set_time_format_rfc3339()
                    // .set_time_format_str("%H:%M:%S%.3f")
                    .build(),
                TerminalMode::Mixed,
                ColorChoice::Auto,
            ),
        ];

        if mobile_logger {
            logger.push(Box::new(MyMobileLogger::new(level_filter)));
        }

        CombinedLogger::init(logger).unwrap_or_else(|e| {
            error!("init_logger (inside 'once') has error: {:?}", e);
        });
        info!("init_logger (inside 'once') finished");

        warn!(
            "init_logger finished, chosen level={:?} (deliberately output by warn level)",
            level_filter
        );
    });

    log_panics::Config::new()
        .backtrace_mode(log_panics::BacktraceMode::Resolved)
        .install_panic_hook();
}

lazy_static! {
    static ref SEND_TO_DART_LOGGER_STREAM_SINK: RwLock<Option<StreamSink<LogEntry>>> =
        RwLock::new(None);
}

pub struct SendToDartLogger {
    level: LevelFilter,
}

impl SendToDartLogger {
    pub fn set_stream_sink(stream_sink: StreamSink<LogEntry>) {
        let mut guard = SEND_TO_DART_LOGGER_STREAM_SINK.write();
        let overriding = guard.is_some();

        *guard = Some(stream_sink);

        drop(guard);

        if overriding {
            warn!(
                "SendToDartLogger::set_stream_sink but already exist a sink, thus overriding. \
                (This may or may not be a problem. It will happen normally if hot-reload Flutter app.)"
            );
        }
    }

    pub fn new(level: LevelFilter) -> Self {
        SendToDartLogger { level }
    }

    fn record_to_entry(record: &Record) -> LogEntry {
        let time_millis = SystemTime::now()
            .duration_since(UNIX_EPOCH)
            .unwrap_or_else(|_| Duration::from_secs(0))
            .as_millis() as i64;

        let level = match record.level() {
            Level::Trace => LogLevel::Trace,
            Level::Debug => LogLevel::Debug,
            Level::Info => LogLevel::Info,
            Level::Warn => LogLevel::Warn,
            Level::Error => LogLevel::Error,
        };

        let tag = record.file().unwrap_or_else(|| record.target()).to_owned();

        let msg = format!("{}", record.args());

        LogEntry {
            time_millis,
            level,
            tag,
            msg,
        }
    }
}

impl Log for SendToDartLogger {
    fn enabled(&self, _metadata: &Metadata) -> bool {
        true
    }

    fn log(&self, record: &Record) {
        let entry = Self::record_to_entry(record);
        if let Some(sink) = &*SEND_TO_DART_LOGGER_STREAM_SINK.read() {
            sink.add(entry);
        }
    }

    fn flush(&self) {
        // no need
    }
}

impl SharedLogger for SendToDartLogger {
    fn level(&self) -> LevelFilter {
        self.level
    }

    fn config(&self) -> Option<&Config> {
        None
    }

    fn as_log(self: Box<Self>) -> Box<dyn Log> {
        Box::new(*self)
    }
}

pub struct MyMobileLogger {
    level: LevelFilter,
    #[cfg(target_os = "ios")]
    ios_logger: oslog::OsLogger,
}

impl MyMobileLogger {
    pub fn new(level: LevelFilter) -> Self {
        MyMobileLogger {
            level,
            #[cfg(target_os = "ios")]
            ios_logger: oslog::OsLogger::new("vision_utils_rs"),
        }
    }
}

impl Log for MyMobileLogger {
    fn enabled(&self, _metadata: &Metadata) -> bool {
        true
    }

    #[allow(unused_variables)]
    fn log(&self, record: &Record) {
        #[cfg(any(target_os = "android", target_os = "ios"))]
            let modified_record = {
            let override_level = Level::Info;

            record.to_builder().level(override_level).build()
        };

        #[cfg(target_os = "android")]
            android_logger::log(&modified_record);

        #[cfg(target_os = "ios")]
            self.ios_logger.log(&modified_record);
    }

    fn flush(&self) {
        // no need
    }
}

impl SharedLogger for MyMobileLogger {
    fn level(&self) -> LevelFilter {
        self.level
    }

    fn config(&self) -> Option<&Config> {
        None
    }

    fn as_log(self: Box<Self>) -> Box<dyn Log> {
        Box::new(*self)
    }
}