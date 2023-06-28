import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:flutter_nekoton_bridge/nekoton/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_swap_back.freezed.dart';
part 'token_swap_back.g.dart';

@freezed
class TokenSwapBack with _$TokenSwapBack {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TokenSwapBack({
    required final String tokens,
    @addressJsonConverter required final Address callbackAddress,
    required final String callbackPayload,
  }) = _TokenSwapBack;

  factory TokenSwapBack.fromJson(Map<String, dynamic> json) =>
      _$TokenSwapBackFromJson(json);
}
