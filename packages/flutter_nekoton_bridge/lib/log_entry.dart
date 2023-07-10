import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

extension LogEntryCreate on LogEntry {
  static LogEntry create({
    required LogLevel level,
    required String tag,
    required String msg,
  }) {
    return LogEntry(
      timeMillis: DateTime.now().millisecondsSinceEpoch,
      level: level,
      tag: tag,
      msg: msg,
    );
  }
}
