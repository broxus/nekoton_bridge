import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'derived_key_update_params_rename_key.freezed.dart';
part 'derived_key_update_params_rename_key.g.dart';

@freezed
sealed class DerivedKeyUpdateParamsRenameKey
    with _$DerivedKeyUpdateParamsRenameKey {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DerivedKeyUpdateParamsRenameKey({
    required final PublicKey masterKey,
    required final PublicKey publicKey,
    required final String name,
  }) = _DerivedKeyUpdateParamsRenameKeyRenameKey;

  factory DerivedKeyUpdateParamsRenameKey.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyUpdateParamsRenameKeyFromJson(json);
}
