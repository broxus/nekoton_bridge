// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_update_params_rename_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DerivedKeyUpdateParamsRenameKey _$DerivedKeyUpdateParamsRenameKeyFromJson(
        Map<String, dynamic> json) =>
    _DerivedKeyUpdateParamsRenameKey(
      masterKey: PublicKey.fromJson(json['master_key'] as String),
      publicKey: PublicKey.fromJson(json['public_key'] as String),
      name: json['name'] as String,
    );

Map<String, dynamic> _$DerivedKeyUpdateParamsRenameKeyToJson(
        _DerivedKeyUpdateParamsRenameKey instance) =>
    <String, dynamic>{
      'master_key': instance.masterKey.toJson(),
      'public_key': instance.publicKey.toJson(),
      'name': instance.name,
    };
