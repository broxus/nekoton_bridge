// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jetton_root_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JettonRootData _$JettonRootDataFromJson(Map<String, dynamic> json) =>
    _JettonRootData(
      mintable: json['mintable'] as bool,
      adminAddress: Address.fromJson(json['adminAddress'] as String),
      content: JettonMetaData.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JettonRootDataToJson(_JettonRootData instance) =>
    <String, dynamic>{
      'mintable': instance.mintable,
      'adminAddress': instance.adminAddress.toJson(),
      'content': instance.content.toJson(),
    };
