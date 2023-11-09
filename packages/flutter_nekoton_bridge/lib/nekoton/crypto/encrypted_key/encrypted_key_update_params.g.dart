// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_key_update_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RenameImpl _$$RenameImplFromJson(Map<String, dynamic> json) => _$RenameImpl(
      EncryptedKeyUpdateParamsRename.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$RenameImplToJson(_$RenameImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$ChangePasswordImpl _$$ChangePasswordImplFromJson(Map<String, dynamic> json) =>
    _$ChangePasswordImpl(
      EncryptedKeyUpdateParamsChangePassword.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ChangePasswordImplToJson(
        _$ChangePasswordImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
