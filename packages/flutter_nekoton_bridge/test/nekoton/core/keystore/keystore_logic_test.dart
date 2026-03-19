import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

class MockBridge extends Mock implements NekotonBridgeApi {}

class MockKeystoreDartWrapper extends Mock implements KeystoreDartWrapper {}

class MockArcKeyStoreApiBoxTrait extends Mock
    implements ArcKeyStoreApiBoxTrait {}

class MockArcStorageBoxTrait extends Mock implements ArcStorageBoxTrait {}

class FakeArcStorageBoxTrait extends Fake implements ArcStorageBoxTrait {}

class FakeArcUnsignedMessageBoxTrait extends Fake
    implements ArcUnsignedMessageBoxTrait {}

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

const _password = Password.explicit(
  PasswordExplicit(
    password: 'pass',
    cacheBehavior: PasswordCacheBehavior.nop(),
  ),
);

const _publicKey = PublicKey(
  publicKey: 'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
);

const _entryJson = {
  'signer_name': 'EncryptedKeySigner',
  'name': 'legacy',
  'public_key':
      'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
  'master_key':
      'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
  'account_id': 0,
};

const _signatureContext = SignatureContext(
  globalId: 42,
  signatureType: SignatureType.signatureDomain,
);

class FakeExportKeyInput implements ExportKeyInput {
  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'type': 'fake'};
}

