// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abi_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AbiParam _$AbiParamFromJson(Map<String, dynamic> json) => _AbiParam(
  name: json['name'] as String,
  type: json['type'] as String,
  components: (json['components'] as List<dynamic>?)
      ?.map((e) => AbiParam.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AbiParamToJson(_AbiParam instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'components': instance.components?.map((e) => e.toJson()).toList(),
};
