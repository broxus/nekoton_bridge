// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PendingTransaction _$PendingTransactionFromJson(Map<String, dynamic> json) =>
    _PendingTransaction(
      messageHash: json['messageHash'] as String,
      src: json['src'] == null ? null : Address.fromJson(json['src'] as String),
      expireAt: dateSecondsSinceEpochJsonConverter
          .fromJson((json['expireAt'] as num).toInt()),
    );

Map<String, dynamic> _$PendingTransactionToJson(_PendingTransaction instance) =>
    <String, dynamic>{
      'messageHash': instance.messageHash,
      'src': instance.src?.toJson(),
      'expireAt': dateSecondsSinceEpochJsonConverter.toJson(instance.expireAt),
    };
