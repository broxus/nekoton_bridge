// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_wallet_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenWalletDetails _$$_TokenWalletDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_TokenWalletDetails(
      rootAddress: json['rootAddress'] as String,
      ownerAddress: json['ownerAddress'] as String,
      balance: json['balance'] as String,
    );

Map<String, dynamic> _$$_TokenWalletDetailsToJson(
        _$_TokenWalletDetails instance) =>
    <String, dynamic>{
      'rootAddress': instance.rootAddress,
      'ownerAddress': instance.ownerAddress,
      'balance': instance.balance,
    };
