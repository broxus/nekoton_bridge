import 'package:flutter_nekoton_bridge/nekoton/crypto/ledger_key/ledger_update_key_input_rename.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/update_key_input.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger_update_key_input.freezed.dart';
part 'ledger_update_key_input.g.dart';

@Freezed(unionKey: 'type')
class LedgerUpdateKeyInput
    with _$LedgerUpdateKeyInput
    implements UpdateKeyInput {
  const factory LedgerUpdateKeyInput() = _LedgerUpdateKeyInput;

  const factory LedgerUpdateKeyInput.rename(
      final LedgerUpdateKeyInputRename data,) = _LedgerUpdateKeyInputRename;

  factory LedgerUpdateKeyInput.fromJson(Map<String, dynamic> json) =>
      _$LedgerUpdateKeyInputFromJson(json);
}
