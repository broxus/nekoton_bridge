// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'known_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KnownPayloadComment _$KnownPayloadCommentFromJson(Map<String, dynamic> json) =>
    KnownPayloadComment(
      json['data'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$KnownPayloadCommentToJson(
        KnownPayloadComment instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

KnownPayloadTokenOutgoingTransfer _$KnownPayloadTokenOutgoingTransferFromJson(
        Map<String, dynamic> json) =>
    KnownPayloadTokenOutgoingTransfer(
      TokenOutgoingTransfer.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$KnownPayloadTokenOutgoingTransferToJson(
        KnownPayloadTokenOutgoingTransfer instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

KnownPayloadJettonOutgoingTransfer _$KnownPayloadJettonOutgoingTransferFromJson(
        Map<String, dynamic> json) =>
    KnownPayloadJettonOutgoingTransfer(
      JettonOutgoingTransfer.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$KnownPayloadJettonOutgoingTransferToJson(
        KnownPayloadJettonOutgoingTransfer instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

KnownPayloadTokenSwapBack _$KnownPayloadTokenSwapBackFromJson(
        Map<String, dynamic> json) =>
    KnownPayloadTokenSwapBack(
      TokenSwapBack.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$KnownPayloadTokenSwapBackToJson(
        KnownPayloadTokenSwapBack instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
