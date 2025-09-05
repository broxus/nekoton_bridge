import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_execution_options.freezed.dart';
part 'transaction_execution_options.g.dart';

@freezed
sealed class TransactionExecutionOptions with _$TransactionExecutionOptions {
  const factory TransactionExecutionOptions({
    required final bool disableSignatureCheck,
    final BigInt? overrideBalance,
  }) = _TransactionExecutionOptions;

  factory TransactionExecutionOptions.fromJson(Map<String, dynamic> json) =>
      _$TransactionExecutionOptionsFromJson(json);
}
