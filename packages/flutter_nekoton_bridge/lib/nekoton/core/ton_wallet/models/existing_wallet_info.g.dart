// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'existing_wallet_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExistingWalletInfo _$$_ExistingWalletInfoFromJson(
        Map<String, dynamic> json) =>
    _$_ExistingWalletInfo(
      address: json['address'] as String,
      publicKey: json['publicKey'] as String,
      walletType:
          WalletType.fromJson(json['walletType'] as Map<String, dynamic>),
      contractState:
          ContractState.fromJson(json['contractState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ExistingWalletInfoToJson(
        _$_ExistingWalletInfo instance) =>
    <String, dynamic>{
      'address': instance.address,
      'publicKey': instance.publicKey,
      'walletType': instance.walletType.toJson(),
      'contractState': instance.contractState.toJson(),
    };
