// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PendingTransaction _$$_PendingTransactionFromJson(
        Map<String, dynamic> json) =>
    _$_PendingTransaction(
      messageHash: json['messageHash'] as String,
      src: json['src'] as String?,
      expireAt: json['expireAt'] as int,
    );

Map<String, dynamic> _$$_PendingTransactionToJson(
        _$_PendingTransaction instance) =>
    <String, dynamic>{
      'messageHash': instance.messageHash,
      'src': instance.src,
      'expireAt': instance.expireAt,
    };
