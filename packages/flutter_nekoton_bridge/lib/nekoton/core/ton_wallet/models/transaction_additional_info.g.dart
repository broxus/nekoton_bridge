// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_additional_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      json['data'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

_$_DePoolOnRoundComplete _$$_DePoolOnRoundCompleteFromJson(
        Map<String, dynamic> json) =>
    _$_DePoolOnRoundComplete(
      DePoolOnRoundCompleteNotification.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_DePoolOnRoundCompleteToJson(
        _$_DePoolOnRoundComplete instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$_DePoolReceiveAnswer _$$_DePoolReceiveAnswerFromJson(
        Map<String, dynamic> json) =>
    _$_DePoolReceiveAnswer(
      DePoolReceiveAnswerNotification.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_DePoolReceiveAnswerToJson(
        _$_DePoolReceiveAnswer instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$_TokenWalletDeployed _$$_TokenWalletDeployedFromJson(
        Map<String, dynamic> json) =>
    _$_TokenWalletDeployed(
      TokenWalletDeployedNotification.fromJson(
          json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_TokenWalletDeployedToJson(
        _$_TokenWalletDeployed instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$_WalletInteraction _$$_WalletInteractionFromJson(Map<String, dynamic> json) =>
    _$_WalletInteraction(
      WalletInteractionInfo.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_WalletInteractionToJson(
        _$_WalletInteraction instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
