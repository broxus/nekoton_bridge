import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

class MockTokenWalletDartWrapper extends Mock
    implements TokenWalletDartWrapper {}

void main() {
  group('TokenWallet', () {
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
