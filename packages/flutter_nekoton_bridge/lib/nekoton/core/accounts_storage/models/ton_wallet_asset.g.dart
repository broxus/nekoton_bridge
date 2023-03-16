// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_wallet_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TonWalletAsset _$$_TonWalletAssetFromJson(Map<String, dynamic> json) =>
    _$_TonWalletAsset(
      address: json['address'] as String,
      publicKey: json['publicKey'] as String,
      contract: WalletType.fromJson(json['contract'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TonWalletAssetToJson(_$_TonWalletAsset instance) =>
    <String, dynamic>{
      'address': instance.address,
      'publicKey': instance.publicKey,
      'contract': instance.contract.toJson(),
    };
