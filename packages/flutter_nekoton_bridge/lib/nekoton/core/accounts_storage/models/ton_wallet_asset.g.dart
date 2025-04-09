// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_wallet_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TonWalletAsset _$TonWalletAssetFromJson(Map<String, dynamic> json) =>
    _TonWalletAsset(
      address: Address.fromJson(json['address'] as String),
      publicKey: PublicKey.fromJson(json['publicKey'] as String),
      contract: WalletType.fromJson(json['contract'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TonWalletAssetToJson(_TonWalletAsset instance) =>
    <String, dynamic>{
      'address': instance.address.toJson(),
      'publicKey': instance.publicKey.toJson(),
      'contract': instance.contract.toJson(),
    };
