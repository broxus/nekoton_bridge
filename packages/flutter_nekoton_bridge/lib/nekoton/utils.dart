import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

const amountJsonConverter = AmountJsonConverter();

/// Json converter of amount value from string to BigInt
class AmountJsonConverter extends JsonConverter<BigInt, String> {
  const AmountJsonConverter();

  @override
  BigInt fromJson(String json) => BigInt.parse(json);

  @override
  String toJson(BigInt object) => object.toString();
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
