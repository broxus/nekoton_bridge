import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/password_cache/password_explicit.dart';

part 'password.freezed.dart';
part 'password.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class Password with _$Password {
  const factory Password.explicit(final PasswordExplicit data) = _Explicit;

  const factory Password.fromCache() = _FromCache;

  factory Password.fromJson(Map<String, dynamic> json) =>
      _$PasswordFromJson(json);
}
