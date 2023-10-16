// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'execution_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExecutionOutputImpl _$$ExecutionOutputImplFromJson(
        Map<String, dynamic> json) =>
    _$ExecutionOutputImpl(
      output: json['output'] as Map<String, dynamic>?,
      code: json['code'] as int,
    );

Map<String, dynamic> _$$ExecutionOutputImplToJson(
    _$ExecutionOutputImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('output', instance.output);
  val['code'] = instance.code;
  return val;
}
