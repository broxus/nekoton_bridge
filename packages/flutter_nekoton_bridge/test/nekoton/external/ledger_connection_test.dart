import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeLedgerHandler implements LedgerConnectionHandler {
  _FakeLedgerHandler({
    this.getPublicKeyResponses = const <Object>[],
    this.signResponses = const <Object>[],
    this.signTransactionResponses = const <Object>[],
  });
  final List<Object> getPublicKeyResponses;
  final List<Object> signResponses;
  final List<Object> signTransactionResponses;
  int getPublicKeyCalls = 0;
  int signCalls = 0;
  int signTransactionCalls = 0;
  final List<int> wallets = <int>[];

  @override
  Future<Uint8List> getPublicKey(int accountId) async {
    getPublicKeyCalls += 1;
    final response = getPublicKeyResponses[getPublicKeyCalls - 1];
    if (response is Exception) throw response;
    if (response is Error) throw response;

    return response as Uint8List;
  }

  @override
  Future<Uint8List> sign({
    required int accountId,
    required List<int> message,
    required SignatureContext signatureContext,
  }) async {
    signCalls += 1;
    final response = signResponses[signCalls - 1];
    if (response is Exception) throw response;
    if (response is Error) throw response;

    return response as Uint8List;
  }

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

  test('getPublicKey returns bytes from handler', () async {
    // Arrange
    final expected = Uint8List.fromList(List<int>.filled(32, 1));
    final handler = _FakeLedgerHandler(
      getPublicKeyResponses: <Object>[expected],
    );
    final connection = LedgerConnection.test(handler);

    // Act
    final result = await connection.getPublicKey(0);

    // Assert
    expect(result, expected);
  });

  test('getPublicKey maps cancellation to ErrorCode.cancelled', () async {
    // Arrange
    final handler = _FakeLedgerHandler(
      getPublicKeyResponses: <Object>[
        const LedgerOperationCancelledException(),
      ],
    );
    final connection = LedgerConnection.test(handler);

    // Act
    final call = connection.getPublicKey(0);

    // Assert
    await expectLater(call, throwsA(equals(ErrorCode.cancelled)));
  });

  test('getPublicKey maps unexpected error to ErrorCode.generic', () async {
    // Arrange
    final handler = _FakeLedgerHandler(
      getPublicKeyResponses: <Object>[const LedgerException('boom')],
    );
    final connection = LedgerConnection.test(handler);

    // Act
    final call = connection.getPublicKey(0);

    // Assert
    await expectLater(call, throwsA(equals(ErrorCode.generic)));
  });

  test('sign returns bytes from handler', () async {
    // Arrange
    final expected = Uint8List.fromList(List<int>.filled(64, 2));
    final handler = _FakeLedgerHandler(signResponses: <Object>[expected]);
    final connection = LedgerConnection.test(handler);

    // Act
    final result = await connection.sign(1, signatureContext, <int>[1, 2, 3]);

    // Assert
    expect(result, expected);
  });

  test('sign maps cancellation to ErrorCode.cancelled', () async {
    // Arrange
    final handler = _FakeLedgerHandler(
      signResponses: <Object>[const LedgerOperationCancelledException()],
    );
    final connection = LedgerConnection.test(handler);

    // Act
    final call = connection.sign(1, signatureContext, <int>[1]);

    // Assert
    await expectLater(call, throwsA(equals(ErrorCode.cancelled)));
  });

  test('sign maps unexpected error to ErrorCode.generic', () async {
    // Arrange
    final handler = _FakeLedgerHandler(
      signResponses: <Object>[const LedgerException('boom')],
    );
    final connection = LedgerConnection.test(handler);

    // Act
    final call = connection.sign(1, signatureContext, <int>[1]);

    // Assert
    await expectLater(call, throwsA(equals(ErrorCode.generic)));
  });

  test('passes wallet value to handler without overrides', () async {
    // Arrange
    final handler = _FakeLedgerHandler(
      signTransactionResponses: <Object>[Uint8List(64), Uint8List(64)],
    );
    final connection = LedgerConnection.test(handler);

    // Act
    await connection.signTransaction(0, 9, signatureContext, <int>[
      1,
    ], jsonEncode(ledgerContext.toJson()));
    await connection.signTransaction(0, 9, signatureContext, <int>[
      2,
    ], jsonEncode(ledgerContext.toJson()));

    // Assert
    expect(handler.wallets, <int>[9, 9]);
  });

  test('signTransaction maps cancellation to ErrorCode.cancelled', () async {
    // Arrange
    final handler = _FakeLedgerHandler(
      signTransactionResponses: <Object>[
        const LedgerOperationCancelledException(),
      ],
    );
    final connection = LedgerConnection.test(handler);

    // Act
    final call = connection.signTransaction(0, 9, signatureContext, <int>[
      1,
    ], jsonEncode(ledgerContext.toJson()));

    // Assert
    await expectLater(call, throwsA(equals(ErrorCode.cancelled)));
  });

  test('signTransaction maps unexpected error to ErrorCode.generic', () async {
    // Arrange
    final handler = _FakeLedgerHandler(
      signTransactionResponses: <Object>[const LedgerException('boom')],
    );
    final connection = LedgerConnection.test(handler);

    // Act
    final call = connection.signTransaction(0, 9, signatureContext, <int>[
      1,
    ], jsonEncode(ledgerContext.toJson()));

    // Assert
    await expectLater(call, throwsA(equals(ErrorCode.generic)));
  });
}
