import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/helpers/models/tokens_object.dart';

part 'decoded_transaction.freezed.dart';
part 'decoded_transaction.g.dart';

@freezed
sealed class DecodedTransaction with _$DecodedTransaction {
  const factory DecodedTransaction({
    required final String method,
    required final TokensObject input,
    required final TokensObject output,
  }) = _DecodedTransaction;

  factory DecodedTransaction.fromJson(Map<String, dynamic> json) =>
      _$DecodedTransactionFromJson(json);
}
