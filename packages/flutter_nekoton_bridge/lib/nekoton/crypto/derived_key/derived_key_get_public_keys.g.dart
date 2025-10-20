// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_get_public_keys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DerivedKeyGetPublicKeys _$DerivedKeyGetPublicKeysFromJson(
  Map<String, dynamic> json,
) => _DerivedKeyGetPublicKeys(
  masterKey: PublicKey.fromJson(json['master_key'] as String),
  password: Password.fromJson(json['password'] as Map<String, dynamic>),
  limit: (json['limit'] as num).toInt(),
  offset: (json['offset'] as num).toInt(),
);

Map<String, dynamic> _$DerivedKeyGetPublicKeysToJson(
  _DerivedKeyGetPublicKeys instance,
) => <String, dynamic>{
  'master_key': instance.masterKey.toJson(),
  'password': instance.password.toJson(),
  'limit': instance.limit,
  'offset': instance.offset,
};
