import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBridge extends Mock implements NekotonBridgeApi {}

void main() {
  group('TonWalletAsset', () {
    final bridge = MockBridge();

    setUpAll(() {
      NekotonBridge.initMock(api: bridge);
    });

    setUp(() {
      reset(bridge);
      when(
        () => bridge.crateApiMergedNtValidateAddress(
          address: any(named: 'address'),
        ),
      ).thenReturn(false);
    });

    test('toJson serializes address, public key and contract', () {
      const asset = TonWalletAsset(
        address: Address(address: '0:abc'),
        publicKey: PublicKey(
          publicKey:
              'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        ),
        contract: WalletType.multisig(MultisigType.multisig2_1),
      );

      expect(asset.toJson(), {
        'address': '0:abc',
        'publicKey':
            'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        'contract': {'type': 'multisig', 'data': 'Multisig2_1'},
      });
    });

    test('fromJson deserializes address, public key and contract', () {
      expect(
        TonWalletAsset.fromJson(const {
          'address': '0:abc',
          'publicKey':
              'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
          'contract': {'type': 'multisig', 'data': 'Multisig2_1'},
        }),
        const TonWalletAsset(
          address: Address(address: '0:abc'),
          publicKey: PublicKey(
            publicKey:
                'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
          ),
          contract: WalletType.multisig(MultisigType.multisig2_1),
        ),
      );
    });

    test('workchain delegates to address', () {
      const asset = TonWalletAsset(
        address: Address(address: '-1:abc'),
        publicKey: PublicKey(
          publicKey:
              'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        ),
        contract: WalletType.everWallet(),
      );

      expect(asset.workchain, -1);
    });
  });
}
