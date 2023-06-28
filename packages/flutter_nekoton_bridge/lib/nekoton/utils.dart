import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Json converter of amount value from string to Fixed (without currency
/// identification)
const amountJsonConverter = _FixedJsonConverter();

/// Json converter of address value from string to Address
const addressJsonConverter = _AddressJsonConverter();

/// Json converter of publi ckey value from string to Address
const publicKeyJsonConverter = _PublicKeyJsonConverter();

class _FixedJsonConverter extends JsonConverter<Fixed, String> {
  const _FixedJsonConverter();

  @override
  Fixed fromJson(String json) => Fixed.parse(json);

  @override
  String toJson(Fixed object) => object.toString();
}

class _AddressJsonConverter implements JsonConverter<Address, String> {
  const _AddressJsonConverter();

  @override
  Address fromJson(String json) {
    return Address(address: json);
  }

  @override
  String toJson(Address address) => address.address;
}

class _PublicKeyJsonConverter implements JsonConverter<PublicKey, String> {
  const _PublicKeyJsonConverter();

  @override
  PublicKey fromJson(String json) {
    return PublicKey(publicKey: json);
  }

  @override
  String toJson(PublicKey publicKey) => publicKey.publicKey;
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
