import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_id.freezed.dart';
part 'transaction_id.g.dart';

@freezed
sealed class TransactionId with _$TransactionId {
  const factory TransactionId({
    required final String lt,
    required final String hash,
  }) = _TransactionId;

  factory TransactionId.fromJson(Map<String, dynamic> json) =>
      _$TransactionIdFromJson(json);
}
