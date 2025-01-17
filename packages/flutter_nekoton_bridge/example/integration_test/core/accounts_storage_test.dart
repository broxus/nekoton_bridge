import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../timeout_utils.dart';

class MockedStorageMethods {
  final data = <String, String>{};

  Future<String?> get(String key) async {
    return data[key];
  }

  Future<void> set({
    required String key,
    required String value,
  }) async {
    data[key] = value;
  }

  void setUnchecked({
    required String key,
    required String value,
  }) {
    data[key] = value;
  }

  Future<void> remove(String key) async {
    data.remove(key);
  }

  void removeUnchecked(String key) {
    data.remove(key);
  }
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late MockedStorageMethods storageMethods;
  const signers = [KeySigner.derived()];

  const phraseLabs =
      'company conduct cave custom ill fox loop type holiday veteran clog oxygen';
  const password = 'password';

  const inputLabsData = DerivedKeyCreateInputImport(
    keyName: 'KeyNameLabs',
    phrase: phraseLabs,
    password: Password.explicit(
      PasswordExplicit(
        password: password,
        cacheBehavior: PasswordCacheBehavior.nop(),
      ),
    ),
  );
  const addKeyInputLabs = DerivedKeyCreateInput.import(inputLabsData);

  setUp(() async {
    storageMethods = MockedStorageMethods();
    // This setup thing SHOULD NOT be removed or altered because it used in integration tests
    setupLogger(
      level: LogLevel.trace,
      mobileLogger: false,
      logHandler: (logEntry) => debugPrint(
        'FromLib: ${logEntry.level} ${logEntry.tag} ${logEntry.msg} (lib_time=${logEntry.timeMillis})',
      ),
    );
    runApp(Container());
    await initRustToDartCaller();
  });

  setUpAll(() async {
    await NekotonBridge.init();
  });

  group('AccountsStorage test', () {
    testWidgets('Create AccountsStorage', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final storage = await Storage.create(
        get: storageMethods.get,
        set: storageMethods.set,
        setUnchecked: storageMethods.setUnchecked,
        remove: storageMethods.remove,
        removeUnchecked: storageMethods.removeUnchecked,
      );

      final accountsStorage = await AccountsStorage.create(storage: storage);

      expect(accountsStorage, isNotNull);
    });

    testWidgets('AccountsStorage addAccount', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final storage = await Storage.create(
        get: storageMethods.get,
        set: storageMethods.set,
        setUnchecked: storageMethods.setUnchecked,
        remove: storageMethods.remove,
        removeUnchecked: storageMethods.removeUnchecked,
      );

      final keystore = await KeyStore.create(
        storage: storage,
        signers: signers,
      );
      final key = await keystore.addKey(addKeyInputLabs);

      final accountsStorage = await AccountsStorage.create(storage: storage);
      final addAccount = AccountToAdd(
        name: 'Name',
        publicKey: key,
        contract: const WalletType.everWallet(),
        workchain: 0,
      );
      final address = await accountsStorage.addAccount(addAccount);
      final asset = accountsStorage.accounts.first;

      expect(address, asset.address);
      expect(asset.address.address.isNotEmpty, isTrue);
      expect(asset.publicKey, key);
      expect(asset.tonWallet.contract, const WalletType.everWallet());
      expect(accountsStorage, isNotNull);
    });

    testWidgets('AccountsStorage addAccounts', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final storage = await Storage.create(
        get: storageMethods.get,
        set: storageMethods.set,
        setUnchecked: storageMethods.setUnchecked,
        remove: storageMethods.remove,
        removeUnchecked: storageMethods.removeUnchecked,
      );

      final keystore = await KeyStore.create(
        storage: storage,
        signers: signers,
      );
      final key = await keystore.addKey(addKeyInputLabs);

      final accountsStorage = await AccountsStorage.create(storage: storage);
      final addAccount = AccountToAdd(
        name: 'Name',
        publicKey: key,
        contract: const WalletType.everWallet(),
        workchain: 0,
      );
      final addresses = await accountsStorage.addAccounts([addAccount]);
      final address = addresses.first;
      final asset = accountsStorage.accounts.first;

      expect(address, asset.address);
      expect(asset.address.address.isNotEmpty, isTrue);
      expect(asset.publicKey, key);
      expect(asset.tonWallet.contract, const WalletType.everWallet());
      expect(accountsStorage, isNotNull);
    });

    testWidgets('AccountsStorage getEntries', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final storage = await Storage.create(
        get: storageMethods.get,
        set: storageMethods.set,
        setUnchecked: storageMethods.setUnchecked,
        remove: storageMethods.remove,
        removeUnchecked: storageMethods.removeUnchecked,
      );

      final keystore = await KeyStore.create(
        storage: storage,
        signers: signers,
      );
      final key = await keystore.addKey(addKeyInputLabs);

      final accountsStorage = await AccountsStorage.create(storage: storage);
      final addAccount = AccountToAdd(
        name: 'Name',
        publicKey: key,
        contract: const WalletType.everWallet(),
        workchain: 0,
      );
      final entries1 = await accountsStorage.getEntries();
      expect(entries1.isEmpty, isTrue);

      await accountsStorage.addAccount(addAccount);
      final entries = await accountsStorage.getEntries();
      final asset = entries.first;

      expect(asset.address.address.isNotEmpty, isTrue);
      expect(asset.publicKey, key);
      expect(asset.tonWallet.contract, const WalletType.everWallet());
      expect(accountsStorage, isNotNull);
    });

    testWidgets('AccountsStorage removeAccount', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final storage = await Storage.create(
        get: storageMethods.get,
        set: storageMethods.set,
        setUnchecked: storageMethods.setUnchecked,
        remove: storageMethods.remove,
        removeUnchecked: storageMethods.removeUnchecked,
      );

      final keystore = await KeyStore.create(
        storage: storage,
        signers: signers,
      );
      final key = await keystore.addKey(addKeyInputLabs);

      final accountsStorage = await AccountsStorage.create(storage: storage);
      final addAccount = AccountToAdd(
        name: 'Name',
        publicKey: key,
        contract: const WalletType.everWallet(),
        workchain: 0,
      );
      final address = await accountsStorage.addAccount(addAccount);
      final removed = await accountsStorage.removeAccount(address);

      final entries = await accountsStorage.getEntries();

      expect(entries.isEmpty, isTrue);
      expect(removed, isTrue);
      expect(accountsStorage, isNotNull);
    });

    testWidgets('AccountsStorage removeAccounts', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final storage = await Storage.create(
        get: storageMethods.get,
        set: storageMethods.set,
        setUnchecked: storageMethods.setUnchecked,
        remove: storageMethods.remove,
        removeUnchecked: storageMethods.removeUnchecked,
      );

      final keystore = await KeyStore.create(
        storage: storage,
        signers: signers,
      );
      final key = await keystore.addKey(addKeyInputLabs);

      final accountsStorage = await AccountsStorage.create(storage: storage);
      final addAccount = AccountToAdd(
        name: 'Name',
        publicKey: key,
        contract: const WalletType.everWallet(),
        workchain: 0,
      );
      await accountsStorage.addAccount(addAccount);
      await accountsStorage.clear();

      final entries = await accountsStorage.getEntries();

      expect(entries.isEmpty, isTrue);
      expect(accountsStorage, isNotNull);
    });
  });
}
