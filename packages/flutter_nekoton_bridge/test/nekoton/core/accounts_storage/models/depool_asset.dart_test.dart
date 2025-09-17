import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DePoolAsset', () {
    const address = Address(address: '-42:CbxctPqURTNR');

    test('To JSON', () {
      const c = DePoolAsset(address: address);

      expect(c.toJson(), {'address': address.address});
    });

    test('From JSON', () {
      const c = DePoolAsset(address: address);

      expect(DePoolAsset.fromJson({'address': address.address}), c);
    });
  });
}
