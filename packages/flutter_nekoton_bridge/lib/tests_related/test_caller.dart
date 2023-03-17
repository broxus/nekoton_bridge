import 'dart:async';

import 'package:nekoton_bridge/nekoton_bridge.dart';

Future<DynamicValue> testCallerCallTest0Async(
    String string, bool needResult) async {
  return createLib()
      .testCallerCallTest0Async(string: string, needResult: needResult);
}

Future<DynamicValue> testCallerCallTest0Sync(
    String string, bool needResult) async {
  return createLib()
      .testCallerCallTest0Sync(string: string, needResult: needResult);
}

Future<DynamicValue> testCallerCallTest1Async(
    String string, bool needResult) async {
  return createLib()
      .testCallerCallTest1Async(string: string, needResult: needResult);
}
