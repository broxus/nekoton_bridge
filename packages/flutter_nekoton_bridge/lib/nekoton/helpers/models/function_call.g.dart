// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_call.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FunctionCall _$FunctionCallFromJson(Map<String, dynamic> json) =>
    _FunctionCall(
      abi: json['abi'] as String,
      method: json['method'] as String,
      params: json['params'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$FunctionCallToJson(_FunctionCall instance) =>
    <String, dynamic>{
      'abi': instance.abi,
      'method': instance.method,
      'params': instance.params,
    };
