// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_execution_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionExecutionOptionsImpl _$$TransactionExecutionOptionsImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionExecutionOptionsImpl(
      disableSignatureCheck: json['disableSignatureCheck'] as bool,
      overrideBalance:
          amountJsonConverter.fromJson(json['overrideBalance'] as String),
    );

Map<String, dynamic> _$$TransactionExecutionOptionsImplToJson(
        _$TransactionExecutionOptionsImpl instance) =>
    <String, dynamic>{
      'disableSignatureCheck': instance.disableSignatureCheck,
      'overrideBalance': amountJsonConverter.toJson(instance.overrideBalance),
    };
