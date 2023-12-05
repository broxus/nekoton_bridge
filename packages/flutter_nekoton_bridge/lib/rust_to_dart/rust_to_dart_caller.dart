import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reflectable/reflectable.dart';
import 'package:uuid/uuid.dart';

/// Class that is used to unify calls from rust to dart for any types and count of instances.
class RustToDartCaller {
  static RustToDartCaller instance = RustToDartCaller._();

  RustToDartCaller._();

  /// Key - is unique hash that could be used to identify any object instance.
  final instances = <String, RustToDartMirrorInterface>{};

  Object? invoke(
    String instanceHash,
    String memberName,
    List<dynamic> positionalArguments, [
    Map<Symbol, dynamic>? namedArguments,
  ]) {
    if (instances[instanceHash] == null) {
      throw Exception(
        "Can't call $memberName() function because no any object is registered for $instanceHash",
      );
    }
    return instances[instanceHash]!
        .init()
        .invoke(memberName, positionalArguments, namedArguments);
  }

  /// Register some class to be able to listen calls from rust
  void registerInstance(RustToDartMirrorInterface instance) {
    instances[instance.instanceHash] = instance;
  }

  /// Unregister some class from listening calls from rust.
  void unregisterInstance(RustToDartMirrorInterface instance) {
    instances.remove(instance.instanceHash);
  }

  /// Drop all registered instances, used only for tests.
  @visibleForTesting
  void reInitCaller() => instances.clear();
}

/// Used for mirror hash generating
const _uuid = Uuid();

/// Mirroring interface for classes that is used with [RustToDartCaller] to specify which instance
/// should invoke calls from rust by [instanceHash].
abstract class RustToDartMirrorInterface {
  /// [overrideInstanceHash] can be used in tests to set specified value.
  RustToDartMirrorInterface([String? overrideInstanceHash])
      : instanceHash = overrideInstanceHash ?? _uuid.v4() {
    RustToDartCaller.instance.registerInstance(this);
  }

  final String instanceHash;

  InstanceMirror? _mirror;

  /// This is a helper field, that allows objects that can invoke Rust-Dart-Rust
  /// calls to be disposed and avoid errors when rust object was disposed, but
  /// RustToDartCaller called actions on dart object that then calls rust methods
  /// on disposed objects.
  ///
  /// Typically, this mixin should be used on classes like TonWallet or
  /// TokenWallet, because they have subscriptions from rust.
  bool _disposed = false;

  /// If this flag is true, then all calls from dart to rust should be avoided.
  /// Typically, this method should be used in methods like updateData that makes
  /// calls to rust.
  bool get avoidCall => _disposed;

  InstanceMirror init() {
    return _mirror ??= initializeMirror();
  }

  /// Free memory from of class in caller
  @mustCallSuper
  void dispose() {
    _disposed = true;
    RustToDartCaller.instance.unregisterInstance(this);
  }

  /// Initialize mirror instance inside of instance of any class.
  /// Typical usage:
  /// ```
  /// InstanceMirror initializeMirror() {
  ///   initializeReflectable(); // auto-generated reflectable file
  ///   return reflector.reflect(this);
  /// }
  ///```dart
  InstanceMirror initializeMirror();
}
