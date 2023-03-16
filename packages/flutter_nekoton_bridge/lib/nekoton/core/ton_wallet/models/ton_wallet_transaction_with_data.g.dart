// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_wallet_transaction_with_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TonWalletTransactionWithData _$$_TonWalletTransactionWithDataFromJson(
        Map<String, dynamic> json) =>
    _$_TonWalletTransactionWithData(
      transaction:
          Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : TransactionAdditionalInfo.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TonWalletTransactionWithDataToJson(
        _$_TonWalletTransactionWithData instance) =>
    <String, dynamic>{
      'transaction': instance.transaction.toJson(),
      'data': instance.data?.toJson(),
    };
