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
      expect(
        const WalletType.walletV3().toJson(),
        {'type': 'walletV3'},
      );
      expect(
        const WalletType.highloadWalletV2().toJson(),
        {'type': 'highloadWalletV2'},
      );
      expect(
        const WalletType.everWallet().toJson(),
        {'type': 'everWallet'},
      );
    });

    test('From JSON', () {
      expect(
        WalletType.fromJson({'data': 'SafeMultisigWallet', 'type': 'multisig'}),
        const WalletType.multisig(MultisigType.safeMultisigWallet),
      );
      expect(
        WalletType.fromJson(
            {'data': 'SafeMultisigWallet24h', 'type': 'multisig'},),
        const WalletType.multisig(MultisigType.safeMultisigWallet24h),
      );
      expect(
        WalletType.fromJson({'type': 'walletV3'}),
        const WalletType.walletV3(),
      );
      expect(
        WalletType.fromJson({'type': 'highloadWalletV2'}),
        const WalletType.highloadWalletV2(),
      );
      expect(
        WalletType.fromJson({'type': 'everWallet'}),
        const WalletType.everWallet(),
      );
    });
  });
}
