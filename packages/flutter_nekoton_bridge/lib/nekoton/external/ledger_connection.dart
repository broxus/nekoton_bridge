import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:reflectable/mirrors.dart';
import 'ledger_connection.reflectable.dart';

abstract interface class LedgerConnectionHandler {
  Future<Uint8List> getPublicKey(int accountId);
  Future<Uint8List> sign({
    required int accountId,
    required List<int> message,
    int? signatureId,
  });
  Future<Uint8List> signTransaction({
    required int accountId,
    required int wallet,
    required List<int> message,
    required LedgerSignatureContext context,
    int? signatureId,
  });
}

@reflector
class LedgerConnection extends RustToDartMirrorInterface {
  late LedgerConnectionDartWrapper connection;

  final LedgerConnectionHandler _handler;

  LedgerConnection._(
    this._handler,
  );

  static LedgerConnection create(LedgerConnectionHandler handler) {
    final instance = LedgerConnection._(handler);

    instance.connection = LedgerConnectionDartWrapper(
      instanceHash: instance.instanceHash,
    );

    return instance;
  }

  /// Method to get public key. It's called from rust
  Future<Uint8List> getPublicKey(int accountId) async {
    try {
      return await _handler.getPublicKey(accountId);
    } on LedgerOperationCancelledException {
      throw ErrorCode.cancelled;
    } catch (error) {
      throw ErrorCode.generic;
    }
  }

  /// Method to sign data. It's called from rust
  Future<Uint8List> sign(
    int accountId,
    int? signatureId,
    List<int> message,
  ) async {
    try {
      return await _handler.sign(
        accountId: accountId,
        message: message,
        signatureId: signatureId,
      );
    } on LedgerOperationCancelledException {
      throw ErrorCode.cancelled;
    } catch (error) {
      throw ErrorCode.generic;
    }
  }

  /// Method to sign a transaction. It's called from rust
  Future<Uint8List> signTransaction(
    int accountId,
    int wallet,
    int? signatureId,
    List<int> message,
    String context,
  ) async {
    try {
      return await _handler.signTransaction(
        accountId: accountId,
        wallet: wallet,
        message: message,
        context: LedgerSignatureContext.fromJson(jsonDecode(context)),
        signatureId: signatureId,
      );
    } on LedgerOperationCancelledException {
      throw ErrorCode.cancelled;
    } catch (error) {
      throw ErrorCode.generic;
    }
  }

  @override
  void dispose() {
    connection.innerConnection.dispose();
    super.dispose();
  }

  @override
  InstanceMirror initializeMirror() {
    initializeReflectable(); // auto-generated reflectable file
    return reflector.reflect(this);
  }
}

void main() {}
