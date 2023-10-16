// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_get_public_keys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DerivedKeyGetPublicKeysRenameImpl
    _$$DerivedKeyGetPublicKeysRenameImplFromJson(Map<String, dynamic> json) =>
        _$DerivedKeyGetPublicKeysRenameImpl(
          masterKey: PublicKey.fromJson(json['master_key'] as String),
          password: Password.fromJson(json['password'] as Map<String, dynamic>),
          limit: json['limit'] as int,
          offset: json['offset'] as int,
        );

Map<String, dynamic> _$$DerivedKeyGetPublicKeysRenameImplToJson(
        _$DerivedKeyGetPublicKeysRenameImpl instance) =>
    <String, dynamic>{
      'master_key': instance.masterKey.toJson(),
      'password': instance.password.toJson(),
      'limit': instance.limit,
      'offset': instance.offset,
    };
