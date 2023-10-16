// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_state_changed_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnStateChangedPayloadImpl _$$OnStateChangedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$OnStateChangedPayloadImpl(
      newState:
          ContractState.fromJson(json['new_state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OnStateChangedPayloadImplToJson(
        _$OnStateChangedPayloadImpl instance) =>
    <String, dynamic>{
      'new_state': instance.newState.toJson(),
    };
