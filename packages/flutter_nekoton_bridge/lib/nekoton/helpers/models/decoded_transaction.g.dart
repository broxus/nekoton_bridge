// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decoded_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DecodedTransactionImpl _$$DecodedTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$DecodedTransactionImpl(
      method: json['method'] as String,
      input: json['input'] as Map<String, dynamic>,
      output: json['output'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$DecodedTransactionImplToJson(
        _$DecodedTransactionImpl instance) =>
    <String, dynamic>{
      'method': instance.method,
      'input': instance.input,
      'output': instance.output,
    };
