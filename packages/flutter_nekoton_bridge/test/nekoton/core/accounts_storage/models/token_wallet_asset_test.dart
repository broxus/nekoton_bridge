import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBridge extends Mock implements NekotonBridgeApi {}

void main() {
  group('TokenWalletAsset', () {
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

    test('toJson serializes root token contract', () {
      const asset = TokenWalletAsset(
        rootTokenContract: Address(address: '0:token'),
      );

      expect(asset.toJson(), {'root_token_contract': '0:token'});
    });

    test('fromJson deserializes root token contract', () {
      expect(
        TokenWalletAsset.fromJson(const {'root_token_contract': '0:token'}),
        const TokenWalletAsset(rootTokenContract: Address(address: '0:token')),
      );
    });
  });
}
