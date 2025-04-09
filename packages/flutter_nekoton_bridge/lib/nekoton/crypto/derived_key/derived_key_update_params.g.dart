// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_update_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RenameKey _$RenameKeyFromJson(Map<String, dynamic> json) => _RenameKey(
      DerivedKeyUpdateParamsRenameKey.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$RenameKeyToJson(_RenameKey instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_ChangePassword _$ChangePasswordFromJson(Map<String, dynamic> json) =>
    _ChangePassword(
      DerivedKeyUpdateParamsChangePassword.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ChangePasswordToJson(_ChangePassword instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
