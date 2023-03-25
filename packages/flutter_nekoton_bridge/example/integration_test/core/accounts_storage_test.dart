import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

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

  setUp(() {
    storageMethods = MockedStorageMethods();
    // This setup thing SHOULD NOT be removed or altered because it used in integration tests
    setupLogger(
      level: LogLevel.Trace,
      mobileLogger: false,
      logHandler: (logEntry) => debugPrint(
        'FromLib: ${logEntry.level} ${logEntry.tag} ${logEntry.msg} (lib_time=${logEntry.timeMillis})',
      ),
    );
  });

  group('AccountsStorage test', () {
    testWidgets('Create AccountsStorage', (WidgetTester tester) async {
      runApp(Container());

      await tester.pumpAndSettle();
      await initRustToDartCaller();

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
      runApp(Container());

      await tester.pumpAndSettle();
      await initRustToDartCaller();

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
        publicKey: key.publicKey,
        contract: const WalletType.everWallet(),
        workchain: 0,
      );
      final asset = await accountsStorage.addAccount(addAccount);

      expect(asset.address.isNotEmpty, isTrue);
      expect(asset.publicKey, key.publicKey);
      expect(asset.tonWallet.contract, const WalletType.everWallet());
      expect(accountsStorage, isNotNull);
    });

    testWidgets('AccountsStorage addAccounts', (WidgetTester tester) async {
      runApp(Container());

      await tester.pumpAndSettle();
      await initRustToDartCaller();

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
        publicKey: key.publicKey,
        contract: const WalletType.everWallet(),
        workchain: 0,
      );
      final assets = await accountsStorage.addAccounts([addAccount]);
      final asset = assets.first;

      expect(asset.address.isNotEmpty, isTrue);
      expect(asset.publicKey, key.publicKey);
      expect(asset.tonWallet.contract, const WalletType.everWallet());
      expect(accountsStorage, isNotNull);
    });

    testWidgets('AccountsStorage getEntries', (WidgetTester tester) async {
      runApp(Container());

      await tester.pumpAndSettle();
      await initRustToDartCaller();

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
        publicKey: key.publicKey,
        contract: const WalletType.everWallet(),
        workchain: 0,
      );
      final entries1 = await accountsStorage.getEntries();
      expect(entries1.isEmpty, isTrue);

      await accountsStorage.addAccount(addAccount);
      final entries = await accountsStorage.getEntries();
      final asset = entries.first;

      expect(asset.address.isNotEmpty, isTrue);
      expect(asset.publicKey, key.publicKey);
      expect(asset.tonWallet.contract, const WalletType.everWallet());
      expect(accountsStorage, isNotNull);
    });

    testWidgets('AccountsStorage removeAccount', (WidgetTester tester) async {
      runApp(Container());

      await tester.pumpAndSettle();
      await initRustToDartCaller();

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
        publicKey: key.publicKey,
        contract: const WalletType.everWallet(),
        workchain: 0,
      );
      final added = await accountsStorage.addAccount(addAccount);
      final removed = await accountsStorage.removeAccount(added.address);

      final entries = await accountsStorage.getEntries();

      expect(entries.isEmpty, isTrue);
      expect(removed!.address.isNotEmpty, isTrue);
      expect(removed.publicKey, key.publicKey);
      expect(removed.tonWallet.contract, const WalletType.everWallet());
      expect(accountsStorage, isNotNull);
    });

    testWidgets('AccountsStorage removeAccounts', (WidgetTester tester) async {
      runApp(Container());

      await tester.pumpAndSettle();
      await initRustToDartCaller();

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
        publicKey: key.publicKey,
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
