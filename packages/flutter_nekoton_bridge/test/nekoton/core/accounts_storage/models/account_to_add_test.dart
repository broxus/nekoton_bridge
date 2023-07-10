import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

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
    const name = 'gbgdnCVwnClVCEEa';
    const publicKey = PublicKey(publicKey: 'hbUbRVIygyfvpbDc');
    const contract = WalletType.everWallet();
    const workchain = 42;
    const explicitAddress = Address(address: '99:vikUtGgouyyFTays');

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
