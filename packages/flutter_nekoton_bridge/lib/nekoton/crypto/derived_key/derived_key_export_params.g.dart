// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_export_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DerivedKeyExportParams _$$_DerivedKeyExportParamsFromJson(
        Map<String, dynamic> json) =>
    _$_DerivedKeyExportParams(
      masterKey: json['master_key'] as String,
      password: Password.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DerivedKeyExportParamsToJson(
        _$_DerivedKeyExportParams instance) =>
    <String, dynamic>{
      'master_key': instance.masterKey,
      'password': instance.password.toJson(),
    };
