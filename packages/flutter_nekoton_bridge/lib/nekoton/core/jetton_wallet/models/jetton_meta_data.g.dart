// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jetton_meta_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JettonMetaDataImpl _$$JettonMetaDataImplFromJson(Map<String, dynamic> json) =>
    _$JettonMetaDataImpl(
      name: json['name'] as String?,
      uri: json['uri'] as String?,
      symbol: json['symbol'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      decimals: (json['decimals'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$JettonMetaDataImplToJson(
        _$JettonMetaDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uri': instance.uri,
      'symbol': instance.symbol,
      'description': instance.description,
      'image': instance.image,
      'decimals': instance.decimals,
    };
