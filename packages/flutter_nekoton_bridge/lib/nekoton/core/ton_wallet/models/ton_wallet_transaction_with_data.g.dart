// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_wallet_transaction_with_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TonWalletTransactionWithDataImpl _$$TonWalletTransactionWithDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TonWalletTransactionWithDataImpl(
      transaction:
          Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : TransactionAdditionalInfo.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TonWalletTransactionWithDataImplToJson(
        _$TonWalletTransactionWithDataImpl instance) =>
    <String, dynamic>{
      'transaction': instance.transaction.toJson(),
      'data': instance.data?.toJson(),
    };
