// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_state_changed_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnStateChangedPayload _$$_OnStateChangedPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_OnStateChangedPayload(
      newState:
          ContractState.fromJson(json['new_state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OnStateChangedPayloadToJson(
        _$_OnStateChangedPayload instance) =>
    <String, dynamic>{
      'new_state': instance.newState.toJson(),
    };
