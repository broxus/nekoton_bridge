import 'package:flutter_nekoton_bridge/nekoton/crypto/password_cache/password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'derived_key_create_input_import.freezed.dart';
part 'derived_key_create_input_import.g.dart';

@freezed
class DerivedKeyCreateInputImport with _$DerivedKeyCreateInputImport {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DerivedKeyCreateInputImport({
    required final String phrase, required final Password password, final String? keyName,
  }) = _DerivedKeyCreateInputImportImport;

  factory DerivedKeyCreateInputImport.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyCreateInputImportFromJson(json);
}
