// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_batch_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionsBatchInfoImpl _$$TransactionsBatchInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionsBatchInfoImpl(
      minLt: json['minLt'] as String,
      maxLt: json['maxLt'] as String,
      batchType: $enumDecode(_$TransactionsBatchTypeEnumMap, json['batchType']),
    );

Map<String, dynamic> _$$TransactionsBatchInfoImplToJson(
        _$TransactionsBatchInfoImpl instance) =>
    <String, dynamic>{
      'minLt': instance.minLt,
      'maxLt': instance.maxLt,
      'batchType': _$TransactionsBatchTypeEnumMap[instance.batchType]!,
    };

const _$TransactionsBatchTypeEnumMap = {
  TransactionsBatchType.oldTransactions: 'old',
  TransactionsBatchType.newTransactions: 'new',
};
