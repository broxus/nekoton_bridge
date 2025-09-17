// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'execution_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExecutionOutput _$ExecutionOutputFromJson(Map<String, dynamic> json) =>
    _ExecutionOutput(
      output: json['output'] as Map<String, dynamic>?,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$ExecutionOutputToJson(_ExecutionOutput instance) =>
    <String, dynamic>{'output': ?instance.output, 'code': instance.code};
