// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_export_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DerivedKeyExportSeedParams _$DerivedKeyExportSeedParamsFromJson(
        Map<String, dynamic> json) =>
    _DerivedKeyExportSeedParams(
      masterKey: PublicKey.fromJson(json['master_key'] as String),
      password: Password.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DerivedKeyExportSeedParamsToJson(
        _DerivedKeyExportSeedParams instance) =>
    <String, dynamic>{
      'master_key': instance.masterKey.toJson(),
      'password': instance.password.toJson(),
    };
