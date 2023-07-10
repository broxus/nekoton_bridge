import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_cache_behavior.freezed.dart';
part 'password_cache_behavior.g.dart';

@Freezed(unionKey: 'type')
sealed class PasswordCacheBehavior with _$PasswordCacheBehavior {
  const factory PasswordCacheBehavior.store(final int data) = _Store;

  const factory PasswordCacheBehavior.remove() = _Remove;

  const factory PasswordCacheBehavior.nop() = _Nop;

  factory PasswordCacheBehavior.fromJson(Map<String, dynamic> json) =>
      _$PasswordCacheBehaviorFromJson(json);
}
