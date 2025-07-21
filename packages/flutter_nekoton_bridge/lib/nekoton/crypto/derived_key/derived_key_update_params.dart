import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/derived_key_update_params_change_password.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/derived_key_update_params_rename_key.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/update_key_input.dart';

part 'derived_key_update_params.freezed.dart';
part 'derived_key_update_params.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class DerivedKeyUpdateParams
    with _$DerivedKeyUpdateParams
    implements UpdateKeyInput {
  const factory DerivedKeyUpdateParams.renameKey(
          final DerivedKeyUpdateParamsRenameKey data) =
      _DerivedKeyUpdateParamsRenameKey;

  const factory DerivedKeyUpdateParams.changePassword(
          final DerivedKeyUpdateParamsChangePassword data) =
      _DerivedKeyUpdateParamsChangePassword;

  factory DerivedKeyUpdateParams.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyUpdateParamsFromJson(json);
}
