import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

class MockBridge extends Mock implements NekotonBridgeApi {}

class MockAccountsStorageImpl extends Mock implements AccountsStorageImpl {}

class MockArcAccountsStorageBoxTrait extends Mock
    implements ArcAccountsStorageBoxTrait {}

class MockArcStorageBoxTrait extends Mock implements ArcStorageBoxTrait {}

class FakeArcStorageBoxTrait extends Fake implements ArcStorageBoxTrait {}

Storage _createDisposableStorage(MockArcStorageBoxTrait innerStorage) {
  return Storage.test(
    get: (_) async => null,
    set: ({required key, required value}) async {},
    setUnchecked: ({required key, required value}) {},
    remove: (_) async {},
    removeUnchecked: (_) {},
    storage: StorageDartWrapper.raw(innerStorage: innerStorage),
  );
}

const _mainPublicKey = PublicKey(
  publicKey: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
);

const _renamedPublicKey = PublicKey(
  publicKey: 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb',
);

const _walletType = WalletType.everWallet();

const _accountToAdd = AccountToAdd(
  name: 'Main account',
  publicKey: _mainPublicKey,
  contract: _walletType,
  workchain: 0,
);

const _accountJson = {
  'name': 'Main account',
  'tonWallet': {
    'address': '0:abc',
    'publicKey':
        'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    'contract': {'type': 'everWallet'},
  },
  'additionalAssets': <String, dynamic>{},
};

const _renamedAccountJson = {
  'name': 'Renamed account',
  'tonWallet': {
    'address': '0:def',
    'publicKey':
        'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb',
    'contract': {'type': 'walletV4R2'},
  },
  'additionalAssets': {
    'mainnet': {
      'token_wallets': [
        {'root_token_contract': '0:token'},
      ],
      'depools': <Map<String, dynamic>>[],
    },
  },
};

