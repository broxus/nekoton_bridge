import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_key.freezed.dart';
part 'public_key.g.dart';

@freezed
class PublicKey with _$PublicKey {
  const factory PublicKey({
    required String publicKey,
  }) = _FromString;

  factory PublicKey.fromJson(Map<String, dynamic> json) =>
      _$PublicKeyFromJson(json);

  String toEllipseString() => publicKey.length > 4
      ? '${publicKey.substring(0, 4)}...${publicKey.substring(publicKey.length - 4)}'
      : publicKey;
}
