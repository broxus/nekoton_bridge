// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_assets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdditionalAssets _$$_AdditionalAssetsFromJson(Map<String, dynamic> json) =>
    _$_AdditionalAssets(
      tokenWallets: (json['token_wallets'] as List<dynamic>)
          .map((e) => TokenWalletAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
      depools: (json['depools'] as List<dynamic>)
          .map((e) => DePoolAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AdditionalAssetsToJson(_$_AdditionalAssets instance) =>
    <String, dynamic>{
      'token_wallets': instance.tokenWallets.map((e) => e.toJson()).toList(),
      'depools': instance.depools.map((e) => e.toJson()).toList(),
    };
