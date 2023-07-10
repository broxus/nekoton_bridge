import 'package:flutter_nekoton_bridge/nekoton/core/models/contract_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_state_changed_payload.freezed.dart';
part 'on_state_changed_payload.g.dart';

@freezed
class OnStateChangedPayload with _$OnStateChangedPayload {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory OnStateChangedPayload({
    required final ContractState newState,
  }) = _OnStateChangedPayload;

  factory OnStateChangedPayload.fromJson(Map<String, dynamic> json) =>
      _$OnStateChangedPayloadFromJson(json);
}
