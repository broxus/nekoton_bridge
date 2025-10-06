// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Symbol _$SymbolFromJson(Map<String, dynamic> json) => _Symbol(
  name: json['name'] as String,
  fullName: json['fullName'] as String,
  decimals: (json['decimals'] as num).toInt(),
  rootTokenContract: Address.fromJson(json['rootTokenContract'] as String),
);

Map<String, dynamic> _$SymbolToJson(_Symbol instance) => <String, dynamic>{
  'name': instance.name,
  'fullName': instance.fullName,
  'decimals': instance.decimals,
  'rootTokenContract': instance.rootTokenContract.toJson(),
};
