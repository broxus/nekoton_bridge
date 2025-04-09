// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jetton_meta_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JettonMetaData _$JettonMetaDataFromJson(Map<String, dynamic> json) =>
    _JettonMetaData(
      name: json['name'] as String?,
      uri: json['uri'] as String?,
      symbol: json['symbol'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      decimals: (json['decimals'] as num?)?.toInt(),
    );

Map<String, dynamic> _$JettonMetaDataToJson(_JettonMetaData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uri': instance.uri,
      'symbol': instance.symbol,
      'description': instance.description,
      'image': instance.image,
      'decimals': instance.decimals,
    };
