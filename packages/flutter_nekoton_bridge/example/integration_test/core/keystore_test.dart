import 'dart:convert';

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
  const signers = [KeySigner.encrypted(), KeySigner.derived()];

  const phraseLabs =
      'company conduct cave custom ill fox loop type holiday veteran clog oxygen';
  const phraseLegacy =
      'country glue knife buzz bus armor cement offer guide corn buddy update bird alcohol either neglect demand uncover table lock ketchup dinner ramp cream';
  const password = 'password';

  const labsKey = PublicKey(
      publicKey:
          '43c77e697042c96481336afd84a858079d97b3223dcb1228ec70112d89ecbf93');
  const legacyKey = PublicKey(
      publicKey:
          '69fb667f274805ca5341afa06c4ba1227c37cd52f3a253f39426d211428fd78b');

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

  final addKeyInputLegacy = EncryptedKeyCreateInput(
    name: 'KeyNameLegacy',
    mnemonicType: const MnemonicType.legacy(),
    phrase: phraseLegacy,
    password: const Password.explicit(
      PasswordExplicit(
        password: password,
        cacheBehavior: PasswordCacheBehavior.nop(),
      ),
    ),
  );

  final addKeyInputBip39 = EncryptedKeyCreateInput(
    name: 'KeyNameBip39',
    mnemonicType: const MnemonicType.bip39(
      Bip39MnemonicData(
        accountId: 0,
        path: Bip39Path.ever,
        entropy: Bip39Entropy.bits128,
      ),
    ),
    phrase: phraseLabs,
    password: const Password.explicit(
      PasswordExplicit(
        password: password,
        cacheBehavior: PasswordCacheBehavior.nop(),
      ),
    ),
  );

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

  group('KeyStore test', () {
    testWidgets('Create KeyStore', (WidgetTester tester) async {
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
      expect(keystore, isNotNull);
    });

    testWidgets('KeyStore addKey derived', (WidgetTester tester) async {
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
      expect(key, isNotNull);
      expect(key, labsKey);
      final keysEntry = keystore.keys.first;
      expect(keysEntry.name, inputLabsData.keyName);
      expect(keysEntry.isLegacy, false);
      expect(keysEntry.isMaster, true);
      expect(keysEntry.signerName, const KeySigner.derived().name);
      expect(key, keysEntry.publicKey);
      expect(storageMethods.data.isNotEmpty, isTrue);
    });

    testWidgets('KeyStore addKey encrypted', (WidgetTester tester) async {
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

      final keyLegacy = await keystore.addKey(addKeyInputLegacy);
      expect(keyLegacy, isNotNull);
      expect(keyLegacy, legacyKey);

      final keysEntry = keystore.keys.first;
      expect(keysEntry.name, addKeyInputLegacy.name);
      expect(keysEntry.isLegacy, true);
      expect(keysEntry.isMaster, true);
      expect(keysEntry.signerName, const KeySigner.encrypted().name);
      expect(keyLegacy, keysEntry.publicKey);

      final keyBip39 = await keystore.addKey(addKeyInputBip39);
      expect(keyBip39, isNotNull);
      expect(keyBip39, labsKey);

      expect(storageMethods.data.isNotEmpty, isTrue);
    });

    testWidgets('KeyStore addKeys', (WidgetTester tester) async {
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

      final keys = await keystore.addKeys([addKeyInputLabs]);
      final key = keys.first;
      expect(key, isNotNull);
      expect(key, labsKey);
      final keysEntry = keystore.keys.first;
      expect(keysEntry.name, inputLabsData.keyName);
      expect(keysEntry.isLegacy, false);
      expect(keysEntry.isMaster, true);
      expect(keysEntry.signerName, const KeySigner.derived().name);
      expect(key, keysEntry.publicKey);

      expect(storageMethods.data.isNotEmpty, isTrue);
    });

    testWidgets('KeyStore getEntries', (WidgetTester tester) async {
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

      final addedKey1 = await keystore.addKey(addKeyInputLabs);
      final addedKey2 = await keystore.addKey(addKeyInputLegacy);

      final entries =
          (await keystore.getEntries()).map((e) => e.publicKey).toList();

      /// sort needs to avoid random order of keys
      expect(
        jsonEncode(
          entries..sort((a, b) => a.compareTo(b)),
        ),
        jsonEncode(
          [addedKey1, addedKey2]..sort((a, b) => a.compareTo(b)),
        ),
      );
      expect(storageMethods.data.isNotEmpty, isTrue);
    });

    testWidgets('KeyStore removeKey', (WidgetTester tester) async {
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

      final addedKey = await keystore.addKey(addKeyInputLabs);
      final removed = await keystore.removeKey(publicKey: addedKey);

      final entries = await keystore.getEntries();
      expect(entries.length, 0);
      expect(removed, isTrue);
    });

    testWidgets('KeyStore removeKeys', (WidgetTester tester) async {
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

      final addedKey1 = await keystore.addKey(addKeyInputLabs);
      final addedKey2 = await keystore.addKey(addKeyInputLegacy);
      final removed = await keystore.removeKeys(
        publicKeys: [addedKey1, addedKey2],
      );

      final entries = await keystore.getEntries();

      expect(entries.length, 0);
      expect(jsonEncode(removed), jsonEncode([addedKey1, addedKey2]));
    });

    testWidgets('KeyStore clearStore', (WidgetTester tester) async {
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

      await keystore.addKey(addKeyInputLabs);
      await keystore.addKey(addKeyInputLegacy);
      await keystore.clearStore();

      final entries = await keystore.getEntries();

      expect(entries.length, 0);
    });

    testWidgets('KeyStore exportKey', (WidgetTester tester) async {
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
      final exported = (await keystore.exportSeed(DerivedKeyExportSeedParams(
        password: inputLabsData.password,
        masterKey: key,
      ))) as DerivedKeyExportOutput;

      expect(exported.phrase, inputLabsData.phrase);
    });

    testWidgets('KeyStore getPublicKeys', (WidgetTester tester) async {
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
      final keys = await keystore.getPublicKeys(DerivedKeyGetPublicKeys(
        masterKey: key,
        password: inputLabsData.password,
        offset: 0,
        limit: 5,
      ));

      expect(keys.length, 5);
      expect(keys[0], key);
    });

    testWidgets('KeyStore updateKey', (WidgetTester tester) async {
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
      await keystore.updateKey(DerivedKeyUpdateParams.renameKey(
        DerivedKeyUpdateParamsRenameKey(
          name: 'Renamed',
          publicKey: key,
          masterKey: key,
        ),
      ));
      final entry = (await keystore.getEntries()).first;

      expect(entry.name, 'Renamed');
      expect(entry.publicKey, key);
      expect(entry.masterKey, key);
      expect(entry.isLegacy, false);
      expect(storageMethods.data.length, 1);
    });
  });
}
