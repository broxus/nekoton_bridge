// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_sign_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DerivedKeyPasswordByAccountId _$DerivedKeyPasswordByAccountIdFromJson(
  Map<String, dynamic> json,
) => _DerivedKeyPasswordByAccountId(
  DerivedKeyPasswordByAccountId.fromJson(json['data'] as Map<String, dynamic>),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$DerivedKeyPasswordByAccountIdToJson(
  _DerivedKeyPasswordByAccountId instance,
) => <String, dynamic>{'data': instance.data.toJson(), 'type': instance.$type};

_DerivedKeyPasswordByPublicKey _$DerivedKeyPasswordByPublicKeyFromJson(
  Map<String, dynamic> json,
) => _DerivedKeyPasswordByPublicKey(
  DerivedKeyPasswordByPublicKey.fromJson(json['data'] as Map<String, dynamic>),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$DerivedKeyPasswordByPublicKeyToJson(
  _DerivedKeyPasswordByPublicKey instance,
) => <String, dynamic>{'data': instance.data.toJson(), 'type': instance.$type};
