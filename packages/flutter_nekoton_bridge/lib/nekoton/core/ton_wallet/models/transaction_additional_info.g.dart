// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_additional_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      json['data'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

_$DePoolOnRoundCompleteImpl _$$DePoolOnRoundCompleteImplFromJson(
        Map<String, dynamic> json) =>
    _$DePoolOnRoundCompleteImpl(
      DePoolOnRoundCompleteNotification.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DePoolOnRoundCompleteImplToJson(
        _$DePoolOnRoundCompleteImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$DePoolReceiveAnswerImpl _$$DePoolReceiveAnswerImplFromJson(
        Map<String, dynamic> json) =>
    _$DePoolReceiveAnswerImpl(
      DePoolReceiveAnswerNotification.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DePoolReceiveAnswerImplToJson(
        _$DePoolReceiveAnswerImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$TokenWalletDeployedImpl _$$TokenWalletDeployedImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenWalletDeployedImpl(
      TokenWalletDeployedNotification.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TokenWalletDeployedImplToJson(
        _$TokenWalletDeployedImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$WalletInteractionImpl _$$WalletInteractionImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletInteractionImpl(
      WalletInteractionInfo.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$WalletInteractionImplToJson(
        _$WalletInteractionImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$JettonNotifyImpl _$$JettonNotifyImplFromJson(Map<String, dynamic> json) =>
    _$JettonNotifyImpl(
      JettonIncomingTransfer.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$JettonNotifyImplToJson(_$JettonNotifyImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
