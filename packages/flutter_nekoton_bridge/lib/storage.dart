import 'package:flutter_nekoton_bridge/mega_struct.dart';
import 'package:reflectable/reflectable.dart';
import 'abstract_storage.dart';
import 'storage.reflectable.dart';

// Annotate with this class to enable reflection.
class Reflector extends Reflectable {
  const Reflector()
      : super(invokingCapability); // Request the capability to invoke methods.
}

const reflector = Reflector();

@reflector
class Storage extends AbstractStorage {
  final AbstractStorage storage;
  Storage(this.storage);

  InstanceMirror? _mirror;

  InstanceMirror init() {
    initializeReflectable();
    return _mirror ??= reflector.reflect(this);
  }

  @override
  String func0(
    String string,
    int i,
    double d, {
    required int arg0,
    required double arg1,
  }) {
    return storage.func0(string, i, d, arg0: arg0, arg1: arg1);
  }

  @override
  Future<String> func1(
    String string,
    int i,
    double d, {
    required int arg0,
    required double arg1,
  }) async {
    return storage.func1(string, i, d, arg0: arg0, arg1: arg1);
  }

  @override
  String func2(MegaStruct megaStruct) {
    return storage.func2(megaStruct);
  }
}

// TODO: Fucking reflectable doesn't want to generate code without main()
void main() {}
