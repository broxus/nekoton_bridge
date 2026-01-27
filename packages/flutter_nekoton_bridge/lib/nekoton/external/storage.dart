import 'package:flutter/foundation.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

typedef StorageGet = Future<String?> Function(String key);

typedef StorageSet =
    Future<void> Function({required String key, required String value});

typedef StorageSetUnchecked =
    void Function({required String key, required String value});

typedef StorageRemove = Future<void> Function(String key);

typedef StorageRemoveUnchecked = void Function(String key);

class Storage {
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

  @visibleForTesting
  Storage.test({
    required StorageGet get,
    required StorageSet set,
    required StorageSetUnchecked setUnchecked,
    required StorageRemove remove,
    required StorageRemoveUnchecked removeUnchecked,
    required this.storage,
  }) : _get = get,
       _set = set,
       _setUnchecked = setUnchecked,
       _remove = remove,
       _removeUnchecked = removeUnchecked;

  static Storage create({
    required StorageGet get,
    required StorageSet set,
    required StorageSetUnchecked setUnchecked,
    required StorageRemove remove,
    required StorageRemoveUnchecked removeUnchecked,
  }) {
    final instance = Storage._(get, set, setUnchecked, remove, removeUnchecked);

    instance.storage = StorageDartWrapper(
      onGet: instance.get,
      onSet: instance.set,
      onSetUnchecked: instance.setUnchecked,
      onRemove: instance.remove,
      onRemoveUnchecked: instance.removeUnchecked,
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
  Future<void> set(String key, String value) async {
    try {
      return _set(key: key, value: value);
    } catch (_) {
      throw ErrorCode.generic;
    }
  }

  /// Method to make setUnchecked. It's called from rust
  void setUnchecked(String key, String value) {
    try {
      _setUnchecked(key: key, value: value);
    } catch (_) {}
  }

  /// Method to make remove. It's called from rust
  Future<void> remove(String key) async {
    try {
      return _remove(key);
    } catch (_) {
      throw ErrorCode.generic;
    }
  }

  /// Method to make removeUnchecked. It's called from rust
  void removeUnchecked(String key) {
    try {
      _removeUnchecked(key);
    } catch (_) {}
  }

  void dispose() {
    storage.innerStorage.dispose();
  }
}
