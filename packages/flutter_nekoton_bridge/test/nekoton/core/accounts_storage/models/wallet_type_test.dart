import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('WalletType', () {
    test('To JSON', () {
      expect(
        const WalletType.multisig(MultisigType.safeMultisigWallet).toJson(),
        {'data': 'SafeMultisigWallet', 'type': 'multisig'},
      );
      expect(
        const WalletType.multisig(MultisigType.safeMultisigWallet24h).toJson(),
        {'data': 'SafeMultisigWallet24h', 'type': 'multisig'},
      );
      expect(const WalletType.walletV3().toJson(), {'type': 'walletV3'});
      expect(const WalletType.walletV3R1().toJson(), {'type': 'walletV3R1'});
      expect(const WalletType.walletV3R2().toJson(), {'type': 'walletV3R2'});
      expect(const WalletType.walletV4R1().toJson(), {'type': 'walletV4R1'});
      expect(const WalletType.walletV4R2().toJson(), {'type': 'walletV4R2'});
      expect(const WalletType.walletV5R1().toJson(), {'type': 'walletV5R1'});
      expect(const WalletType.highloadWalletV2().toJson(), {
        'type': 'highloadWalletV2',
      });
      expect(const WalletType.everWallet().toJson(), {'type': 'everWallet'});
      expect(
        const WalletType.multisig(MultisigType.bridgeMultisigWallet).toJson(),
        {'data': 'BridgeMultisigWallet', 'type': 'multisig'},
      );
      expect(const WalletType.multisig(MultisigType.surfWallet).toJson(), {
        'data': 'SurfWallet',
        'type': 'multisig',
      });
      expect(const WalletType.multisig(MultisigType.multisig2).toJson(), {
        'data': 'Multisig2',
        'type': 'multisig',
      });
      expect(const WalletType.multisig(MultisigType.multisig2_1).toJson(), {
        'data': 'Multisig2_1',
        'type': 'multisig',
      });
    });

    test('From JSON', () {
      expect(
        WalletType.fromJson({'data': 'SafeMultisigWallet', 'type': 'multisig'}),
        const WalletType.multisig(MultisigType.safeMultisigWallet),
      );
      expect(
        WalletType.fromJson({
          'data': 'SafeMultisigWallet24h',
          'type': 'multisig',
        }),
        const WalletType.multisig(MultisigType.safeMultisigWallet24h),
      );
      expect(
        WalletType.fromJson({'type': 'walletV3'}),
        const WalletType.walletV3(),
      );
      expect(
        WalletType.fromJson({'type': 'walletV3R1'}),
        const WalletType.walletV3R1(),
      );
      expect(
        WalletType.fromJson({'type': 'walletV3R2'}),
        const WalletType.walletV3R2(),
      );
      expect(
        WalletType.fromJson({'type': 'walletV4R1'}),
        const WalletType.walletV4R1(),
      );
      expect(
        WalletType.fromJson({'type': 'walletV4R2'}),
        const WalletType.walletV4R2(),
      );
      expect(
        WalletType.fromJson({'type': 'walletV5R1'}),
        const WalletType.walletV5R1(),
      );
      expect(
        WalletType.fromJson({'type': 'highloadWalletV2'}),
        const WalletType.highloadWalletV2(),
      );
      expect(
        WalletType.fromJson({'type': 'everWallet'}),
        const WalletType.everWallet(),
      );
      expect(
        WalletType.fromJson({
          'data': 'BridgeMultisigWallet',
          'type': 'multisig',
        }),
        const WalletType.multisig(MultisigType.bridgeMultisigWallet),
      );
      expect(
        WalletType.fromJson({'data': 'SurfWallet', 'type': 'multisig'}),
        const WalletType.multisig(MultisigType.surfWallet),
      );
      expect(
        WalletType.fromJson({'data': 'Multisig2', 'type': 'multisig'}),
        const WalletType.multisig(MultisigType.multisig2),
      );
      expect(
        WalletType.fromJson({'data': 'Multisig2_1', 'type': 'multisig'}),
        const WalletType.multisig(MultisigType.multisig2_1),
      );
    });
  });
}
