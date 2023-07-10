import 'package:flutter_nekoton_bridge/nekoton/helpers/models/tokens_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'function_call.freezed.dart';
part 'function_call.g.dart';

@freezed
class FunctionCall with _$FunctionCall {
  const factory FunctionCall({
    required final String abi,
    required final String method,
    required final TokensObject params,
  }) = _FunctionCall;

  factory FunctionCall.fromJson(Map<String, dynamic> json) =>
      _$FunctionCallFromJson(json);
}
