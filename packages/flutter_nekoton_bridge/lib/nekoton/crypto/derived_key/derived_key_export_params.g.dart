// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_export_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DerivedKeyExportSeedParamsImpl _$$DerivedKeyExportSeedParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$DerivedKeyExportSeedParamsImpl(
      masterKey: PublicKey.fromJson(json['master_key'] as String),
      password: Password.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DerivedKeyExportSeedParamsImplToJson(
        _$DerivedKeyExportSeedParamsImpl instance) =>
    <String, dynamic>{
      'master_key': instance.masterKey.toJson(),
      'password': instance.password.toJson(),
    };
