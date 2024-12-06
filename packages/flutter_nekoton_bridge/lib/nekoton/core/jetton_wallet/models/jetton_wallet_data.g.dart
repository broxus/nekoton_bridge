// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jetton_wallet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JettonWalletDataImpl _$$JettonWalletDataImplFromJson(
        Map<String, dynamic> json) =>
    _$JettonWalletDataImpl(
      rootAddress: Address.fromJson(json['rootAddress'] as String),
      ownerAddress: Address.fromJson(json['ownerAddress'] as String),
      balance: amountJsonConverter.fromJson(json['balance'] as String),
    );

Map<String, dynamic> _$$JettonWalletDataImplToJson(
        _$JettonWalletDataImpl instance) =>
    <String, dynamic>{
      'rootAddress': instance.rootAddress.toJson(),
      'ownerAddress': instance.ownerAddress.toJson(),
      'balance': amountJsonConverter.toJson(instance.balance),
    };
