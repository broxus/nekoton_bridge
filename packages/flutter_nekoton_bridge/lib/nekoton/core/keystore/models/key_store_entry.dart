import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/encrypted_key/constants.dart';

part 'key_store_entry.freezed.dart';

part 'key_store_entry.g.dart';

@freezed
class KeyStoreEntry with _$KeyStoreEntry implements Comparable<KeyStoreEntry> {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory KeyStoreEntry({
    required String signerName,
    required String name,
    required String publicKey,
    required String masterKey,
    required int accountId,
  }) = _KeyStoreEntry;

  factory KeyStoreEntry.fromJson(Map<String, dynamic> json) =>
      _$KeyStoreEntryFromJson(json);

  const KeyStoreEntry._();

  bool get isLegacy => signerName == encryptedKeySignerName;

  bool get isNotLegacy => !isLegacy;

  bool get isMaster => publicKey == masterKey;

  @override
  int compareTo(KeyStoreEntry other) => publicKey.compareTo(other.publicKey);
}