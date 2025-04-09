// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_batch_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionsBatchInfo _$TransactionsBatchInfoFromJson(
        Map<String, dynamic> json) =>
    _TransactionsBatchInfo(
      minLt: json['minLt'] as String,
      maxLt: json['maxLt'] as String,
      batchType: $enumDecode(_$TransactionsBatchTypeEnumMap, json['batchType']),
    );

Map<String, dynamic> _$TransactionsBatchInfoToJson(
        _TransactionsBatchInfo instance) =>
    <String, dynamic>{
      'minLt': instance.minLt,
      'maxLt': instance.maxLt,
      'batchType': _$TransactionsBatchTypeEnumMap[instance.batchType]!,
    };

const _$TransactionsBatchTypeEnumMap = {
  TransactionsBatchType.oldTransactions: 'old',
  TransactionsBatchType.newTransactions: 'new',
};
