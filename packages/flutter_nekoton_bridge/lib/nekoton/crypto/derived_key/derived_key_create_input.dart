import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/derived_key_create_input_derive.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/derived_key/derived_key_create_input_import.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/create_key_input.dart';

part 'derived_key_create_input.freezed.dart';

part 'derived_key_create_input.g.dart';

/// Input for creating labs key
@Freezed(unionKey: 'type')
sealed class DerivedKeyCreateInput
    with _$DerivedKeyCreateInput
    implements CreateKeyInput {
  /// Create new labs key
  const factory DerivedKeyCreateInput.import(
      final DerivedKeyCreateInputImport data) = _DerivedKeyCreateInputImport;

  /// Derive key from masterKey
  const factory DerivedKeyCreateInput.derive(
      final DerivedKeyCreateInputDerive data) = _DerivedKeyCreateInputDerive;

  factory DerivedKeyCreateInput.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyCreateInputFromJson(json);
}
