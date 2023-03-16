// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_execution_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionExecutionOptions _$$_TransactionExecutionOptionsFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionExecutionOptions(
      disableSignatureCheck: json['disableSignatureCheck'] as bool,
      overrideBalance: json['overrideBalance'] as int?,
    );

Map<String, dynamic> _$$_TransactionExecutionOptionsToJson(
        _$_TransactionExecutionOptions instance) =>
    <String, dynamic>{
      'disableSignatureCheck': instance.disableSignatureCheck,
      'overrideBalance': instance.overrideBalance,
    };
