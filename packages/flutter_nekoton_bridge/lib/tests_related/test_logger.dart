import 'dart:async';

import 'package:nekoton_bridge/nekoton_bridge.dart';

Future<void> testLoggerInfo(String string) async {
  createLib().testLoggerInfo(string: string);
}

Future<void> testLoggerDebug(String string) async {
  createLib().testLoggerDebug(string: string);
}

Future<void> testLoggerWarn(String string) async {
  createLib().testLoggerWarn(string: string);
}

Future<void> testLoggerError(String string) async {
  createLib().testLoggerError(string: string);
}

Future<void> testLoggerPanic(String string) async {
  createLib().testLoggerPanic(string: string);
}
