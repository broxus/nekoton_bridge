import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internal_message.freezed.dart';

part 'internal_message.g.dart';

@freezed
class InternalMessage with _$InternalMessage {
  factory InternalMessage({
    String? source,
    required String destination,
    @amountJsonConverter required Fixed amount,
    required bool bounce,
    required String body,
  }) = _InternalMessage;

  factory InternalMessage.fromJson(Map<String, dynamic> json) =>
      _$InternalMessageFromJson(json);
}
