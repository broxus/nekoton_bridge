// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_update_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DerivedKeyUpdateParamsRenameKey _$DerivedKeyUpdateParamsRenameKeyFromJson(
        Map<String, dynamic> json) =>
    _DerivedKeyUpdateParamsRenameKey(
      DerivedKeyUpdateParamsRenameKey.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$DerivedKeyUpdateParamsRenameKeyToJson(
        _DerivedKeyUpdateParamsRenameKey instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_DerivedKeyUpdateParamsChangePassword
    _$DerivedKeyUpdateParamsChangePasswordFromJson(Map<String, dynamic> json) =>
        _DerivedKeyUpdateParamsChangePassword(
          DerivedKeyUpdateParamsChangePassword.fromJson(
              json['data'] as Map<String, dynamic>),
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$DerivedKeyUpdateParamsChangePasswordToJson(
        _DerivedKeyUpdateParamsChangePassword instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
