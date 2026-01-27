import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

class MockTonWalletDartWrapper extends Mock implements TonWalletDartWrapper {}

void main() {
  group('TonWallet', () {
    test('getWalletV5R1Seqno throws for non-V5 wallet', () async {
      // Arrange
      final transport = TestTransport();
      final wallet = MockTonWalletDartWrapper();
      final tonWallet = TonWallet.test(
        transport: transport,
        wallet: wallet,
        walletType: const WalletType.walletV3(),
      );

      const contractState = RawContractState.exists(
        ExistingContract(
          account: 'account',
          timings: GenTimings(genLt: '0', genUtime: 0),
          lastTransactionId: LastTransactionId(isExact: true, lt: '0'),
        ),
      );
      final publicKey = PublicKey(publicKey: 'c' * 64);

      // Act
      final call = tonWallet.getWalletV5R1Seqno(
        contractState: contractState,
        publicKey: publicKey,
      );

      // Assert
      await expectLater(call, throwsA(isA<ArgumentError>()));
      verifyNever(
        () => wallet.getWalletV5R1Seqno(
          rawCurrentState: any(named: 'rawCurrentState'),
          publicKey: any(named: 'publicKey'),
        ),
      );
    });

    test('refresh returns early when transport disposed', () async {
      // Arrange
      final transport = TestTransport(disposedFlag: true);
      final wallet = MockTonWalletDartWrapper();
      final tonWallet = TonWallet.test(
        transport: transport,
        wallet: wallet,
        walletType: const WalletType.walletV3(),
      );

      // Act
      await tonWallet.refresh();

      // Assert
      verifyNever(() => wallet.refresh());
    });
  });
}
