// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_key_update_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RenameKeyImpl _$$RenameKeyImplFromJson(Map<String, dynamic> json) =>
    _$RenameKeyImpl(
      DerivedKeyUpdateParamsRenameKey.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$RenameKeyImplToJson(_$RenameKeyImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$ChangePasswordImpl _$$ChangePasswordImplFromJson(Map<String, dynamic> json) =>
    _$ChangePasswordImpl(
      DerivedKeyUpdateParamsChangePassword.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ChangePasswordImplToJson(
        _$ChangePasswordImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
