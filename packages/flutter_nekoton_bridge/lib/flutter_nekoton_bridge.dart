import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter_nekoton_bridge/storage.dart';
import 'package:nekoton_bridge/nekoton_bridge.dart';
export 'package:nekoton_bridge/nekoton_bridge.dart';
import 'package:reflectable/reflectable.dart';
import 'dynamic_value.dart';
import 'log_entry.dart';
import 'abstract_storage.dart';
export 'abstract_storage.dart';

void Function(LogEntry logEntry)? _logHandler;
const String _tag = 'flutter_nekoton_bridge';

/// Init logger
Future<void> setupLogger({
  LogLevel level = LogLevel.Warn,
  bool mobileLogger = true,
  required void Function(LogEntry logEntry) logHandler,
}) async {
  _logHandler = logHandler;
  var lib = createLib();
  await lib.initLogger(level: level, mobileLogger: mobileLogger);
  lib.createLogStream().listen(logHandler);
}

Stream<DartCallStubRegistred>? _caller;

/// Init any Dart caller
Future<void> initDartCaller(InstanceMirror mirror) async {
  final lib = createLib();
  final caller = _caller ??= lib.initCaller();

  caller.listen((stubRegistred) {
    var id = stubRegistred.id;
    var stub = stubRegistred.stub;
    final positionalArguments = stub.args.map((e) => e.toDynamic()).toList();
    final namedArguments = stub.namedArgs.fold(
        <Symbol, dynamic>{},
        (previousValue, element) => {
              ...previousValue,
              ...{
                Symbol(element.name): element.value?.toDynamic(),
              }
            });
    final result = mirror.invoke(stub.fnName, positionalArguments,
        namedArguments.isNotEmpty ? namedArguments : null);
    debugPrint('Result: $result');
    if (result is String) {
      lib.callResult(id: id, value: DynamicValue.string(result));
      return;
    } else if (result is int) {
      lib.callResult(id: id, value: DynamicValue.i64(result));
      return;
    } else if (result is double) {
      lib.callResult(id: id, value: DynamicValue.f64(result));
      return;
    }
    //  else if (result == null) {
    //   lib.callResult(id: id, value: const DynamicValue.none());
    // }

    final logEntry = LogEntryCreate.create(
      level: LogLevel.Error,
      tag: _tag,
      msg: 'Unsupported return type: ${result.runtimeType}',
    );
    _logHandler?.call(logEntry);
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
