import 'package:reflectable/reflectable.dart';

abstract class AbstractStorage {
  /// This method SHOUD call initializeReflectable() and return mirror:
  /// InstanceMirror? _mirror;
  /// InstanceMirror init() {
  ///   initializeReflectable();
  ///   return _mirror ??= reflector.reflect(this);
  /// }
  InstanceMirror init();

  // TODO: app should implement this functions because Rust part of this library
  // will call them
  void func0(String string, int i, double d);
}
