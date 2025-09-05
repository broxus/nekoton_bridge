import 'package:crypto/crypto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nekoton_bridge/nekoton_bridge.dart' as lib;

/// Json converter for date time from secondsSinceEpoch (typically used for
/// fields such as expireAt)
const dateSecondsSinceEpochJsonConverter = _DateTimeJsonConverter();

class _DateTimeJsonConverter extends JsonConverter<DateTime, int> {
  const _DateTimeJsonConverter();

  @override
  DateTime fromJson(int json) =>
      DateTime.fromMillisecondsSinceEpoch(json * 1000);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch ~/ 1000;
}

/// Get name of KeySigner, same as in rust side
extension KeySignerName on lib.KeySigner {
  String get name => switch (this) {
        lib.KeySigner_Encrypted() => 'EncryptedKeySigner',
        lib.KeySigner_Derived() => 'DerivedKeySigner',
        lib.KeySigner_Ledger() => 'LedgerKeySigner',
        _ => '',
      };
}

/// Get hash of String
String getHash(String string) => sha256.convert(string.codeUnits).toString();
