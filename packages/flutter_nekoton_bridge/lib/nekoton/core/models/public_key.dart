import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_key.freezed.dart';

@Freezed(fromJson: false, toJson: false)

/// Public key of the account
class PublicKey with _$PublicKey {
  const PublicKey._();

  const factory PublicKey({
    required final String publicKey,
  }) = _FromString;

  factory PublicKey.fromJson(String json) => PublicKey(publicKey: json);

  String toJson() => publicKey;

  @override
  String toString() => publicKey;

  /// Compares addresses address
  int compareTo(PublicKey other) => publicKey.compareTo(other.publicKey);

  /// Returns the public key in ellipse form
  String toEllipseString() => publicKey.length > 4
      ? '${publicKey.substring(0, 4)}...${publicKey.substring(publicKey.length - 4)}'
      : publicKey;
}
