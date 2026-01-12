import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBridge extends Mock implements NekotonBridgeApi {}

void main() {
  group('DePoolAsset', () {
    final bridge = MockBridge();
    const address = Address(address: '-42:CbxctPqURTNR');

    setUpAll(() {
      NekotonBridge.initMock(api: bridge);
    });

    test('To JSON', () {
      const c = DePoolAsset(address: address);

      when(
        () => bridge.crateApiMergedNtValidateAddress(
          address: any(named: 'address'),
        ),
      ).thenReturn(false);

      expect(c.toJson(), {'address': address.address});
    });

    test('From JSON', () {
      const c = DePoolAsset(address: address);

      expect(DePoolAsset.fromJson({'address': address.address}), c);
    });
  });
}
