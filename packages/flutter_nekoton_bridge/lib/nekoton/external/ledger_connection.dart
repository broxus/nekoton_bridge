import 'dart:async';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:reflectable/mirrors.dart';
import 'ledger_connection.reflectable.dart';

typedef LedgerConnectionGetPublicKey = Future<String> Function(int accountId);

typedef LedgerConnectionSign = Future<String> Function({
  required int account,
  required List<int> message,
// TODO: replace to LedgerSignatureContextWrapper? context,
  Object? context,
});

@reflector
class LedgerConnection extends RustToDartMirrorInterface {
  late LedgerConnectionImpl connection;

  final LedgerConnectionGetPublicKey _getPublicKey;

  // ignore: unused_field
  final LedgerConnectionSign _connectionSign;

  LedgerConnection._(
    this._getPublicKey,
    this._connectionSign,
  );

  static Future<LedgerConnection> create({
    required LedgerConnectionGetPublicKey getPublicKey,
    required LedgerConnectionSign connectionSign,
  }) async {
    final instance = LedgerConnection._(getPublicKey, connectionSign);

    final lib = createLib();
    instance.connection = await lib.newStaticMethodLedgerConnectionImpl(
      instanceHash: instance.instanceHash,
    );

    return instance;
  }

  /// Method to get public key. It's called from rust
  Future<String> getPublicKey(int accountId) async {
    try {
      return await _getPublicKey(accountId);
    } catch (error) {
      throw ErrorCode.Generic;
    }
  }

  @override
  InstanceMirror initializeMirror() {
    initializeReflectable(); // auto-generated reflectable file
    return reflector.reflect(this);
  }
}

void main() {}
