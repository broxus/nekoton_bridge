import 'package:flutter/foundation.dart';
import 'package:flutter_nekoton_bridge/example_related/caller_wrapper.reflectable.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:reflectable/reflectable.dart';

@reflector
class CallerWrapper extends RustToDartMirrorInterface {

  /// Override
  CallerWrapper(this.caller) : super('0');
  final AbstractCaller caller;

  // TODO: remove all non-integration test related things FROM here
  String func0(
    String string,
    int i,
    double d, {
    required int arg0,
    required double arg1,
  }) {
    debugPrint('CallerWrapper: func0($instanceHash)');
    return caller.func0(string, i, d, arg0: arg0, arg1: arg1);
  }

  Future<String> func1(
    String string,
    int i,
    double d, {
    required int arg0,
    required double arg1,
  }) async {
    debugPrint('CallerWrapper: func1($instanceHash)');
    return caller.func1(string, i, d, arg0: arg0, arg1: arg1);
  }

  DynamicValue func2(MegaStruct megaStruct) {
    debugPrint('CallerWrapper: func2($instanceHash)');
    return caller.func2(megaStruct);
  }
  // TODO: remove all non-integration test related things TO here

  // These methods SHOULD NOT be removed
  // or altered because it used in integration tests

  Future<DynamicValue> test0(String string) {
    return caller.test0(string);
  }

  Future<DynamicValue> test1(String string) {
    return caller.test1(string);
  }

  @override
  InstanceMirror initializeMirror() {
    initializeReflectable();
    return reflector.reflect(this);
  }
}

// TODO: Fucking reflectable doesn't want to generate code without main()
void main() {}
