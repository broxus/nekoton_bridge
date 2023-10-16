// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_update_params_rename_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl
    _$$DerivedKeyUpdateParamsRenameKeyRenameKeyImplFromJson(
            Map<String, dynamic> json) =>
        _$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl(
          masterKey: PublicKey.fromJson(json['master_key'] as String),
          publicKey: PublicKey.fromJson(json['public_key'] as String),
          name: json['name'] as String,
        );

Map<String, dynamic> _$$DerivedKeyUpdateParamsRenameKeyRenameKeyImplToJson(
        _$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl instance) =>
    <String, dynamic>{
      'master_key': instance.masterKey.toJson(),
      'public_key': instance.publicKey.toJson(),
      'name': instance.name,
    };
