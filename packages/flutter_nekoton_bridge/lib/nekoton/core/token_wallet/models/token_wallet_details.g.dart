// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_wallet_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenWalletDetails _$$_TokenWalletDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_TokenWalletDetails(
      rootAddress: addressJsonConverter.fromJson(json['rootAddress'] as String),
      ownerAddress:
          addressJsonConverter.fromJson(json['ownerAddress'] as String),
      balance: amountJsonConverter.fromJson(json['balance'] as String),
    );

Map<String, dynamic> _$$_TokenWalletDetailsToJson(
        _$_TokenWalletDetails instance) =>
    <String, dynamic>{
      'rootAddress': addressJsonConverter.toJson(instance.rootAddress),
      'ownerAddress': addressJsonConverter.toJson(instance.ownerAddress),
      'balance': amountJsonConverter.toJson(instance.balance),
    };
