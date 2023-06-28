import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_key.freezed.dart';
part 'public_key.g.dart';

@freezed

/// Public key of the account
class PublicKey with _$PublicKey {
  const PublicKey._();

  const factory PublicKey({
    required String publicKey,
  }) = _FromString;

  factory PublicKey.fromJson(Map<String, dynamic> json) =>
      _$PublicKeyFromJson(json);

  @override
  String toString() => publicKey;

  /// Compares addresses address
  int compareTo(PublicKey other) => publicKey.compareTo(other.publicKey);

  /// Returns the public key in ellipse form
  String toEllipseString() => publicKey.length > 4
      ? '${publicKey.substring(0, 4)}...${publicKey.substring(publicKey.length - 4)}'
      : publicKey;

  @override
  int get hashCode => publicKey.hashCode;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicKey && publicKey == other.publicKey);
  }
}
