// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_wallet_transaction_with_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenWalletTransactionWithDataImpl
    _$$TokenWalletTransactionWithDataImplFromJson(Map<String, dynamic> json) =>
        _$TokenWalletTransactionWithDataImpl(
          transaction:
              Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
          data: json['data'] == null
              ? null
              : TokenWalletTransaction.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TokenWalletTransactionWithDataImplToJson(
        _$TokenWalletTransactionWithDataImpl instance) =>
    <String, dynamic>{
      'transaction': instance.transaction.toJson(),
      'data': instance.data?.toJson(),
    };
