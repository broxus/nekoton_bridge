import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter_nekoton_bridge/storage.dart';
import 'package:nekoton_bridge/nekoton_bridge.dart';
export 'package:nekoton_bridge/nekoton_bridge.dart';
import 'package:reflectable/reflectable.dart';
import 'dynamic_value.dart';
import 'abstract_storage.dart';
export 'abstract_storage.dart';

/// Init logger
Future<void> setupLogger({
  LogLevel level = LogLevel.Warn,
  bool mobileLogger = true,
  required void Function(LogEntry logEntry) logHandler,
}) async {
  var lib = createLib();
  await lib.initLogger(level: level, mobileLogger: mobileLogger);
  lib.createLogStream().listen(logHandler);
}

Stream<DartCallStub>? _caller;

/// Init any Dart caller
Future<void> initDartCaller(InstanceMirror mirror) async {
  final caller = _caller ??= createLib().initCaller();

  caller.listen((event) {
    debugPrint(
        'Received event: fnName: ${event.fnName}, ${event.args} ${event.namedArgs}');
    final positionalArguments = event.args.map((e) => e.toDynamic()).toList();
    final namedArguments = event.namedArgs.fold(
        <Symbol, dynamic>{},
        (previousValue, element) => {
              ...previousValue,
              ...{
                Symbol(element.name): element.value?.toDynamic(),
              }
            });
    debugPrint('============ namedArguments: $namedArguments');
    mirror.invoke(event.fnName, positionalArguments,
        namedArguments.isNotEmpty ? namedArguments : null);
  });
}

/// Init Dart caller based on AbstractStorage class
Future<void> initAbstractStorage(AbstractStorage storage) async {
  final mirror = Storage(storage).init();
  await initDartCaller(mirror);
}

// TODO: all code below is only sandbox-related things

Future<void> simpleLog() async {
  var lib = createLib();
  lib.simpleLog(string: 'From dart: ${DateTime.now().toIso8601String()}');
}

Future<void> simplePanic() async {
  var lib = createLib();
  lib.simplePanic();
}

Future<int> simpleAdder(int a, int b) {
  var lib = createLib();
  return lib.simpleAdder(a: a, b: b);
}

int simpleAdderSync(int a, int b) {
  var lib = createLib();
  return lib.simpleAdderSync(a: a, b: b);
}

MyClass? _myClass;

Future<MyClass> createMyClass() async {
  final lib = createLib();
  _myClass ??= await lib.newStaticMethodMyClass(a: Random().nextInt(1000));
  return _myClass!;
}

Future<String> queryMyClass() async {
  final result = (await createMyClass()).myFormat();
  return result;
}

Future<void> simpleCallFunc0() async {
  createLib().simpleCallFunc0();
}

// Future<void> stubCallDart(DartCallStub stub) async {
//   createLib().stubCallDart(stub: stub);
// }
