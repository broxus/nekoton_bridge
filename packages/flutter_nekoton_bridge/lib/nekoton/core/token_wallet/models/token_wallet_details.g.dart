// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_wallet_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenWalletDetailsImpl _$$TokenWalletDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenWalletDetailsImpl(
      rootAddress: Address.fromJson(json['rootAddress'] as String),
      ownerAddress: Address.fromJson(json['ownerAddress'] as String),
      balance: amountJsonConverter.fromJson(json['balance'] as String),
    );

Map<String, dynamic> _$$TokenWalletDetailsImplToJson(
        _$TokenWalletDetailsImpl instance) =>
    <String, dynamic>{
      'rootAddress': instance.rootAddress.toJson(),
      'ownerAddress': instance.ownerAddress.toJson(),
      'balance': amountJsonConverter.toJson(instance.balance),
    };
