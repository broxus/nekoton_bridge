import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('KeyStoreEntry', () {
    const encrypted = KeyStoreEntry(
      signerName: 'EncryptedKeySigner',
      name: 'encrypted',
      publicKey: PublicKey(
        publicKey:
            'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      ),
      masterKey: PublicKey(
        publicKey:
            'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      ),
      accountId: 0,
    );
    const derived = KeyStoreEntry(
      signerName: 'DerivedKeySigner',
      name: 'derived',
      publicKey: PublicKey(
        publicKey:
            'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb',
      ),
      masterKey: PublicKey(
        publicKey:
            'cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc',
      ),
      accountId: 1,
    );
    const ledger = KeyStoreEntry(
      signerName: 'LedgerKeySigner',
      name: 'ledger',
      publicKey: PublicKey(
        publicKey:
            'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
      ),
      masterKey: PublicKey(
        publicKey:
            'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
      ),
      accountId: 2,
    );

    test('computed flags reflect signer and key relationships', () {
      expect(encrypted.isLegacy, isTrue);
      expect(encrypted.isNotLegacy, isFalse);
      expect(encrypted.isLedger, isFalse);
      expect(encrypted.isMaster, isTrue);

      expect(derived.isLegacy, isFalse);
      expect(derived.isNotLegacy, isTrue);
      expect(derived.isMaster, isFalse);

      expect(ledger.isLedger, isTrue);
    });

    test('signerType maps signer names', () {
      expect(encrypted.signerType, KeySignerType.encrypted);
      expect(derived.signerType, KeySignerType.derived);
      expect(ledger.signerType, KeySignerType.ledger);
    });

    test('compareTo compares by public key', () {
      expect(encrypted.compareTo(derived), lessThan(0));
      expect(derived.compareTo(encrypted), greaterThan(0));
    });

    test('invalid signer name throws state error', () {
      const invalid = KeyStoreEntry(
        signerName: 'UnknownSigner',
        name: 'invalid',
        publicKey: PublicKey(
          publicKey:
              'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee',
        ),
        masterKey: PublicKey(
          publicKey:
              'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee',
        ),
        accountId: 3,
      );

      expect(() => invalid.signerType, throwsA(isA<StateError>()));
    });
  });
}
