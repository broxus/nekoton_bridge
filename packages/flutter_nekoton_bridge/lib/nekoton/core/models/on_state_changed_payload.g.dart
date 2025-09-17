// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_state_changed_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OnStateChangedPayload _$OnStateChangedPayloadFromJson(
  Map<String, dynamic> json,
) => _OnStateChangedPayload(
  newState: ContractState.fromJson(json['new_state'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OnStateChangedPayloadToJson(
  _OnStateChangedPayload instance,
) => <String, dynamic>{'new_state': instance.newState.toJson()};
