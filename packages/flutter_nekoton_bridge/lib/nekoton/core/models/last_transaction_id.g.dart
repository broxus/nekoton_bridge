// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_transaction_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LastTransactionId _$$_LastTransactionIdFromJson(Map<String, dynamic> json) =>
    _$_LastTransactionId(
      isExact: json['isExact'] as bool,
      lt: json['lt'] as String,
      hash: json['hash'] as String?,
    );

Map<String, dynamic> _$$_LastTransactionIdToJson(
    _$_LastTransactionId instance) {
  final val = <String, dynamic>{
    'isExact': instance.isExact,
    'lt': instance.lt,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hash', instance.hash);
  return val;
}
