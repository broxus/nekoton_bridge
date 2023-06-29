import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/helpers/models/tokens_object.dart';

part 'execution_output.freezed.dart';
part 'execution_output.g.dart';

@freezed
class ExecutionOutput with _$ExecutionOutput {
  const factory ExecutionOutput({
    @JsonKey(includeIfNull: false) final TokensObject? output,
    required final int code,
  }) = _ExecutionOutput;

  factory ExecutionOutput.fromJson(Map<String, dynamic> json) =>
      _$ExecutionOutputFromJson(json);
}
