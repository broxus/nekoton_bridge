// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_contract_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RawContractStateNotExists _$RawContractStateNotExistsFromJson(
        Map<String, dynamic> json) =>
    RawContractStateNotExists(
      NotExistingContract.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$RawContractStateNotExistsToJson(
        RawContractStateNotExists instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

RawContractStateExists _$RawContractStateExistsFromJson(
        Map<String, dynamic> json) =>
    RawContractStateExists(
      ExistingContract.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$RawContractStateExistsToJson(
        RawContractStateExists instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
