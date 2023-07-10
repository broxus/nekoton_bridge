import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_handler_message.freezed.dart';
part 'subscription_handler_message.g.dart';

@freezed
sealed class SubscriptionHandlerMessage with _$SubscriptionHandlerMessage {
  const factory SubscriptionHandlerMessage({
    required final String event,
    required final String payload,
  }) = _SubscriptionHandlerMessage;

  factory SubscriptionHandlerMessage.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionHandlerMessageFromJson(json);
}
