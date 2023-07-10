import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internal_message.freezed.dart';

part 'internal_message.g.dart';

@freezed
class InternalMessage with _$InternalMessage {
  factory InternalMessage({
    required final String destination, @amountJsonConverter required final Fixed amount, required final bool bounce, required final String body, final String? source,
  }) = _InternalMessage;

  factory InternalMessage.fromJson(Map<String, dynamic> json) =>
      _$InternalMessageFromJson(json);
}
