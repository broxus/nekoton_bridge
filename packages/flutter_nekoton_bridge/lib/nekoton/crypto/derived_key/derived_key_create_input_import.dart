import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/password_cache/password.dart';

part 'derived_key_create_input_import.freezed.dart';
part 'derived_key_create_input_import.g.dart';

@freezed
sealed class DerivedKeyCreateInputImport with _$DerivedKeyCreateInputImport {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DerivedKeyCreateInputImport({
    final String? keyName,
    required final String phrase,
    required final Password password,
  }) = _DerivedKeyCreateInputImportImport;

  factory DerivedKeyCreateInputImport.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyCreateInputImportFromJson(json);
}
