// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_execution_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionExecutionOptions _$TransactionExecutionOptionsFromJson(
  Map<String, dynamic> json,
) => _TransactionExecutionOptions(
  disableSignatureCheck: json['disableSignatureCheck'] as bool,
  overrideBalance: json['overrideBalance'] == null
      ? null
      : BigInt.parse(json['overrideBalance'] as String),
);

Map<String, dynamic> _$TransactionExecutionOptionsToJson(
  _TransactionExecutionOptions instance,
) => <String, dynamic>{
  'disableSignatureCheck': instance.disableSignatureCheck,
  'overrideBalance': instance.overrideBalance?.toString(),
};
