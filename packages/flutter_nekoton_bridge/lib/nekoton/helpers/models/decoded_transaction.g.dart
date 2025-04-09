// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decoded_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DecodedTransaction _$DecodedTransactionFromJson(Map<String, dynamic> json) =>
    _DecodedTransaction(
      method: json['method'] as String,
      input: json['input'] as Map<String, dynamic>,
      output: json['output'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$DecodedTransactionToJson(_DecodedTransaction instance) =>
    <String, dynamic>{
      'method': instance.method,
      'input': instance.input,
      'output': instance.output,
    };
