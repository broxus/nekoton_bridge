// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'known_payload.dart';

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

_$_TokenOutgoingTransfer _$$_TokenOutgoingTransferFromJson(
        Map<String, dynamic> json) =>
    _$_TokenOutgoingTransfer(
      TokenOutgoingTransfer.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_TokenOutgoingTransferToJson(
        _$_TokenOutgoingTransfer instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$_TokenSwapBack _$$_TokenSwapBackFromJson(Map<String, dynamic> json) =>
    _$_TokenSwapBack(
      TokenSwapBack.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_TokenSwapBackToJson(_$_TokenSwapBack instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
