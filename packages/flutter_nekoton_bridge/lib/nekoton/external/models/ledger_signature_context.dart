import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger_signature_context.freezed.dart';
part 'ledger_signature_context.g.dart';

@freezed
sealed class LedgerSignatureContext with _$LedgerSignatureContext {
  const factory LedgerSignatureContext({
    required final int decimals,
    required final String asset,
    int? workchainId,
    String? address,
  }) = _LedgerSignatureContext;

  factory LedgerSignatureContext.fromJson(Map<String, dynamic> json) =>
      _$LedgerSignatureContextFromJson(json);
}
