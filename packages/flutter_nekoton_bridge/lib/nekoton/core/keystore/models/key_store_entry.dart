import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_store_entry.freezed.dart';
part 'key_store_entry.g.dart';

@freezed
sealed class KeyStoreEntry
    with _$KeyStoreEntry
    implements Comparable<KeyStoreEntry> {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory KeyStoreEntry({
    required final String signerName,
    required final String name,
    required final PublicKey publicKey,
    required final PublicKey masterKey,
    required int accountId,
  }) = _KeyStoreEntry;

  factory KeyStoreEntry.fromJson(Map<String, dynamic> json) =>
      _$KeyStoreEntryFromJson(json);

  const KeyStoreEntry._();

  bool get isLegacy => signerName == const KeySigner.encrypted().name;

  bool get isLedger => signerName == const KeySigner.ledger().name;

  bool get isNotLegacy => !isLegacy;

  bool get isMaster => publicKey == masterKey;

  KeySignerType get signerType => switch (signerName) {
        'EncryptedKeySigner' => KeySignerType.encrypted,
        'DerivedKeySigner' => KeySignerType.derived,
        'LedgerKeySigner' => KeySignerType.ledger,
        _ => throw StateError(
            'Invalid KeySigner. "KeySigner.stub" should not be used',
          ),
      };

  @override
  int compareTo(KeyStoreEntry other) => publicKey.compareTo(other.publicKey);
}
