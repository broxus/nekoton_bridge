import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger_update_key_input_rename.freezed.dart';
part 'ledger_update_key_input_rename.g.dart';

@freezed
sealed class LedgerUpdateKeyInputRename with _$LedgerUpdateKeyInputRename {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LedgerUpdateKeyInputRename({
    required final PublicKey publicKey,
    required final String name,
  }) = _LedgerUpdateKeyInputRenameRename;

  factory LedgerUpdateKeyInputRename.fromJson(Map<String, dynamic> json) =>
      _$LedgerUpdateKeyInputRenameFromJson(json);
}