void main() {
  group('KeyStore', () {
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

    test('create initializes wrapper and loads keys', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final innerKeystore = MockArcKeyStoreApiBoxTrait();
      final wrapper = KeystoreDartWrapper(innerKeystore: innerKeystore);

      when(
        () => bridge.crateApiMergedKeystoreDartWrapperNew(
          storage: any(named: 'storage'),
          signers: const [KeySigner.encrypted()],
          ledgerConnection: null,
        ),
      ).thenAnswer((_) async => wrapper);
      when(
        () => bridge.crateApiMergedKeystoreDartWrapperGetEntries(that: wrapper),
      ).thenAnswer((_) async => jsonEncode([_entryJson]));

      // Act
      final keyStore = await KeyStore.create(
        storage: storage,
        signers: const [KeySigner.encrypted()],
      );

      // Assert
      expect(keyStore.keys.length, 1);
      expect(keyStore.keys.single.publicKey, _publicKey);
    });

    test('addKey returns public key and refreshes cache', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      const password = Password.explicit(
        PasswordExplicit(
          password: 'pass',
          cacheBehavior: PasswordCacheBehavior.nop(),
        ),
      );
      final input = EncryptedKeyCreateInput(
        name: 'legacy',
        phrase: 'another phrase another phrase another phrase',
        mnemonicType: const MnemonicType.legacy(),
        password: password,
      );
      final entry = {
        'signer_name': 'EncryptedKeySigner',
        'name': 'legacy',
        'public_key':
            'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
        'master_key':
            'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
        'account_id': 0,
      };

      when(
        () =>
            keystore.addKey(signer: input.toSigner(), input: jsonEncode(input)),
      ).thenAnswer((_) async => jsonEncode(entry));
      when(
        () => keystore.getEntries(),
      ).thenAnswer((_) async => jsonEncode([entry]));

      // Act
      final publicKey = await keyStore.addKey(input);

      // Assert
      expect(
        publicKey,
        const PublicKey(
          publicKey:
              'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
        ),
      );
      expect(keyStore.keys.single.publicKey, publicKey);
      verify(
        () =>
            keystore.addKey(signer: input.toSigner(), input: jsonEncode(input)),
      ).called(1);
      verify(() => keystore.getEntries()).called(1);
    });

    test('addKeys returns public keys and refreshes cache', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      final inputs = [
        EncryptedKeyCreateInput(
          name: 'legacy',
          phrase: 'another phrase another phrase another phrase',
          mnemonicType: const MnemonicType.legacy(),
          password: _password,
        ),
        EncryptedKeyCreateInput(
          name: 'legacy-2',
          phrase: 'third phrase third phrase third phrase',
          mnemonicType: const MnemonicType.legacy(),
          password: _password,
        ),
      ];
      const secondEntry = {
        'signer_name': 'EncryptedKeySigner',
        'name': 'legacy-2',
        'public_key':
            'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee',
        'master_key':
            'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee',
        'account_id': 0,
      };

      when(
        () => keystore.addKeys(
          signer: const KeySigner.encrypted(),
          input: jsonEncode(inputs),
        ),
      ).thenAnswer((_) async => jsonEncode([_entryJson, secondEntry]));
      when(
        () => keystore.getEntries(),
      ).thenAnswer((_) async => jsonEncode([_entryJson, secondEntry]));

      // Act
      final keys = await keyStore.addKeys(inputs);

      // Assert
      expect(keys, const [
        PublicKey(
          publicKey:
              'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
        ),
        PublicKey(
          publicKey:
              'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee',
        ),
      ]);
      expect(keyStore.keys.length, 2);
    });

    test('getEntries parses returned JSON', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      final publicKey = 'a' * 64;
      final payload = jsonEncode([
        {
          'signer_name': 'DerivedKeySigner',
          'name': 'key-1',
          'public_key': publicKey,
          'master_key': publicKey,
          'account_id': 0,
        },
      ]);

      when(() => keystore.getEntries()).thenAnswer((_) async => payload);

      // Act
      final entries = await keyStore.getEntries();

      // Assert
      expect(entries.length, 1);
      expect(entries.first.name, 'key-1');
      expect(entries.first.publicKey.publicKey, publicKey);
      expect(entries.first.masterKey.publicKey, publicKey);
      expect(entries.first.signerName, 'DerivedKeySigner');
    });

    test('updateKey refreshes cache', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      const input = EncryptedKeyUpdateParams.rename(
        EncryptedKeyUpdateParamsRename(publicKey: _publicKey, name: 'renamed'),
      );
      const renamedEntry = {
        'signer_name': 'EncryptedKeySigner',
        'name': 'renamed',
        'public_key':
            'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
        'master_key':
            'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
        'account_id': 0,
      };

      when(
        () => keystore.updateKey(
          signer: const KeySigner.encrypted(),
          input: jsonEncode(input),
        ),
      ).thenAnswer((_) async => jsonEncode(renamedEntry));
      when(
        () => keystore.getEntries(),
      ).thenAnswer((_) async => jsonEncode([renamedEntry]));

      // Act
      await keyStore.updateKey(input);

      // Assert
      expect(keyStore.keys.single.name, 'renamed');
    });

    test('exportSeed returns encrypted key export output', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      const input = EncryptedKeyPassword(
        publicKey: _publicKey,
        password: _password,
      );

      when(
        () => keystore.exportSeed(
          signer: const KeySigner.encrypted(),
          input: jsonEncode(input),
        ),
      ).thenAnswer(
        (_) async => jsonEncode({
          'phrase': 'seed phrase',
          'mnemonicType': {'type': 'legacy'},
        }),
      );

      // Act
      final result = await keyStore.exportSeed(input);

      // Assert
      expect(
        result,
        EncryptedKeyExportSeedOutput(
          phrase: 'seed phrase',
          mnemonicType: const MnemonicType.legacy(),
        ),
      );
    });

    test('exportSeed returns derived key export output', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      const input = DerivedKeyExportSeedParams(
        masterKey: _publicKey,
        password: _password,
      );

      when(
        () => keystore.exportSeed(
          signer: const KeySigner.derived(),
          input: jsonEncode(input),
        ),
      ).thenAnswer((_) async => jsonEncode({'phrase': 'derived phrase'}));

      // Act
      final result = await keyStore.exportSeed(input);

      // Assert
      expect(result, const DerivedKeyExportOutput(phrase: 'derived phrase'));
    });

    test('getPublicKeys maps returned keys', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      const input = EncryptedKeyGetPublicKeys(publicKey: _publicKey);

      when(
        () => keystore.getPublicKeys(
          signer: const KeySigner.encrypted(),
          input: jsonEncode(input),
        ),
      ).thenAnswer(
        (_) async => [
          'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
          'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee',
        ],
      );

      // Act
      final result = await keyStore.getPublicKeys(input);

      // Assert
      expect(result.length, 2);
      expect(result.first, _publicKey);
    });

    test('encrypt maps returned encrypted data', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      const input = EncryptedKeyPassword(
        publicKey: _publicKey,
        password: _password,
      );
      const encryptedJson = {
        'algorithm': 'ChaCha20Poly1305',
        'sourcePublicKey':
            'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
        'recipientPublicKey':
            'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee',
        'data': 'cipher',
        'nonce': 'nonce',
      };

      when(
        () => keystore.encrypt(
          signer: const KeySigner.encrypted(),
          input: jsonEncode(input),
          data: 'payload',
          algorithm: 'ChaCha20Poly1305',
          publicKeys: const [
            'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
          ],
        ),
      ).thenAnswer((_) async => jsonEncode([encryptedJson]));

      // Act
      final result = await keyStore.encrypt(
        data: 'payload',
        publicKeys: const [_publicKey],
        algorithm: EncryptionAlgorithm.chaCha20Poly1305,
        input: input,
      );

      // Assert
      expect(result, [EncryptedData.fromJson(encryptedJson)]);
    });

    test('decrypt returns native output', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      const input = EncryptedKeyPassword(
        publicKey: _publicKey,
        password: _password,
      );
      final data = EncryptedData.fromJson(const {
        'algorithm': 'ChaCha20Poly1305',
        'sourcePublicKey':
            'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
        'recipientPublicKey':
            'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee',
        'data': 'cipher',
        'nonce': 'nonce',
      });

      when(
        () => keystore.decrypt(
          signer: const KeySigner.encrypted(),
          input: jsonEncode(input),
          data: jsonEncode(data),
        ),
      ).thenAnswer((_) async => 'plain');

      // Act
      final result = await keyStore.decrypt(data: data, input: input);

      // Assert
      expect(result, 'plain');
    });

    test('sign forwards message and context', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      const input = EncryptedKeyPassword(
        publicKey: _publicKey,
        password: _password,
      );
      final message = UnsignedMessageImpl(
        innerMessage: FakeArcUnsignedMessageBoxTrait(),
      );

      when(
        () => keystore.sign(
          signer: const KeySigner.encrypted(),
          input: jsonEncode(input),
          message: message,
          signatureCtx: _signatureContext,
        ),
      ).thenAnswer((_) async => 'signature');

      // Act
      final result = await keyStore.sign(
        message: message,
        input: input,
        signatureContext: _signatureContext,
      );

      // Assert
      expect(result, 'signature');
    });

    test('signData returns native signed data', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      const input = EncryptedKeyPassword(
        publicKey: _publicKey,
        password: _password,
      );
      const output = SignedData(
        dataHash: 'hash',
        signature: 'signature',
        signatureHex: 'deadbeef',
        signatureParts: SignatureParts(low: 'low', high: 'high'),
      );

      when(
        () => keystore.signData(
          signer: const KeySigner.encrypted(),
          input: jsonEncode(input),
          data: 'payload',
          signatureCtx: _signatureContext,
        ),
      ).thenAnswer((_) async => output);

      // Act
      final result = await keyStore.signData(
        data: 'payload',
        input: input,
        signatureContext: _signatureContext,
      );

      // Assert
      expect(result, output);
    });

    test('signDataRaw returns native signed data raw', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      const input = EncryptedKeyPassword(
        publicKey: _publicKey,
        password: _password,
      );
      const output = SignedDataRaw(
        signature: 'signature',
        signatureHex: 'deadbeef',
        signatureParts: SignatureParts(low: 'low', high: 'high'),
      );

      when(
        () => keystore.signDataRaw(
          signer: const KeySigner.encrypted(),
          input: jsonEncode(input),
          data: 'payload',
          signatureCtx: _signatureContext,
        ),
      ).thenAnswer((_) async => output);

      // Act
      final result = await keyStore.signDataRaw(
        data: 'payload',
        input: input,
        signatureContext: _signatureContext,
      );

      // Assert
      expect(result, output);
    });

    test('removeKey returns false when native returns null', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      final publicKey = PublicKey(publicKey: 'b' * 64);

      when(
        () => keystore.removeKey(publicKey: publicKey.publicKey),
      ).thenAnswer((_) async => null);

      // Act
      final removed = await keyStore.removeKey(publicKey: publicKey);

      // Assert
      expect(removed, isFalse);
      verifyNever(() => keystore.getEntries());
    });

    test(
      'removeKey returns true and refreshes cache when native removes key',
      () async {
        // Arrange
        final storage = createInMemoryStorage();
        final keystore = MockKeystoreDartWrapper();
        final keyStore = KeyStore.test(
          storage: storage,
          keystore: keystore,
          initialKeys: const [],
        );

        when(
          () => keystore.removeKey(publicKey: _publicKey.publicKey),
        ).thenAnswer((_) async => jsonEncode(_entryJson));
        when(
          () => keystore.getEntries(),
        ).thenAnswer((_) async => jsonEncode([]));

        // Act
        final removed = await keyStore.removeKey(publicKey: _publicKey);

        // Assert
        expect(removed, isTrue);
        expect(keyStore.keys, isEmpty);
      },
    );

    test('removeKeys returns removed keys and refreshes cache', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: [KeyStoreEntry.fromJson(_entryJson)],
      );

      when(
        () => keystore.removeKeys(publicKeys: [_publicKey.publicKey]),
      ).thenAnswer((_) async => jsonEncode([_entryJson]));
      when(() => keystore.getEntries()).thenAnswer((_) async => jsonEncode([]));

      // Act
      final removed = await keyStore.removeKeys(publicKeys: const [_publicKey]);

      // Assert
      expect(removed, const [_publicKey]);
      expect(keyStore.keys, isEmpty);
    });

    test('isPasswordCached forwards duration in milliseconds', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );

      when(
        () => keystore.isPasswordCached(
          publicKey: _publicKey.publicKey,
          duration: BigInt.from(5000),
        ),
      ).thenAnswer((_) async => true);

      // Act
      final result = await keyStore.isPasswordCached(
        publicKey: _publicKey,
        duration: const Duration(seconds: 5),
      );

      // Assert
      expect(result, isTrue);
    });

    test('clearStore refreshes cache', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: [KeyStoreEntry.fromJson(_entryJson)],
      );

      when(() => keystore.clearKeystore()).thenAnswer((_) async => '{}');
      when(() => keystore.getEntries()).thenAnswer((_) async => jsonEncode([]));

      // Act
      await keyStore.clearStore();

      // Assert
      expect(keyStore.keys, isEmpty);
    });

    test('reloadKeystore refreshes cache', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );

      when(() => keystore.reloadKeystore()).thenAnswer((_) async => '{}');
      when(
        () => keystore.getEntries(),
      ).thenAnswer((_) async => jsonEncode([_entryJson]));

      // Act
      await keyStore.reloadKeystore();

      // Assert
      expect(keyStore.keys, [KeyStoreEntry.fromJson(_entryJson)]);
    });

    test('verifyData forwards to bridge api', () async {
      // Arrange
      when(
        () => bridge.crateApiMergedKeystoreDartWrapperVerifyData(
          signers: const [KeySigner.encrypted()],
          ledgerConnection: null,
          data: 'payload',
        ),
      ).thenAnswer((_) async => true);

      // Act
      final result = await KeyStore.verifyData(
        signers: const [KeySigner.encrypted()],
        data: 'payload',
      );

      // Assert
      expect(result, isTrue);
    });

    test('dispose closes stream and disposes storage and keystore', () async {
      // Arrange
      final storageInner = MockArcStorageBoxTrait();
      final keystoreInner = MockArcKeyStoreApiBoxTrait();
      final storage = _createDisposableStorage(storageInner);
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: KeystoreDartWrapper(innerKeystore: keystoreInner),
        initialKeys: const [],
      );

      when(() => storageInner.dispose()).thenReturn(null);
      when(() => keystoreInner.dispose()).thenReturn(null);

      // Act
      keyStore.dispose();

      // Assert
      await expectLater(
        keyStore.keysStream,
        emitsInOrder([isEmpty, emitsDone]),
      );
      verify(() => storageInner.dispose()).called(1);
      verify(() => keystoreInner.dispose()).called(1);
    });

    test('addKeys throws AssertionError for mixed signers', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      const password = Password.explicit(
        PasswordExplicit(
          password: 'pass',
          cacheBehavior: PasswordCacheBehavior.nop(),
        ),
      );
      const derivedInput = DerivedKeyCreateInput.import(
        DerivedKeyCreateInputImport(
          keyName: 'derived',
          phrase: 'test phrase test phrase test phrase test phrase test phrase',
          password: password,
        ),
      );
      final encryptedInput = EncryptedKeyCreateInput(
        name: 'legacy',
        phrase: 'another phrase another phrase another phrase',
        mnemonicType: const MnemonicType.legacy(),
        password: password,
      );

      // Act
      final call = keyStore.addKeys([derivedInput, encryptedInput]);

      // Assert
      await expectLater(call, throwsA(isA<AssertionError>()));
      verifyNever(
        () => keystore.addKeys(
          signer: const KeySigner.derived(),
          input: any(named: 'input'),
        ),
      );
    });

    test('exportSeed throws UnsupportedError for unknown input', () async {
      // Arrange
      final storage = createInMemoryStorage();
      final keystore = MockKeystoreDartWrapper();
      final keyStore = KeyStore.test(
        storage: storage,
        keystore: keystore,
        initialKeys: const [],
      );
      final input = FakeExportKeyInput();

      // Act
      final call = keyStore.exportSeed(input);

      // Assert
      await expectLater(call, throwsA(isA<UnsupportedError>()));
      verifyNever(
        () => keystore.exportSeed(
          signer: const KeySigner.derived(),
          input: any(named: 'input'),
        ),
      );
    });
  });
}