void main() {
  group('AccountsStorage', () {
    final bridge = MockBridge();

    setUpAll(() {
      registerFallbackValue(
        StorageDartWrapper.raw(innerStorage: FakeArcStorageBoxTrait()),
      );
      NekotonBridge.initMock(api: bridge);
    });

    setUp(() {
      reset(bridge);
    });

    test('create initializes wrapper and loads accounts', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final innerStorage = MockArcAccountsStorageBoxTrait();
      final impl = AccountsStorageImpl(innerStorage: innerStorage);

      when(
        () => bridge.crateApiMergedAccountsStorageImplNew(
          storage: any(named: 'storage'),
        ),
      ).thenAnswer((_) async => impl);
      when(
        () => bridge.crateApiMergedAccountsStorageImplGetEntries(that: impl),
      ).thenAnswer((_) async => jsonEncode([_accountJson]));

      // Act
      final accountsStorage = await AccountsStorage.create(storage: storage);

      // Assert
      expect(accountsStorage.accounts.length, 1);
      expect(accountsStorage.accounts.single.name, 'Main account');
      expect(
        accountsStorage.accounts.single.address,
        const Address(address: '0:abc'),
      );
    });

    test('getEntries parses returned JSON', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final accountsStorageImpl = MockAccountsStorageImpl();
      final accountsStorage = AccountsStorage.test(
        storage: storage,
        accountsStorage: accountsStorageImpl,
        initialAccounts: const [],
      );

      when(
        () => accountsStorageImpl.getEntries(),
      ).thenAnswer((_) async => jsonEncode([_accountJson]));

      // Act
      final entries = await accountsStorage.getEntries();

      // Assert
      expect(entries.length, 1);
      expect(entries.single.name, 'Main account');
      expect(entries.single.address, const Address(address: '0:abc'));
    });

    test('addAccount returns parsed address and refreshes cached accounts', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final accountsStorageImpl = MockAccountsStorageImpl();
      final accountsStorage = AccountsStorage.test(
        storage: storage,
        accountsStorage: accountsStorageImpl,
        initialAccounts: const [],
      );
      const addedAccount = AssetsList(
        name: 'Main account',
        tonWallet: TonWalletAsset(
          address: Address(address: '0:abc'),
          publicKey: PublicKey(
            publicKey:
                'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
          ),
          contract: WalletType.everWallet(),
        ),
        additionalAssets: {},
      );
      const accountToAdd = AccountToAdd(
        name: 'Main account',
        publicKey: PublicKey(
          publicKey:
              'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        ),
        contract: WalletType.everWallet(),
        workchain: 0,
      );
      const addedAccountJson = {
        'name': 'Main account',
        'tonWallet': {
          'address': '0:abc',
          'publicKey':
              'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
          'contract': {'type': 'everWallet'},
        },
        'additionalAssets': <String, dynamic>{},
      };

      when(
        () => accountsStorageImpl.addAccount(account: jsonEncode(accountToAdd)),
      ).thenAnswer((_) async => jsonEncode(addedAccountJson));
      when(
        () => accountsStorageImpl.getEntries(),
      ).thenAnswer((_) async => jsonEncode([addedAccountJson]));

      // Act
      final addedAddress = await accountsStorage.addAccount(accountToAdd);

      // Assert
      expect(addedAddress, addedAccount.address);
      expect(accountsStorage.accounts, [addedAccount]);
      verify(
        () => accountsStorageImpl.addAccount(account: jsonEncode(accountToAdd)),
      ).called(1);
      verify(() => accountsStorageImpl.getEntries()).called(1);
    });

    test('addAccounts returns parsed addresses and refreshes cache', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final accountsStorageImpl = MockAccountsStorageImpl();
      final accountsStorage = AccountsStorage.test(
        storage: storage,
        accountsStorage: accountsStorageImpl,
        initialAccounts: const [],
      );
      const secondAccount = AccountToAdd(
        name: 'Second account',
        publicKey: _renamedPublicKey,
        contract: WalletType.walletV4R2(),
        workchain: 0,
      );

      when(
        () => accountsStorageImpl.addAccounts(
          accounts: jsonEncode([_accountToAdd, secondAccount]),
        ),
      ).thenAnswer(
        (_) async => jsonEncode([_accountJson, _renamedAccountJson]),
      );
      when(() => accountsStorageImpl.getEntries()).thenAnswer(
        (_) async => jsonEncode([_accountJson, _renamedAccountJson]),
      );

      // Act
      final result = await accountsStorage.addAccounts([
        _accountToAdd,
        secondAccount,
      ]);

      // Assert
      expect(result, const [
        Address(address: '0:abc'),
        Address(address: '0:def'),
      ]);
      expect(accountsStorage.accounts.length, 2);
    });

    test('renameAccount refreshes cache and emits updated accounts', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final accountsStorageImpl = MockAccountsStorageImpl();
      final initial = AssetsList.fromJson(_accountJson);
      final renamed = AssetsList.fromJson(_renamedAccountJson);
      final accountsStorage = AccountsStorage.test(
        storage: storage,
        accountsStorage: accountsStorageImpl,
        initialAccounts: [initial],
      );

      when(
        () => accountsStorageImpl.renameAccount(
          accountAddress: '0:abc',
          name: 'Renamed account',
        ),
      ).thenAnswer((_) async => jsonEncode(_renamedAccountJson));
      when(
        () => accountsStorageImpl.getEntries(),
      ).thenAnswer((_) async => jsonEncode([_renamedAccountJson]));

      // Act
      await accountsStorage.renameAccount(
        const Address(address: '0:abc'),
        'Renamed account',
      );

      // Assert
      await expectLater(accountsStorage.accountsStream, emits([renamed]));
      expect(accountsStorage.accounts, [renamed]);
    });

    test('removeAccount returns false when native returns null', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final accountsStorageImpl = MockAccountsStorageImpl();
      final accountsStorage = AccountsStorage.test(
        storage: storage,
        accountsStorage: accountsStorageImpl,
        initialAccounts: const [],
      );
      const address = Address(address: '0:abc');

      when(
        () =>
            accountsStorageImpl.removeAccount(accountAddress: address.address),
      ).thenAnswer((_) async => null);

      // Act
      final removed = await accountsStorage.removeAccount(address);

      // Assert
      expect(removed, isFalse);
      verifyNever(() => accountsStorageImpl.getEntries());
    });

    test('removeAccount updates cache when account removed', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final accountsStorageImpl = MockAccountsStorageImpl();
      final accountsStorage = AccountsStorage.test(
        storage: storage,
        accountsStorage: accountsStorageImpl,
        initialAccounts: const [],
      );
      const address = Address(address: '0:def');

      when(
        () =>
            accountsStorageImpl.removeAccount(accountAddress: address.address),
      ).thenAnswer((_) async => '{}');

      when(
        () => accountsStorageImpl.getEntries(),
      ).thenAnswer((_) async => jsonEncode([]));

      // Act
      final removed = await accountsStorage.removeAccount(address);

      // Assert
      expect(removed, isTrue);
      verify(() => accountsStorageImpl.getEntries()).called(1);
    });

    test('addAccounts returns empty list for empty input', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final accountsStorageImpl = MockAccountsStorageImpl();
      final accountsStorage = AccountsStorage.test(
        storage: storage,
        accountsStorage: accountsStorageImpl,
        initialAccounts: const [],
      );

      when(
        () => accountsStorageImpl.addAccounts(accounts: jsonEncode([])),
      ).thenAnswer((_) async => jsonEncode([]));

      when(
        () => accountsStorageImpl.getEntries(),
      ).thenAnswer((_) async => jsonEncode([]));

      // Act
      final result = await accountsStorage.addAccounts(const []);

      // Assert
      expect(result, isEmpty);
      expect(accountsStorage.accounts, isEmpty);
    });

    test('addTokenWallets updates cache for empty contracts list', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final accountsStorageImpl = MockAccountsStorageImpl();
      final accountsStorage = AccountsStorage.test(
        storage: storage,
        accountsStorage: accountsStorageImpl,
        initialAccounts: const [],
      );
      const address = Address(address: '0:123');

      when(
        () => accountsStorageImpl.addTokenWallets(
          accountAddress: address.address,
          networkGroup: 'mainnet',
          rootTokenContracts: const [],
        ),
      ).thenAnswer((_) async => true);

      when(
        () => accountsStorageImpl.getEntries(),
      ).thenAnswer((_) async => jsonEncode([]));

      // Act
      await accountsStorage.addTokenWallets(
        address: address,
        networkGroup: 'mainnet',
        rootTokenContracts: const [],
      );

      // Assert
      expect(accountsStorage.accounts, isEmpty);
      verify(
        () => accountsStorageImpl.addTokenWallets(
          accountAddress: address.address,
          networkGroup: 'mainnet',
          rootTokenContracts: const [],
        ),
      ).called(1);
    });

    test(
      'addTokenWallet returns updated assets list and refreshes cache',
      () async {
        // Arrange
        final storage = createInMemoryStorage();
        final accountsStorageImpl = MockAccountsStorageImpl();
        final accountsStorage = AccountsStorage.test(
          storage: storage,
          accountsStorage: accountsStorageImpl,
          initialAccounts: const [],
        );

        when(
          () => accountsStorageImpl.addTokenWallet(
            accountAddress: '0:def',
            networkGroup: 'mainnet',
            rootTokenContract: '0:token',
          ),
        ).thenAnswer((_) async => jsonEncode(_renamedAccountJson));
        when(
          () => accountsStorageImpl.getEntries(),
        ).thenAnswer((_) async => jsonEncode([_renamedAccountJson]));

        // Act
        final result = await accountsStorage.addTokenWallet(
          address: const Address(address: '0:def'),
          networkGroup: 'mainnet',
          rootTokenContract: const Address(address: '0:token'),
        );

        // Assert
        expect(result, AssetsList.fromJson(_renamedAccountJson));
        expect(accountsStorage.accounts, [
          AssetsList.fromJson(_renamedAccountJson),
        ]);
      },
    );

    test(
      'removeTokenWallet returns updated assets list and refreshes cache',
      () async {
        // Arrange
        final storage = createInMemoryStorage();
        final accountsStorageImpl = MockAccountsStorageImpl();
        final accountsStorage = AccountsStorage.test(
          storage: storage,
          accountsStorage: accountsStorageImpl,
          initialAccounts: const [],
        );

        when(
          () => accountsStorageImpl.removeTokenWallet(
            accountAddress: '0:def',
            networkGroup: 'mainnet',
            rootTokenContract: '0:token',
          ),
        ).thenAnswer((_) async => jsonEncode(_accountJson));
        when(
          () => accountsStorageImpl.getEntries(),
        ).thenAnswer((_) async => jsonEncode([_accountJson]));

        // Act
        final result = await accountsStorage.removeTokenWallet(
          address: const Address(address: '0:def'),
          networkGroup: 'mainnet',
          rootTokenContract: const Address(address: '0:token'),
        );

        // Assert
        expect(result, AssetsList.fromJson(_accountJson));
        expect(accountsStorage.accounts, [AssetsList.fromJson(_accountJson)]);
      },
    );

    test('removeTokenWallets forwards addresses and refreshes cache', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final accountsStorageImpl = MockAccountsStorageImpl();
      final accountsStorage = AccountsStorage.test(
        storage: storage,
        accountsStorage: accountsStorageImpl,
        initialAccounts: const [],
      );

      when(
        () => accountsStorageImpl.removeTokenWallets(
          accountAddress: '0:def',
          networkGroup: 'mainnet',
          rootTokenContracts: ['0:token', '0:token2'],
        ),
      ).thenAnswer((_) async => true);
      when(
        () => accountsStorageImpl.getEntries(),
      ).thenAnswer((_) async => jsonEncode([_accountJson]));

      // Act
      await accountsStorage.removeTokenWallets(
        address: const Address(address: '0:def'),
        networkGroup: 'mainnet',
        rootTokenContracts: const [
          Address(address: '0:token'),
          Address(address: '0:token2'),
        ],
      );

      // Assert
      expect(accountsStorage.accounts, [AssetsList.fromJson(_accountJson)]);
    });

    test(
      'removeAccounts returns removed addresses and refreshes cache',
      () async {
        // Arrange
        final storage = createInMemoryStorage();
        final accountsStorageImpl = MockAccountsStorageImpl();
        final accountsStorage = AccountsStorage.test(
          storage: storage,
          accountsStorage: accountsStorageImpl,
          initialAccounts: const [
            AssetsList(
              name: 'Main account',
              tonWallet: TonWalletAsset(
                address: Address(address: '0:abc'),
                publicKey: _mainPublicKey,
                contract: _walletType,
              ),
              additionalAssets: {},
            ),
          ],
        );

        when(
          () => accountsStorageImpl.removeAccounts(accountAddresses: ['0:abc']),
        ).thenAnswer((_) async => jsonEncode([_accountJson]));
        when(
          () => accountsStorageImpl.getEntries(),
        ).thenAnswer((_) async => jsonEncode([]));

        // Act
        final result = await accountsStorage.removeAccounts(const [
          Address(address: '0:abc'),
        ]);

        // Assert
        expect(result, const [Address(address: '0:abc')]);
        expect(accountsStorage.accounts, isEmpty);
      },
    );

    test('clear refreshes cache', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final accountsStorageImpl = MockAccountsStorageImpl();
      final accountsStorage = AccountsStorage.test(
        storage: storage,
        accountsStorage: accountsStorageImpl,
        initialAccounts: [AssetsList.fromJson(_accountJson)],
      );

      when(() => accountsStorageImpl.clear()).thenAnswer((_) async => true);
      when(
        () => accountsStorageImpl.getEntries(),
      ).thenAnswer((_) async => jsonEncode([]));

      // Act
      await accountsStorage.clear();

      // Assert
      expect(accountsStorage.accounts, isEmpty);
    });

    test('reload refreshes cache', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final accountsStorageImpl = MockAccountsStorageImpl();
      final accountsStorage = AccountsStorage.test(
        storage: storage,
        accountsStorage: accountsStorageImpl,
        initialAccounts: const [],
      );

      when(() => accountsStorageImpl.reload()).thenAnswer((_) async => true);
      when(
        () => accountsStorageImpl.getEntries(),
      ).thenAnswer((_) async => jsonEncode([_accountJson]));

      // Act
      await accountsStorage.reload();

      // Assert
      expect(accountsStorage.accounts, [AssetsList.fromJson(_accountJson)]);
    });

    test('verifyData forwards to bridge api', () async {
      // Arrange
      when(
        () =>
            bridge.crateApiMergedAccountsStorageImplVerifyData(data: 'payload'),
      ).thenAnswer((_) async => true);

      // Act
      final result = await AccountsStorage.verifyData('payload');

      // Assert
      expect(result, isTrue);
    });

    test('dispose closes stream and inner storage', () async {
      // Arrange
      final innerStorage = MockArcAccountsStorageBoxTrait();
      final storageInner = MockArcStorageBoxTrait();
      final storage = _createDisposableStorage(storageInner);
      final accountsStorageImpl = MockAccountsStorageImpl();
      final accountsStorage = AccountsStorage.test(
        storage: storage,
        accountsStorage: accountsStorageImpl,
        initialAccounts: const [],
      );

      when(() => accountsStorageImpl.innerStorage).thenReturn(innerStorage);
      when(() => innerStorage.dispose()).thenReturn(null);
      when(() => storageInner.dispose()).thenReturn(null);

      // Act
      accountsStorage.dispose();

      // Assert
      await expectLater(
        accountsStorage.accountsStream,
        emitsInOrder([isEmpty, emitsDone]),
      );
      verify(() => innerStorage.dispose()).called(1);
    });
  });
}
