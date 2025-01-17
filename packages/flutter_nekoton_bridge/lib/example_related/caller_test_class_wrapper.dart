import 'package:flutter/foundation.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/rust_to_dart_caller.dart';
import 'package:nekoton_bridge/nekoton_bridge.dart';
import 'package:reflectable/reflectable.dart';
import 'caller_test_class_wrapper.reflectable.dart';

/// Example of class that could have multiple instances and react to messages from [caller.callSomeFunc]
/// that calls callback that should be implemented on [caller] instance.
@reflector
class CallerTestClassWrapper extends RustToDartMirrorInterface {
  late CallerTestClass caller;

  CallerTestClassWrapper._();

  static Future<CallerTestClassWrapper> create(int value) async {
    final instance = CallerTestClassWrapper._();

    instance.caller = await CallerTestClass.newInstance(
      instanceHash: instance.instanceHash,
      value: value,
    );

    return instance;
  }

  Future<String> request(String requestOption) async {
    debugPrint('REQUEST CALL FROM: $instanceHash');
    return 'HANDLED REQUEST OF $instanceHash';
  }

  @override
  InstanceMirror initializeMirror() {
    initializeReflectable();
    return reflector.reflect(this);
  }
}

// TODO: Fucking reflectable doesn't want to generate code without main()
void main() {}
