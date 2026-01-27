import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

class MockAccountsStorageImpl extends Mock implements AccountsStorageImpl {}

void main() {
  group('AccountsStorage', () {
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
  });
}
