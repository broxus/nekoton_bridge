import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBridge extends Mock implements NekotonBridgeApi {}

void main() {
  group('AdditionalAssets', () {
    final bridge = MockBridge();
    const tokenWalletAssetList = [
      TokenWalletAsset(
        rootTokenContract: Address(address: '-5:LzHYUqLraWbOrZtw'),
      ),
      TokenWalletAsset(
        rootTokenContract: Address(address: '345:AzFuPzrUAqPCvNjV'),
      ),
    ];

    const dePoolAssetList = [
      DePoolAsset(address: Address(address: '9:pyTeANohiWvOLqsO')),
      DePoolAsset(address: Address(address: '89:aQIekoZFCvYSeeaG')),
      DePoolAsset(address: Address(address: '-45:JiSztqWPxAAuUMlh')),
    ];

    setUpAll(() {
      NekotonBridge.initMock(api: bridge);
    });

    test('To JSON', () {
      const c = AdditionalAssets(
        tokenWallets: tokenWalletAssetList,
        depools: dePoolAssetList,
      );

      when(
        () => bridge.crateApiMergedNtValidateAddress(
          address: any(named: 'address'),
        ),
      ).thenReturn(false);

      expect(c.toJson(), {
        'token_wallets': [
          {'root_token_contract': '-5:LzHYUqLraWbOrZtw'},
          {'root_token_contract': '345:AzFuPzrUAqPCvNjV'},
        ],
        'depools': [
          {'address': '9:pyTeANohiWvOLqsO'},
          {'address': '89:aQIekoZFCvYSeeaG'},
          {'address': '-45:JiSztqWPxAAuUMlh'},
        ],
      });
    });

    test('From JSON', () {
      const c = AdditionalAssets(
        tokenWallets: tokenWalletAssetList,
        depools: dePoolAssetList,
      );

      expect(
        AdditionalAssets.fromJson({
          'token_wallets': [
            {'root_token_contract': '-5:LzHYUqLraWbOrZtw'},
            {'root_token_contract': '345:AzFuPzrUAqPCvNjV'},
          ],
          'depools': [
            {'address': '9:pyTeANohiWvOLqsO'},
            {'address': '89:aQIekoZFCvYSeeaG'},
            {'address': '-45:JiSztqWPxAAuUMlh'},
          ],
        }),
        c,
      );
    });
  });
}
