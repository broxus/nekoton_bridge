// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_contract_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotExistsImpl _$$NotExistsImplFromJson(Map<String, dynamic> json) =>
    _$NotExistsImpl(
      NotExistingContract.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$NotExistsImplToJson(_$NotExistsImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$ExistsImpl _$$ExistsImplFromJson(Map<String, dynamic> json) => _$ExistsImpl(
      ExistingContract.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ExistsImplToJson(_$ExistsImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
