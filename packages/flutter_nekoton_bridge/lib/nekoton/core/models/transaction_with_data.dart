import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/transaction.dart';

part 'transaction_with_data.freezed.dart';
part 'transaction_with_data.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class TransactionWithData<T>
    with _$TransactionWithData<T>
    implements Comparable<TransactionWithData<T>> {
  const factory TransactionWithData({
    required final Transaction transaction,
    final T? data,
  }) = _TransactionWithData<T>;

  const TransactionWithData._();

  factory TransactionWithData.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$TransactionWithDataFromJson<T>(json, fromJsonT);

  @override
  int compareTo(TransactionWithData<T> other) =>
      transaction.compareTo(other.transaction);
}
