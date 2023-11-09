// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_wallet_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenWalletAssetImpl _$$TokenWalletAssetImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenWalletAssetImpl(
      rootTokenContract:
          Address.fromJson(json['root_token_contract'] as String),
    );

Map<String, dynamic> _$$TokenWalletAssetImplToJson(
        _$TokenWalletAssetImpl instance) =>
    <String, dynamic>{
      'root_token_contract': instance.rootTokenContract.toJson(),
    };
