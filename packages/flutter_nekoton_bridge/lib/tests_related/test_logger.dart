import 'dart:async';

import 'package:nekoton_bridge/nekoton_bridge.dart';

Future<void> testLoggerInfo(String string) async {
  await createLib().testLoggerInfo(string: string);
}

Future<void> testLoggerDebug(String string) async {
  await createLib().testLoggerDebug(string: string);
}

Future<void> testLoggerWarn(String string) async {
  await createLib().testLoggerWarn(string: string);
}

Future<void> testLoggerError(String string) async {
  await createLib().testLoggerError(string: string);
}

Future<void> testLoggerPanic(String string) async {
  await createLib().testLoggerPanic(string: string);
}
