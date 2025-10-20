import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart' hide Symbol;

// ignore: unused_element
void Function(LogEntry logEntry)? _logHandler;

/// Init logger
Future<void> setupLogger({
  LogLevel level = LogLevel.warn,
  bool mobileLogger = true,
  required void Function(LogEntry logEntry) logHandler,
}) async {
  _logHandler = logHandler;
  await initLogger(level: level, mobileLogger: mobileLogger);
  createLogStream().listen(logHandler);
}

/// Update clock offset
Future<void> updateClockOffset(Duration offset) {
  return setClockOffset(offsetMs: offset.inMilliseconds);
}
