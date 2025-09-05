import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

part 'message.g.dart';

@freezed
sealed class Message with _$Message {
  const factory Message({
    required final String hash,
    final Address? src,
    final Address? dst,
    required final BigInt value,
    required final bool bounce,
    required final bool bounced,
    final String? body,
    final String? bodyHash,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
