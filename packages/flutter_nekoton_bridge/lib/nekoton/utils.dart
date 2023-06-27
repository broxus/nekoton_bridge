import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

const amountJsonConverter = AmountJsonConverter();
const addressJsonConverter = AddressJsonConverter();

/// Json converter of amount value from string to Fixed (without currency
/// identification)
class AmountJsonConverter extends JsonConverter<Fixed, String> {
  const AmountJsonConverter();

  @override
  Fixed fromJson(String json) => Fixed.parse(json);

  @override
  String toJson(Fixed object) => object.toString();
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

class AddressJsonConverter implements JsonConverter<Address, String> {
  const AddressJsonConverter();

  @override
  Address fromJson(String json) {
    return Address(address: json);
  }

  @override
  String toJson(Address address) => address.address;
}
