import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_execution_options.freezed.dart';
part 'transaction_execution_options.g.dart';

@freezed
sealed class TransactionExecutionOptions with _$TransactionExecutionOptions {
  const factory TransactionExecutionOptions({
    required final bool disableSignatureCheck,
    @amountJsonConverter required final BigInt overrideBalance,
  }) = _TransactionExecutionOptions;

  factory TransactionExecutionOptions.fromJson(Map<String, dynamic> json) =>
      _$TransactionExecutionOptionsFromJson(json);
}
