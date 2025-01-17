import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:reflectable/mirrors.dart';

import 'storage.reflectable.dart';

typedef StorageGet = Future<String?> Function(String key);

typedef StorageSet = Future<void> Function({
  required String key,
  required String value,
});

typedef StorageSetUnchecked = void Function({
  required String key,
  required String value,
});

typedef StorageRemove = Future<void> Function(String key);

typedef StorageRemoveUnchecked = void Function(String key);

@reflector
class Storage extends RustToDartMirrorInterface {
  late StorageDartWrapper storage;

  final StorageGet _get;
  final StorageSet _set;
  final StorageSetUnchecked _setUnchecked;
  final StorageRemove _remove;
  final StorageRemoveUnchecked _removeUnchecked;

  Storage._(
    this._get,
    this._set,
    this._setUnchecked,
    this._remove,
    this._removeUnchecked,
  );

  static Future<Storage> create({
    required StorageGet get,
    required StorageSet set,
    required StorageSetUnchecked setUnchecked,
    required StorageRemove remove,
    required StorageRemoveUnchecked removeUnchecked,
  }) async {
    final instance = Storage._(get, set, setUnchecked, remove, removeUnchecked);

    instance.storage = await StorageDartWrapper.newInstance(
      instanceHash: instance.instanceHash,
    );

    return instance;
  }

  /// Method to make get. It's called from rust
  Future<String?> get(String key) async {
    try {
      return _get(key);
    } catch (_) {
      throw ErrorCode.generic;
    }
  }

  /// Method to make set. It's called from rust
  Future<void> set({required String key, required String value}) async {
    try {
      return _set(key: key, value: value);
    } catch (_) {
      throw ErrorCode.generic;
    }
  }

  /// Method to make setUnchecked. It's called from rust
  void setUnchecked({required String key, required String value}) {
    try {
      _setUnchecked(key: key, value: value);
    } catch (_) {}
  }

  /// Method to make remove. It's called from rust
  Future<void> remove({required String key}) async {
    try {
      return _remove(key);
    } catch (_) {
      throw ErrorCode.generic;
    }
  }

  /// Method to make removeUnchecked. It's called from rust
  void removeUnchecked({required String key}) {
    try {
      _removeUnchecked(key);
    } catch (_) {}
  }

  @override
  void dispose() {
    storage.innerStorage.dispose();
    super.dispose();
  }

  @override
  InstanceMirror initializeMirror() {
    initializeReflectable(); // auto-generated reflectable file
    return reflector.reflect(this);
  }
}

void main() {}
