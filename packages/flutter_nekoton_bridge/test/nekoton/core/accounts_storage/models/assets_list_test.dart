import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AssetsList', () {
    const tokenWalletAssetList0 = [
      TokenWalletAsset(
        rootTokenContract: Address(address: '-5:LzHYUqLraWbOrZtw'),
      ),
      TokenWalletAsset(
        rootTokenContract: Address(address: '345:AzFuPzrUAqPCvNjV'),
      ),
    ];

    const dePoolAssetList0 = [
      DePoolAsset(
        address: Address(address: '9:pyTeANohiWvOLqsO'),
      ),
      DePoolAsset(
        address: Address(address: '89:aQIekoZFCvYSeeaG'),
      ),
      DePoolAsset(
        address: Address(address: '-45:JiSztqWPxAAuUMlh'),
      ),
    ];

    const tokenWalletAssetList1 = [
      TokenWalletAsset(
        rootTokenContract: Address(address: '4:TNpfMkeFbdPkrxLp'),
      ),
      TokenWalletAsset(
        rootTokenContract: Address(address: '35:EkqWbxWeqcpSVnhW'),
      ),
    ];

    const dePoolAssetList1 = [
      DePoolAsset(
        address: Address(address: '3:QJPealSOQrFpSaiZ'),
      ),
      DePoolAsset(
        address: Address(address: '93:YRDoefjFTXNDGjWm'),
      ),
      DePoolAsset(
        address: Address(address: '0:wkpUlpwfJCsBklVC'),
      ),
    ];

    const additionalAssetMap = {
      'RlWnkY': AdditionalAssets(
        tokenWallets: tokenWalletAssetList0,
        depools: dePoolAssetList0,
      ),
      'BKgEid': AdditionalAssets(
        tokenWallets: tokenWalletAssetList1,
        depools: dePoolAssetList1,
      ),
    };

    const tonWalletAsset = TonWalletAsset(
      address: Address(address: '-433:gXCqcUblpodjtWig'),
      publicKey: PublicKey(publicKey: 'IQDMeSJFNvOXBmBq'),
      contract: WalletType.everWallet(),
    );

    test('To JSON', () {
      const c = AssetsList(
        name: 'ZtnFdxRqdHLuYTmH',
        tonWallet: tonWalletAsset,
        additionalAssets: additionalAssetMap,
      );

      expect(c.toJson(), {
        'name': 'ZtnFdxRqdHLuYTmH',
        'tonWallet': {
          'address': '-433:gXCqcUblpodjtWig',
          'publicKey': 'IQDMeSJFNvOXBmBq',
          'contract': {'type': 'everWallet'}
        },
        'additionalAssets': {
          'RlWnkY': {
            'token_wallets': [
              {'root_token_contract': '-5:LzHYUqLraWbOrZtw'},
              {'root_token_contract': '345:AzFuPzrUAqPCvNjV'}
            ],
            'depools': [
              {'address': '9:pyTeANohiWvOLqsO'},
              {'address': '89:aQIekoZFCvYSeeaG'},
              {'address': '-45:JiSztqWPxAAuUMlh'}
            ]
          },
          'BKgEid': {
            'token_wallets': [
              {'root_token_contract': '4:TNpfMkeFbdPkrxLp'},
              {'root_token_contract': '35:EkqWbxWeqcpSVnhW'}
            ],
            'depools': [
              {'address': '3:QJPealSOQrFpSaiZ'},
              {'address': '93:YRDoefjFTXNDGjWm'},
              {'address': '0:wkpUlpwfJCsBklVC'}
            ],
          },
        },
      });
    });

    test('From JSON', () {
      const c = AssetsList(
        name: 'ZtnFdxRqdHLuYTmH',
        tonWallet: tonWalletAsset,
        additionalAssets: additionalAssetMap,
      );

      expect(
        AssetsList.fromJson(
          {
            'name': 'ZtnFdxRqdHLuYTmH',
            'tonWallet': {
              'address': '-433:gXCqcUblpodjtWig',
              'publicKey': 'IQDMeSJFNvOXBmBq',
              'contract': {'type': 'everWallet'}
            },
            'additionalAssets': {
              'RlWnkY': {
                'token_wallets': [
                  {'root_token_contract': '-5:LzHYUqLraWbOrZtw'},
                  {'root_token_contract': '345:AzFuPzrUAqPCvNjV'}
                ],
                'depools': [
                  {'address': '9:pyTeANohiWvOLqsO'},
                  {'address': '89:aQIekoZFCvYSeeaG'},
                  {'address': '-45:JiSztqWPxAAuUMlh'}
                ]
              },
              'BKgEid': {
                'token_wallets': [
                  {'root_token_contract': '4:TNpfMkeFbdPkrxLp'},
                  {'root_token_contract': '35:EkqWbxWeqcpSVnhW'}
                ],
                'depools': [
                  {'address': '3:QJPealSOQrFpSaiZ'},
                  {'address': '93:YRDoefjFTXNDGjWm'},
                  {'address': '0:wkpUlpwfJCsBklVC'}
                ],
              },
            },
          },
        ),
        c,
      );
    });
  });
}
