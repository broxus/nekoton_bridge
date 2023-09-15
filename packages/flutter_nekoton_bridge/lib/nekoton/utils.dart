import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Json converter of amount value from string to BigInt (without currency
/// identification)
const amountJsonConverter = _BigIntJsonConverter();

/// Json converter of Uri value from string to Uri
const uriJsonConverter = _UriJsonConverter();

/// Json converter for date time from secondsSinceEpoch (typically used for
/// fields such as expireAt)
const dateSecondsSinceEpochJsonConverter = _DateTimeJsonConverter();

/// We are using BigInt instead of Fixed, because Fixed do not apply scale
/// factor when converting to Money via Money.fromFixedWithCurrency.
class _BigIntJsonConverter extends JsonConverter<BigInt, String> {
  const _BigIntJsonConverter();

  @override
  BigInt fromJson(String json) => BigInt.parse(json);

  @override
  String toJson(BigInt object) => object.toString();
}

class _UriJsonConverter extends JsonConverter<Uri, String> {
  const _UriJsonConverter();

  @override
  Uri fromJson(String json) => Uri.parse(json);

  @override
  String toJson(Uri object) => object.toString();
}

class _DateTimeJsonConverter extends JsonConverter<DateTime, int> {
  const _DateTimeJsonConverter();

  @override
  DateTime fromJson(int json) =>
      DateTime.fromMillisecondsSinceEpoch(json * 1000);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch ~/ 1000;
}

/// Get name of KeySigner, same as in rust side
extension KeySignerName on KeySigner {
  String get name {
    return maybeWhen(
      encrypted: () => 'EncryptedKeySigner',
      derived: () => 'DerivedKeySigner',
      ledger: () => 'LedgerKeySigner',
      orElse: () => '',
    );
  }
}
