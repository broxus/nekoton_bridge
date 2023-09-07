import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'raw_transaction.freezed.dart';

part 'raw_transaction.g.dart';

@freezed
sealed class RawTransaction with _$RawTransaction {
  const factory RawTransaction({
    required final String hash,
    required final Transaction data,
  }) = _RawTransaction;

  factory RawTransaction.fromJson(Map<String, dynamic> json) =>
      _$RawTransactionFromJson(json);
}
