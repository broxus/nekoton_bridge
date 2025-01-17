import 'package:nekoton_bridge/nekoton_bridge.dart';

extension LogEntryCreate on LogEntry {
  static LogEntry create({
    required LogLevel level,
    required String tag,
    required String msg,
    String? stack,
  }) {
    return LogEntry(
      timeMillis: DateTime.now().millisecondsSinceEpoch,
      level: level,
      tag: tag,
      msg: msg,
      stack: stack,
    );
  }
}
