import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBridge extends Mock implements NekotonBridgeApi {}

void main() {
  group('AccountToAdd, explicitAddress is null', () {
    const name = 'gbgdnCVwnClVCEEa';
    const publicKey = PublicKey(publicKey: 'hbUbRVIygyfvpbDc');
    const contract = WalletType.everWallet();
    const workchain = 42;
    const explicitAddress = null;

    test('To JSON', () {
      const c = AccountToAdd(
        name: name,
        publicKey: publicKey,
        contract: contract,
        workchain: workchain,
        explicitAddress: explicitAddress,
      );

      expect(c.toJson(), {
        'name': name,
        'publicKey': publicKey.publicKey,
        'contract': contract.toJson(),
        'workchain': workchain,
        'explicitAddress': null,
      });
    });

    test('From JSON', () {
      const c = AccountToAdd(
        name: name,
        publicKey: publicKey,
        contract: contract,
        workchain: workchain,
        explicitAddress: explicitAddress,
      );

      expect(
        AccountToAdd.fromJson({
          'name': name,
          'publicKey': publicKey.publicKey,
          'contract': contract.toJson(),
          'workchain': workchain,
          'explicitAddress': null,
        }),
        c,
      );
    });
  });

  group('AccountToAdd, explicitAddress not null', () {
    final bridge = MockBridge();
    const name = 'gbgdnCVwnClVCEEa';
    const publicKey = PublicKey(publicKey: 'hbUbRVIygyfvpbDc');
    const contract = WalletType.everWallet();
    const workchain = 42;
    const explicitAddress = Address(address: '99:vikUtGgouyyFTays');

    setUpAll(() {
      NekotonBridge.initMock(api: bridge);
    });

    test('To JSON', () {
      const c = AccountToAdd(
        name: name,
        publicKey: publicKey,
        contract: contract,
        workchain: workchain,
        explicitAddress: explicitAddress,
      );

      when(
        () => bridge.crateApiMergedNtValidateAddress(
          address: any(named: 'address'),
        ),
      ).thenReturn(false);

      expect(c.toJson(), {
        'name': name,
        'publicKey': publicKey.publicKey,
        'contract': contract.toJson(),
        'workchain': workchain,
        'explicitAddress': explicitAddress.address,
      });
    });

    test('From JSON', () {
      const c = AccountToAdd(
        name: name,
        publicKey: publicKey,
        contract: contract,
        workchain: workchain,
        explicitAddress: explicitAddress,
      );

      expect(
        AccountToAdd.fromJson({
          'name': name,
          'publicKey': publicKey.publicKey,
          'contract': contract.toJson(),
          'workchain': workchain,
          'explicitAddress': explicitAddress.address,
        }),
        c,
      );
    });
  });
}
