import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_swap_back.freezed.dart';

part 'token_swap_back.g.dart';

@freezed
sealed class TokenSwapBack with _$TokenSwapBack {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TokenSwapBack({
    @amountJsonConverter required final BigInt tokens,
    required final Address callbackAddress,
    required final String callbackPayload,
  }) = _TokenSwapBack;

  factory TokenSwapBack.fromJson(Map<String, dynamic> json) =>
      _$TokenSwapBackFromJson(json);
}
