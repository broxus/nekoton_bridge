import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

class MockJettonWalletDartWrapper extends Mock
    implements JettonWalletDartWrapper {}

void main() {
  group('JettonWallet', () {
    test(
      'prepareTransfer returns internal message and refreshes cached data',
      () async {
        // Arrange
        final transport = TestTransport();
        final wallet = MockJettonWalletDartWrapper();
        final jettonWallet = JettonWallet.test(
          transport: transport,
          rootTokenContract: const Address(address: '0:root'),
          wallet: wallet,
        );
        final message = InternalMessage(
          destination: const Address(address: '0:destination'),
          amount: BigInt.from(42),
          bounce: true,
          body: 'body',
        );
        const messageJson = {
          'source': null,
          'destination': '0:destination',
          'amount': '42',
          'bounce': true,
          'body': 'body',
        };
        final contractState = ContractState(
          balance: BigInt.from(10),
          genTimings: const GenTimings(genLt: '1', genUtime: 2),
          lastTransactionId: const LastTransactionId(isExact: true, lt: '3'),
          isDeployed: true,
          codeHash: 'hash',
        );

        when(
          () => wallet.prepareTransfer(
            amount: '42',
            destination: '0:destination',
            remainingGasTo: '0:gas',
            customPayload: 'custom',
            callbackValue: '7',
            callbackPayload: 'callback',
            attachedAmount: '9',
          ),
        ).thenAnswer((_) async => jsonEncode(messageJson));
        when(
          () => wallet.contractState(),
        ).thenAnswer((_) async => jsonEncode(contractState.toJson()));
        when(() => wallet.balance()).thenAnswer((_) async => '500');

        // Act
        final result = await jettonWallet.prepareTransfer(
          amount: BigInt.from(42),
          destination: const Address(address: '0:destination'),
          remainingGasTo: const Address(address: '0:gas'),
          callbackValue: BigInt.from(7),
          customPayload: 'custom',
          callbackPayload: 'callback',
          attachedAmount: BigInt.from(9),
        );

        // Assert
        expect(result, message);
        expect(jettonWallet.contractState, contractState);
        expect(jettonWallet.balance, BigInt.from(500));
        verify(() => wallet.contractState()).called(1);
        verify(() => wallet.balance()).called(1);
      },
    );

    test('refresh returns early when transport disposed', () async {
      // Arrange
      final transport = TestTransport(disposedFlag: true);
      final wallet = MockJettonWalletDartWrapper();
      final jettonWallet = JettonWallet.test(
        transport: transport,
        rootTokenContract: const Address(address: '0:root'),
        wallet: wallet,
      );

      // Act
      await jettonWallet.refresh();

      // Assert
      verifyNever(() => wallet.refresh());
    });

    test('onBalanceChanged emits value and skips update before init', () async {
      // Arrange
      final transport = TestTransport();
      final wallet = MockJettonWalletDartWrapper();
      final jettonWallet = JettonWallet.test(
        transport: transport,
        rootTokenContract: const Address(address: '0:root'),
        wallet: wallet,
        isInitialized: false,
      );

      final expectation = expectLater(
        jettonWallet.onBalanceChangedStream,
        emits(BigInt.parse('456')),
      );

      // Act
      jettonWallet.onBalanceChanged('456');

      // Assert
      await expectation;
      verifyNever(() => wallet.contractState());
      verifyNever(() => wallet.balance());
    });
  });
}
