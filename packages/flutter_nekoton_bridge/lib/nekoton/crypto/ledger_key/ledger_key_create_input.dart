import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/create_key_input.dart';

part 'ledger_key_create_input.freezed.dart';
part 'ledger_key_create_input.g.dart';

@freezed
sealed class LedgerKeyCreateInput
    with _$LedgerKeyCreateInput
    implements CreateKeyInput {
  const factory LedgerKeyCreateInput({
    final String? name,
    required final int accountId,
  }) = _LedgerKeyCreateInput;

  factory LedgerKeyCreateInput.fromJson(Map<String, dynamic> json) =>
      _$LedgerKeyCreateInputFromJson(json);
}
