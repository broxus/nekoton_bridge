// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_execution_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionExecutionOptionsImpl _$$TransactionExecutionOptionsImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionExecutionOptionsImpl(
      disableSignatureCheck: json['disableSignatureCheck'] as bool,
      overrideBalance: _$JsonConverterFromJson<String, BigInt>(
          json['overrideBalance'], amountJsonConverter.fromJson),
    );

Map<String, dynamic> _$$TransactionExecutionOptionsImplToJson(
        _$TransactionExecutionOptionsImpl instance) =>
    <String, dynamic>{
      'disableSignatureCheck': instance.disableSignatureCheck,
      'overrideBalance': _$JsonConverterToJson<String, BigInt>(
          instance.overrideBalance, amountJsonConverter.toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
