import 'package:flutter_nekoton_bridge/nekoton/core/models/account_status.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/message.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/transaction_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction implements Comparable<Transaction> {
  const factory Transaction({
    required final TransactionId id,
    required final int createdAt, required final bool aborted, required final AccountStatus origStatus, required final AccountStatus endStatus, required final String totalFees, required final Message inMessage, required final List<Message> outMessages, final TransactionId? prevTransactionId,
    @JsonKey(includeIfNull: false) final int? exitCode,
    @JsonKey(includeIfNull: false) final int? resultCode,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  const Transaction._();

  @override
  int compareTo(Transaction other) => other.createdAt.compareTo(createdAt);
}
