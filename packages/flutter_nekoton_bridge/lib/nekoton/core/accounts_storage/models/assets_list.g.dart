// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assets_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssetsList _$$_AssetsListFromJson(Map<String, dynamic> json) =>
    _$_AssetsList(
      name: json['name'] as String,
      tonWallet:
          TonWalletAsset.fromJson(json['tonWallet'] as Map<String, dynamic>),
      additionalAssets: (json['additionalAssets'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, AdditionalAssets.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_AssetsListToJson(_$_AssetsList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'tonWallet': instance.tonWallet.toJson(),
      'additionalAssets':
          instance.additionalAssets.map((k, e) => MapEntry(k, e.toJson())),
    };
