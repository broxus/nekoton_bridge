// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_to_add.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountToAdd _$$_AccountToAddFromJson(Map<String, dynamic> json) =>
    _$_AccountToAdd(
      name: json['name'] as String,
      publicKey: json['publicKey'] as String,
      contract: WalletType.fromJson(json['contract'] as Map<String, dynamic>),
      workchain: json['workchain'] as int,
      explicitAddress: json['explicitAddress'] == null
          ? null
          : Address.fromJson(json['explicitAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AccountToAddToJson(_$_AccountToAdd instance) =>
    <String, dynamic>{
      'name': instance.name,
      'publicKey': instance.publicKey,
      'contract': instance.contract,
      'workchain': instance.workchain,
      'explicitAddress': instance.explicitAddress,
    };
