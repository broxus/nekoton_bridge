import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/transactions_batch_type.dart';

part 'transactions_batch_info.freezed.dart';
part 'transactions_batch_info.g.dart';

@freezed
sealed class TransactionsBatchInfo with _$TransactionsBatchInfo {
  const factory TransactionsBatchInfo({
    required final String minLt,
    required final String maxLt,
    required final TransactionsBatchType batchType,
  }) = _TransactionsBatchInfo;

  factory TransactionsBatchInfo.fromJson(Map<String, dynamic> json) =>
      _$TransactionsBatchInfoFromJson(json);
}
