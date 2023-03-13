import 'package:flutter/foundation.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:reflectable/reflectable.dart';
import '../flutter_nekoton_bridge.dart';
import 'caller_wrapper.reflectable.dart';

@reflector
class CallerWrapper extends RustToDartMirrorInterface {
  final AbstractCaller storage;

  /// Override
  CallerWrapper(this.storage) : super('0');

  String func0(
    String string,
    int i,
    double d, {
    required int arg0,
    required double arg1,
  }) {
    debugPrint('CallerWrapper: func0($instanceHash)');
    return storage.func0(string, i, d, arg0: arg0, arg1: arg1);
  }

  Future<String> func1(
    String string,
    int i,
    double d, {
    required int arg0,
    required double arg1,
  }) async {
    debugPrint('CallerWrapper: func1($instanceHash)');
    return storage.func1(string, i, d, arg0: arg0, arg1: arg1);
  }

  DynamicValue func2(MegaStruct megaStruct) {
    debugPrint('CallerWrapper: func2($instanceHash)');
    return storage.func2(megaStruct);
  }

  @override
  InstanceMirror initializeMirror() {
    initializeReflectable();
    return reflector.reflect(this);
  }
}

// TODO: Fucking reflectable doesn't want to generate code without main()
void main() {}
