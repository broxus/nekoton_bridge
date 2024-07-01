// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_to_add.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountToAddImpl _$$AccountToAddImplFromJson(Map<String, dynamic> json) =>
    _$AccountToAddImpl(
      name: json['name'] as String,
      publicKey: PublicKey.fromJson(json['publicKey'] as String),
      contract: WalletType.fromJson(json['contract'] as Map<String, dynamic>),
      workchain: (json['workchain'] as num).toInt(),
      explicitAddress: json['explicitAddress'] == null
          ? null
          : Address.fromJson(json['explicitAddress'] as String),
    );

Map<String, dynamic> _$$AccountToAddImplToJson(_$AccountToAddImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'publicKey': instance.publicKey.toJson(),
      'contract': instance.contract.toJson(),
      'workchain': instance.workchain,
      'explicitAddress': instance.explicitAddress?.toJson(),
    };
