import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger_signature_context.freezed.dart';

part 'ledger_signature_context.g.dart';

@freezed
sealed class LedgerSignatureContext with _$LedgerSignatureContext {
  const factory LedgerSignatureContext({
    required final int decimals,
    required final String asset,
    @amountJsonConverter required Fixed amount,
    required Address address,
  }) = _LedgerSignatureContext;

  factory LedgerSignatureContext.fromJson(Map<String, dynamic> json) =>
      _$LedgerSignatureContextFromJson(json);
}
