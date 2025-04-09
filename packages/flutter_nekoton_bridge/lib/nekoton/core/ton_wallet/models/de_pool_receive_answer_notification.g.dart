// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'de_pool_receive_answer_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DePoolReceiveAnswerNotification _$DePoolReceiveAnswerNotificationFromJson(
        Map<String, dynamic> json) =>
    _DePoolReceiveAnswerNotification(
      errorCode: (json['errorCode'] as num).toInt(),
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$DePoolReceiveAnswerNotificationToJson(
        _DePoolReceiveAnswerNotification instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'comment': instance.comment,
    };
