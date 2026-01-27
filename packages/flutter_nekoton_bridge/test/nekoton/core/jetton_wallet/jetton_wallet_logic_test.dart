import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

class MockJettonWalletDartWrapper extends Mock
    implements JettonWalletDartWrapper {}

void main() {
  group('JettonWallet', () {
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
