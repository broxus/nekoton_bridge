import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/get_public_keys.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/password_cache/password.dart';

part 'derived_key_get_public_keys.freezed.dart';
part 'derived_key_get_public_keys.g.dart';

@freezed
sealed class DerivedKeyGetPublicKeys
    with _$DerivedKeyGetPublicKeys
    implements GetPublicKeys {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DerivedKeyGetPublicKeys({
    required final PublicKey masterKey,
    required final Password password,
    required final int limit,
    required final int offset,
  }) = _DerivedKeyGetPublicKeysRename;

  factory DerivedKeyGetPublicKeys.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyGetPublicKeysFromJson(json);
}
