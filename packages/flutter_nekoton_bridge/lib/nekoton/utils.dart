import 'package:freezed_annotation/freezed_annotation.dart';

const amountConverter = AmountJsonConverter();

/// Json converter of amount value from string to BigInt
class AmountJsonConverter extends JsonConverter<BigInt, String> {
  const AmountJsonConverter();

  @override
  BigInt fromJson(String json) => BigInt.parse(json);

  @override
  String toJson(BigInt object) => object.toString();
}
