// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_update_params_rename_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DerivedKeyUpdateParamsRenameKeyRenameKey
    _$$_DerivedKeyUpdateParamsRenameKeyRenameKeyFromJson(
            Map<String, dynamic> json) =>
        _$_DerivedKeyUpdateParamsRenameKeyRenameKey(
          masterKey:
              publicKeyJsonConverter.fromJson(json['master_key'] as String),
          publicKey:
              publicKeyJsonConverter.fromJson(json['public_key'] as String),
          name: json['name'] as String,
        );

Map<String, dynamic> _$$_DerivedKeyUpdateParamsRenameKeyRenameKeyToJson(
        _$_DerivedKeyUpdateParamsRenameKeyRenameKey instance) =>
    <String, dynamic>{
      'master_key': publicKeyJsonConverter.toJson(instance.masterKey),
      'public_key': publicKeyJsonConverter.toJson(instance.publicKey),
      'name': instance.name,
    };
