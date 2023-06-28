import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/export_key_input.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/password_cache/password.dart';

part 'derived_key_export_params.freezed.dart';
part 'derived_key_export_params.g.dart';

@freezed
class DerivedKeyExportSeedParams
    with _$DerivedKeyExportSeedParams
    implements ExportKeyInput {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DerivedKeyExportSeedParams({
    required final PublicKey masterKey,
    required final Password password,
  }) = _DerivedKeyExportSeedParams;

  factory DerivedKeyExportSeedParams.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyExportSeedParamsFromJson(json);
}
