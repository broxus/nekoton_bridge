import 'dart:math';

import 'package:flutter_nekoton_bridge/example_related/abstract_caller.dart';
import 'package:flutter_nekoton_bridge/example_related/caller_test_class_wrapper.dart';
import 'package:flutter_nekoton_bridge/example_related/caller_wrapper.dart';
import 'package:nekoton_bridge/nekoton_bridge.dart';

export 'abstract_caller.dart';
export 'caller_test_class_wrapper.dart' hide main;
export 'caller_wrapper.dart' hide main;
export 'mega_struct.dart';

/// Create storage wrapper to see calls.
/// Must be called after [initRustToDartCaller]
CallerWrapper initCallerWrapper(AbstractCaller storage) {
  return CallerWrapper(storage);
}

/// Init test caller wrapper
/// Must be called after [initRustToDartCaller]
Future<CallerTestClassWrapper> initCallerTestClassWrapper(int value) async {
  return CallerTestClassWrapper.create(value);
}

MyClass? _myClass;

Future<MyClass> createMyClass() async {
  _myClass ??= await MyClass.newInstance(a: Random().nextInt(1000));
  return _myClass!;
}

Future<String> queryMyClass() async {
  final result = (await createMyClass()).myFormat();
  return result;
}
