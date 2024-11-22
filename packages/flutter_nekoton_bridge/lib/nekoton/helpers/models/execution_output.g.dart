// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'execution_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExecutionOutputImpl _$$ExecutionOutputImplFromJson(
        Map<String, dynamic> json) =>
    _$ExecutionOutputImpl(
      output: json['output'] as Map<String, dynamic>?,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$$ExecutionOutputImplToJson(
        _$ExecutionOutputImpl instance) =>
    <String, dynamic>{
      if (instance.output case final value?) 'output': value,
      'code': instance.code,
    };
