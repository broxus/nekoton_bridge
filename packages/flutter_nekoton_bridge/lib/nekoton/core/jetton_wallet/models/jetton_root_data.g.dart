// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jetton_root_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JettonRootDataImpl _$$JettonRootDataImplFromJson(Map<String, dynamic> json) =>
    _$JettonRootDataImpl(
      mintable: json['mintable'] as bool,
      adminAddress: Address.fromJson(json['adminAddress'] as String),
      content: JettonMetaData.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JettonRootDataImplToJson(
        _$JettonRootDataImpl instance) =>
    <String, dynamic>{
      'mintable': instance.mintable,
      'adminAddress': instance.adminAddress.toJson(),
      'content': instance.content.toJson(),
    };
