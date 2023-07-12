import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Json converter of amount value from string to Fixed (without currency
/// identification)
const amountJsonConverter = _FixedJsonConverter();

/// Json converter of Uri value from string to Uri
const uriJsonConverter = _UriJsonConverter();

class _FixedJsonConverter extends JsonConverter<Fixed, String> {
  const _FixedJsonConverter();

  @override
  Fixed fromJson(String json) => Fixed.parse(json);

  @override
  String toJson(Fixed object) => object.toString();
}

class _UriJsonConverter extends JsonConverter<Uri, String> {
  const _UriJsonConverter();

  @override
  Uri fromJson(String json) => Uri.parse(json);

  @override
  String toJson(Uri object) => object.toString();
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
