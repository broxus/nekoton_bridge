// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: TransactionId.fromJson(json['id'] as Map<String, dynamic>),
      prevTransactionId: json['prevTransactionId'] == null
          ? null
          : TransactionId.fromJson(
              json['prevTransactionId'] as Map<String, dynamic>),
      createdAt: dateSecondsSinceEpochJsonConverter
          .fromJson((json['createdAt'] as num).toInt()),
      aborted: json['aborted'] as bool,
      exitCode: (json['exitCode'] as num?)?.toInt(),
      resultCode: (json['resultCode'] as num?)?.toInt(),
      origStatus: $enumDecode(_$AccountStatusEnumMap, json['origStatus']),
      endStatus: $enumDecode(_$AccountStatusEnumMap, json['endStatus']),
      totalFees: amountJsonConverter.fromJson(json['totalFees'] as String),
      inMessage: Message.fromJson(json['inMessage'] as Map<String, dynamic>),
      outMessages: (json['outMessages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      boc: json['boc'] as String?,
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'prevTransactionId': instance.prevTransactionId?.toJson(),
      'createdAt':
          dateSecondsSinceEpochJsonConverter.toJson(instance.createdAt),
      'aborted': instance.aborted,
      if (instance.exitCode case final value?) 'exitCode': value,
      if (instance.resultCode case final value?) 'resultCode': value,
      'origStatus': _$AccountStatusEnumMap[instance.origStatus]!,
      'endStatus': _$AccountStatusEnumMap[instance.endStatus]!,
      'totalFees': amountJsonConverter.toJson(instance.totalFees),
      'inMessage': instance.inMessage.toJson(),
      'outMessages': instance.outMessages.map((e) => e.toJson()).toList(),
      'boc': instance.boc,
    };

const _$AccountStatusEnumMap = {
  AccountStatus.uninit: 'uninit',
  AccountStatus.frozen: 'frozen',
  AccountStatus.active: 'active',
  AccountStatus.nonexist: 'nonexist',
};
