import 'package:flutter_nekoton_bridge/nekoton/helpers/models/tokens_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'decoded_input.freezed.dart';
part 'decoded_input.g.dart';

@freezed
class DecodedInput with _$DecodedInput {
  const factory DecodedInput({
    required final String method,
    required final TokensObject input,
  }) = _DecodedInput;

  factory DecodedInput.fromJson(Map<String, dynamic> json) =>
      _$DecodedInputFromJson(json);
}
