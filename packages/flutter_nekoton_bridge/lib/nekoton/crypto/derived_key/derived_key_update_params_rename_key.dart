import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:flutter_nekoton_bridge/nekoton/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'derived_key_update_params_rename_key.freezed.dart';
part 'derived_key_update_params_rename_key.g.dart';

@freezed
class DerivedKeyUpdateParamsRenameKey with _$DerivedKeyUpdateParamsRenameKey {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DerivedKeyUpdateParamsRenameKey({
    @publicKeyJsonConverter required PublicKey masterKey,
    @publicKeyJsonConverter required PublicKey publicKey,
    required String name,
  }) = _DerivedKeyUpdateParamsRenameKeyRenameKey;

  factory DerivedKeyUpdateParamsRenameKey.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyUpdateParamsRenameKeyFromJson(json);
}
