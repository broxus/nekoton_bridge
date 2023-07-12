import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pending_transaction.freezed.dart';

part 'pending_transaction.g.dart';

@freezed
sealed class PendingTransaction
    with _$PendingTransaction
    implements Comparable<PendingTransaction> {
  const factory PendingTransaction({
    required final String messageHash,
    final String? src,
    @dateSecondsSinceEpochJsonConverter required final DateTime expireAt,
  }) = _PendingTransaction;

  factory PendingTransaction.fromJson(Map<String, dynamic> json) =>
      _$PendingTransactionFromJson(json);

  const PendingTransaction._();

  @override
  int compareTo(PendingTransaction other) =>
      -expireAt.compareTo(other.expireAt);
}
