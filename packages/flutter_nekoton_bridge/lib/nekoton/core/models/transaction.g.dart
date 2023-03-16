// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: TransactionId.fromJson(json['id'] as Map<String, dynamic>),
      prevTransactionId: json['prevTransactionId'] == null
          ? null
          : TransactionId.fromJson(
              json['prevTransactionId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as int,
      aborted: json['aborted'] as bool,
      exitCode: json['exitCode'] as int?,
      resultCode: json['resultCode'] as int?,
      origStatus: $enumDecode(_$AccountStatusEnumMap, json['origStatus']),
      endStatus: $enumDecode(_$AccountStatusEnumMap, json['endStatus']),
      totalFees: json['totalFees'] as String,
      inMessage: Message.fromJson(json['inMessage'] as Map<String, dynamic>),
      outMessages: (json['outMessages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) {
  final val = <String, dynamic>{
    'id': instance.id.toJson(),
    'prevTransactionId': instance.prevTransactionId?.toJson(),
    'createdAt': instance.createdAt,
    'aborted': instance.aborted,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('exitCode', instance.exitCode);
  writeNotNull('resultCode', instance.resultCode);
  val['origStatus'] = _$AccountStatusEnumMap[instance.origStatus]!;
  val['endStatus'] = _$AccountStatusEnumMap[instance.endStatus]!;
  val['totalFees'] = instance.totalFees;
  val['inMessage'] = instance.inMessage.toJson();
  val['outMessages'] = instance.outMessages.map((e) => e.toJson()).toList();
  return val;
}

const _$AccountStatusEnumMap = {
  AccountStatus.uninit: 'uninit',
  AccountStatus.frozen: 'frozen',
  AccountStatus.active: 'active',
  AccountStatus.nonexist: 'nonexist',
};
