// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_recipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnerWalletImpl _$$OwnerWalletImplFromJson(Map<String, dynamic> json) =>
    _$OwnerWalletImpl(
      Address.fromJson(json['data'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OwnerWalletImplToJson(_$OwnerWalletImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$TokenWalletImpl _$$TokenWalletImplFromJson(Map<String, dynamic> json) =>
    _$TokenWalletImpl(
      Address.fromJson(json['data'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TokenWalletImplToJson(_$TokenWalletImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
