import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeLedgerHandler implements LedgerConnectionHandler {
  _FakeLedgerHandler({this.signTransactionResponses = const <Object>[]});
  final List<Object> signTransactionResponses;
  int signTransactionCalls = 0;
  final List<int> wallets = <int>[];

  @override
  Future<Uint8List> getPublicKey(int accountId) async => Uint8List(32);

  @override
  Future<Uint8List> sign({
    required int accountId,
    required List<int> message,
    required SignatureContext signatureContext,
  }) async => Uint8List(64);

  @override
  Future<Uint8List> signTransaction({
    required int accountId,
    required int wallet,
    required List<int> message,
    required LedgerSignatureContext context,
    required SignatureContext signatureContext,
  }) async {
    wallets.add(wallet);
    signTransactionCalls += 1;

    final response = signTransactionResponses[signTransactionCalls - 1];
    if (response is Exception) throw response;
    if (response is Error) throw response;

    return response as Uint8List;
  }
}

void main() {
  const signatureContext = SignatureContext(
    globalId: 42,
    signatureType: SignatureType.signatureDomain,
  );
  const ledgerContext = LedgerSignatureContext(decimals: 9, asset: 'TTT');

  test('passes wallet value to handler without overrides', () async {
    final handler = _FakeLedgerHandler(
      signTransactionResponses: <Object>[Uint8List(64), Uint8List(64)],
    );
    final connection = LedgerConnection.test(handler);

    await connection.signTransaction(0, 9, signatureContext, <int>[
      1,
    ], jsonEncode(ledgerContext.toJson()));
    await connection.signTransaction(0, 9, signatureContext, <int>[
      2,
    ], jsonEncode(ledgerContext.toJson()));

    expect(handler.wallets, <int>[9, 9]);
  });
}
