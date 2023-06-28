import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:flutter_nekoton_bridge/nekoton/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/password_cache/password.dart';

part 'derived_key_create_input_derive.freezed.dart';
part 'derived_key_create_input_derive.g.dart';

@freezed
class DerivedKeyCreateInputDerive with _$DerivedKeyCreateInputDerive {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DerivedKeyCreateInputDerive({
    String? keyName,
    @publicKeyJsonConverter required PublicKey masterKey,
    required int accountId,
    required Password password,
  }) = _DerivedKeyCreateInputDeriveDerive;

  factory DerivedKeyCreateInputDerive.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyCreateInputDeriveFromJson(json);
}
