// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'existing_wallet_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExistingWalletInfoImpl _$$ExistingWalletInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ExistingWalletInfoImpl(
      address: Address.fromJson(json['address'] as String),
      publicKey: PublicKey.fromJson(json['publicKey'] as String),
      walletType:
          WalletType.fromJson(json['walletType'] as Map<String, dynamic>),
      contractState:
          ContractState.fromJson(json['contractState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExistingWalletInfoImplToJson(
        _$ExistingWalletInfoImpl instance) =>
    <String, dynamic>{
      'address': instance.address.toJson(),
      'publicKey': instance.publicKey.toJson(),
      'walletType': instance.walletType.toJson(),
      'contractState': instance.contractState.toJson(),
    };
