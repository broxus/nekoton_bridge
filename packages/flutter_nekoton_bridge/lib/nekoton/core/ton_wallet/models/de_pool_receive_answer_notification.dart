import 'package:freezed_annotation/freezed_annotation.dart';

part 'de_pool_receive_answer_notification.freezed.dart';
part 'de_pool_receive_answer_notification.g.dart';

@freezed
sealed class DePoolReceiveAnswerNotification
    with _$DePoolReceiveAnswerNotification {
  const factory DePoolReceiveAnswerNotification({
    required final int errorCode,
    required final String comment,
  }) = _DePoolReceiveAnswerNotification;

  factory DePoolReceiveAnswerNotification.fromJson(Map<String, dynamic> json) =>
      _$DePoolReceiveAnswerNotificationFromJson(json);
}
