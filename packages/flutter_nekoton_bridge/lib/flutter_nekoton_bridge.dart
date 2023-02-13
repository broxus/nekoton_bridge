import 'dart:async';
import 'dart:math';

import 'package:nekoton_bridge/nekoton_bridge.dart';

export 'package:nekoton_bridge/nekoton_bridge.dart';

Future<void> setupLogger({
  level = LogLevel.Warn,
  mobileLogger = true,
  required void Function(LogEntry logEntry) logHandler,
}) async {
  var lib = createLib();
  await lib.initLogger(level: level, mobileLogger: mobileLogger);
  lib.createLogStream().listen(logHandler);
}

Future<void> simpleLog() async {
  var lib = createLib();
  lib.simpleLog(string: "From dart: ${DateTime.now().toIso8601String()}");
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
