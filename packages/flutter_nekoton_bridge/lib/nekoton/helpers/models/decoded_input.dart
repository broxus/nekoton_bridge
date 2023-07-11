import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/helpers/models/tokens_object.dart';

part 'decoded_input.freezed.dart';
part 'decoded_input.g.dart';

@freezed
sealed class DecodedInput with _$DecodedInput {
  const factory DecodedInput({
    required final String method,
    required final TokensObject input,
  }) = _DecodedInput;

  factory DecodedInput.fromJson(Map<String, dynamic> json) =>
      _$DecodedInputFromJson(json);
}
