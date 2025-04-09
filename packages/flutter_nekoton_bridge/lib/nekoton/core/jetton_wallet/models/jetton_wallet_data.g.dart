// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jetton_wallet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JettonWalletData _$JettonWalletDataFromJson(Map<String, dynamic> json) =>
    _JettonWalletData(
      rootAddress: Address.fromJson(json['rootAddress'] as String),
      ownerAddress: Address.fromJson(json['ownerAddress'] as String),
      balance: amountJsonConverter.fromJson(json['balance'] as String),
    );

Map<String, dynamic> _$JettonWalletDataToJson(_JettonWalletData instance) =>
    <String, dynamic>{
      'rootAddress': instance.rootAddress.toJson(),
      'ownerAddress': instance.ownerAddress.toJson(),
      'balance': amountJsonConverter.toJson(instance.balance),
    };
