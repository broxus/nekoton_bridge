// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assets_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssetsList _$AssetsListFromJson(Map<String, dynamic> json) => _AssetsList(
      name: json['name'] as String,
      tonWallet:
          TonWalletAsset.fromJson(json['tonWallet'] as Map<String, dynamic>),
      additionalAssets: (json['additionalAssets'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, AdditionalAssets.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$AssetsListToJson(_AssetsList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'tonWallet': instance.tonWallet.toJson(),
      'additionalAssets':
          instance.additionalAssets.map((k, e) => MapEntry(k, e.toJson())),
    };
