import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart'
    as flutter_nekoton_bridge;
import 'package:reflectable/reflectable.dart';
import 'storage.reflectable.dart';

// Annotate with this class to enable reflection.
class Reflector extends Reflectable {
  const Reflector()
      : super(invokingCapability); // Request the capability to invoke methods.
}

const reflector = Reflector();

@reflector
class Storage extends flutter_nekoton_bridge.AbstractStorage {
  InstanceMirror? _mirror;
  @override
  InstanceMirror init() {
    initializeReflectable();
    return _mirror ??= reflector.reflect(this);
  }

  @override
  void func0(String string, int i, double d) {
    debugPrint('Call: func0: $i $d');
  }
}

// TODO: Fucking reflectable doesn't want to generate code withiut main()
void main() {}
