import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internal_message.freezed.dart';

part 'internal_message.g.dart';

@freezed
sealed class InternalMessage with _$InternalMessage {
  factory InternalMessage({
    final Address? source,
    required final Address destination,
    @amountJsonConverter required final BigInt amount,
    required final bool bounce,
    required final String body,
  }) = _InternalMessage;

  factory InternalMessage.fromJson(Map<String, dynamic> json) =>
      _$InternalMessageFromJson(json);
}
