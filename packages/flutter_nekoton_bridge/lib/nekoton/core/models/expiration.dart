import 'package:freezed_annotation/freezed_annotation.dart';

part 'expiration.freezed.dart';

part 'expiration.g.dart';

@Freezed(unionKey: 'type')
sealed class Expiration with _$Expiration {
  const factory Expiration.never() = ExpirationNever;

  /// In seconds
  const factory Expiration.timeout(int data) = ExpirationTimeout;

  /// In seconds
  const factory Expiration.timestamp(int data) = ExpirationTimestamp;

  factory Expiration.fromJson(Map<String, dynamic> json) =>
      _$ExpirationFromJson(json);
}
