// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_transaction_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LastTransactionIdImpl _$$LastTransactionIdImplFromJson(
        Map<String, dynamic> json) =>
    _$LastTransactionIdImpl(
      isExact: json['isExact'] as bool,
      lt: json['lt'] as String,
      hash: json['hash'] as String?,
    );

Map<String, dynamic> _$$LastTransactionIdImplToJson(
    _$LastTransactionIdImpl instance) {
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
