// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_get_public_keys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DerivedKeyGetPublicKeysRename _$$_DerivedKeyGetPublicKeysRenameFromJson(
        Map<String, dynamic> json) =>
    _$_DerivedKeyGetPublicKeysRename(
      masterKey: json['master_key'] as String,
      password: Password.fromJson(json['password'] as Map<String, dynamic>),
      limit: json['limit'] as int,
      offset: json['offset'] as int,
    );

Map<String, dynamic> _$$_DerivedKeyGetPublicKeysRenameToJson(
        _$_DerivedKeyGetPublicKeysRename instance) =>
    <String, dynamic>{
      'master_key': instance.masterKey,
      'password': instance.password.toJson(),
      'limit': instance.limit,
      'offset': instance.offset,
    };
