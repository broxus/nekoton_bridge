import 'package:freezed_annotation/freezed_annotation.dart';

part 'signed_message.freezed.dart';
part 'signed_message.g.dart';

@freezed
sealed class SignedMessage with _$SignedMessage {
  const factory SignedMessage({
    required final String hash,
    required final int expireAt,
    required final String boc,
  }) = _SignedMessage;

  factory SignedMessage.fromJson(Map<String, dynamic> json) =>
      _$SignedMessageFromJson(json);
}
