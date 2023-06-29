// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_wallet_transaction_with_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenWalletTransactionWithData _$$_TokenWalletTransactionWithDataFromJson(
        Map<String, dynamic> json) =>
    _$_TokenWalletTransactionWithData(
      transaction:
          Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : TokenWalletTransaction.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TokenWalletTransactionWithDataToJson(
        _$_TokenWalletTransactionWithData instance) =>
    <String, dynamic>{
      'transaction': instance.transaction.toJson(),
      'data': instance.data?.toJson(),
    };
