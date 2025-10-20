// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_wallet_transaction_with_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TonWalletTransactionWithData _$TonWalletTransactionWithDataFromJson(
  Map<String, dynamic> json,
) => _TonWalletTransactionWithData(
  transaction: Transaction.fromJson(
    json['transaction'] as Map<String, dynamic>,
  ),
  data: json['data'] == null
      ? null
      : TransactionAdditionalInfo.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$TonWalletTransactionWithDataToJson(
  _TonWalletTransactionWithData instance,
) => <String, dynamic>{
  'transaction': instance.transaction.toJson(),
  'data': instance.data?.toJson(),
};
