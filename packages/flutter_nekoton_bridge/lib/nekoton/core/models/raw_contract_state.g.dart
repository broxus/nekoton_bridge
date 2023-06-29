// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_contract_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotExists _$$_NotExistsFromJson(Map<String, dynamic> json) => _$_NotExists(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_NotExistsToJson(_$_NotExists instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$_Exists _$$_ExistsFromJson(Map<String, dynamic> json) => _$_Exists(
      ExistingContract.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_ExistsToJson(_$_Exists instance) => <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
