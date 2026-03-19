import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

class MockTokenWalletDartWrapper extends Mock
    implements TokenWalletDartWrapper {}

void main() {
  group('TokenWallet', () {
    test('estimateMinAttachedAmount parses returned value', () async {
      // Arrange
      final transport = TestTransport();
      final wallet = MockTokenWalletDartWrapper();
      final tokenWallet = TokenWallet.test(
        transport: transport,
        rootTokenContract: const Address(address: '0:root'),
        wallet: wallet,
      );

      when(
        () => wallet.estimateMinAttachedAmount(
          destination: '0:destination',
          amount: '10',
          payload: null,
          notifyReceiver: false,
        ),
      ).thenAnswer((_) async => '123456');

      // Act
      final result = await tokenWallet.estimateMinAttachedAmount(
        destination: const Address(address: '0:destination'),
        amount: BigInt.from(10),
      );

      // Assert
      expect(result, BigInt.from(123456));
      verify(
        () => wallet.estimateMinAttachedAmount(
          destination: '0:destination',
          amount: '10',
          payload: null,
          notifyReceiver: false,
        ),
      ).called(1);
    });

    test('getContractState parses returned JSON', () async {
      // Arrange
      final transport = TestTransport();
      final wallet = MockTokenWalletDartWrapper();
      final tokenWallet = TokenWallet.test(
        transport: transport,
        rootTokenContract: const Address(address: '0:root'),
        wallet: wallet,
      );
      final contractState = ContractState(
        balance: BigInt.from(1),
        genTimings: const GenTimings(genLt: '2', genUtime: 3),
        lastTransactionId: const LastTransactionId(isExact: true, lt: '4'),
        isDeployed: true,
        codeHash: 'hash',
      );

      when(
        () => wallet.contractState(),
      ).thenAnswer((_) async => jsonEncode(contractState.toJson()));

      // Act
      final result = await tokenWallet.getContractState();

      // Assert
      expect(result, contractState);
      verify(() => wallet.contractState()).called(1);
    });

    test('refresh returns early when transport disposed', () async {
      // Arrange
      final transport = TestTransport(disposedFlag: true);
      final wallet = MockTokenWalletDartWrapper();
      final tokenWallet = TokenWallet.test(
        transport: transport,
        rootTokenContract: const Address(address: '0:root'),
        wallet: wallet,
      );

      // Act
      await tokenWallet.refresh();

      // Assert
      verifyNever(() => wallet.refresh());
    });

    test('onBalanceChanged emits value and skips update before init', () async {
      // Arrange
      final transport = TestTransport();
      final wallet = MockTokenWalletDartWrapper();
      final tokenWallet = TokenWallet.test(
        transport: transport,
        rootTokenContract: const Address(address: '0:root'),
        wallet: wallet,
        isInitialized: false,
      );

      final expectation = expectLater(
        tokenWallet.onBalanceChangedStream,
        emits(BigInt.parse('123')),
      );

      // Act
      tokenWallet.onBalanceChanged('123');

      // Assert
      await expectation;
      verifyNever(() => wallet.contractState());
      verifyNever(() => wallet.balance());
    });
  });
}
