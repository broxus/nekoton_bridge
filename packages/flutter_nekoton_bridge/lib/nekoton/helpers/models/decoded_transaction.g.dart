// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decoded_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DecodedTransaction _$$_DecodedTransactionFromJson(
        Map<String, dynamic> json) =>
    _$_DecodedTransaction(
      method: json['method'] as String,
      input: json['input'] as Map<String, dynamic>,
      output: json['output'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_DecodedTransactionToJson(
        _$_DecodedTransaction instance) =>
    <String, dynamic>{
      'method': instance.method,
      'input': instance.input,
      'output': instance.output,
    };
