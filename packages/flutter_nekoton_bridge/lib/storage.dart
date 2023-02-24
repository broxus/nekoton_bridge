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
  void func0(String string, int i, double d) {
    storage.func0(string, i, d);
  }
}

// TODO: Fucking reflectable doesn't want to generate code withiut main()
void main() {}
