// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_create_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Import _$ImportFromJson(Map<String, dynamic> json) => _Import(
      DerivedKeyCreateInputImport.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ImportToJson(_Import instance) => <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_Derive _$DeriveFromJson(Map<String, dynamic> json) => _Derive(
      DerivedKeyCreateInputDerive.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$DeriveToJson(_Derive instance) => <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
