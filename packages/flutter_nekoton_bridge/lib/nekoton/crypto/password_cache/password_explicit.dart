import 'package:flutter_nekoton_bridge/nekoton/crypto/password_cache/password_cache_behavior.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_explicit.freezed.dart';
part 'password_explicit.g.dart';

@freezed
class PasswordExplicit with _$PasswordExplicit {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PasswordExplicit({
    required final String password,
    required final PasswordCacheBehavior cacheBehavior,
  }) = _PasswordExplicitExplicit;

  factory PasswordExplicit.fromJson(Map<String, dynamic> json) =>
      _$PasswordExplicitFromJson(json);
}
