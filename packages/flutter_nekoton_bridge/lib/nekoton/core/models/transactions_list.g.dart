// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionsListImpl _$$TransactionsListImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionsListImpl(
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      continuation: json['continuation'] == null
          ? null
          : TransactionId.fromJson(
              json['continuation'] as Map<String, dynamic>),
      info: json['info'] == null
          ? null
          : TransactionsBatchInfo.fromJson(
              json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionsListImplToJson(
    _$TransactionsListImpl instance) {
  final val = <String, dynamic>{
    'transactions': instance.transactions.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('continuation', instance.continuation?.toJson());
  val['info'] = instance.info?.toJson();
  return val;
}
