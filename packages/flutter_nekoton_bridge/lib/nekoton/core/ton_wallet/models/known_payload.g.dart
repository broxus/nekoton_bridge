// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'known_payload.dart';

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

_$TokenOutgoingTransferImpl _$$TokenOutgoingTransferImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenOutgoingTransferImpl(
      TokenOutgoingTransfer.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TokenOutgoingTransferImplToJson(
        _$TokenOutgoingTransferImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$JettonOutgoingTransferImpl _$$JettonOutgoingTransferImplFromJson(
        Map<String, dynamic> json) =>
    _$JettonOutgoingTransferImpl(
      JettonOutgoingTransfer.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$JettonOutgoingTransferImplToJson(
        _$JettonOutgoingTransferImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$TokenSwapBackImpl _$$TokenSwapBackImplFromJson(Map<String, dynamic> json) =>
    _$TokenSwapBackImpl(
      TokenSwapBack.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TokenSwapBackImplToJson(_$TokenSwapBackImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
