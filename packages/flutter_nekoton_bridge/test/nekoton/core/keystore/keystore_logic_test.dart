import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

class MockKeystoreDartWrapper extends Mock implements KeystoreDartWrapper {}

class FakeExportKeyInput implements ExportKeyInput {
  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'type': 'fake'};
}

void main() {
  group('KeyStore', () {
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
