// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_wallet_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenWalletAsset _$TokenWalletAssetFromJson(Map<String, dynamic> json) =>
    _TokenWalletAsset(
      rootTokenContract: Address.fromJson(
        json['root_token_contract'] as String,
      ),
    );

Map<String, dynamic> _$TokenWalletAssetToJson(_TokenWalletAsset instance) =>
    <String, dynamic>{
      'root_token_contract': instance.rootTokenContract.toJson(),
    };
