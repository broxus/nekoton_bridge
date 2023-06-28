// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_wallet_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TonWalletAsset _$$_TonWalletAssetFromJson(Map<String, dynamic> json) =>
    _$_TonWalletAsset(
      address: Address.fromJson(json['address'] as String),
      publicKey: PublicKey.fromJson(json['publicKey'] as String),
      contract: WalletType.fromJson(json['contract'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TonWalletAssetToJson(_$_TonWalletAsset instance) =>
    <String, dynamic>{
      'address': instance.address.toJson(),
      'publicKey': instance.publicKey.toJson(),
      'contract': instance.contract.toJson(),
    };
