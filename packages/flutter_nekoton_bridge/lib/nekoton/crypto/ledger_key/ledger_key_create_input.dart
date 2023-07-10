import 'package:flutter_nekoton_bridge/nekoton/crypto/models/create_key_input.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger_key_create_input.freezed.dart';
part 'ledger_key_create_input.g.dart';

@freezed
class LedgerKeyCreateInput
    with _$LedgerKeyCreateInput
    implements CreateKeyInput {
  const factory LedgerKeyCreateInput({
    required final int accountId, final String? name,
  }) = _LedgerKeyCreateInput;

  factory LedgerKeyCreateInput.fromJson(Map<String, dynamic> json) =>
      _$LedgerKeyCreateInputFromJson(json);
}
