// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expiration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpirationNever _$ExpirationNeverFromJson(Map<String, dynamic> json) =>
    ExpirationNever(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ExpirationNeverToJson(ExpirationNever instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

ExpirationTimeout _$ExpirationTimeoutFromJson(Map<String, dynamic> json) =>
    ExpirationTimeout(
      (json['data'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ExpirationTimeoutToJson(ExpirationTimeout instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

ExpirationTimestamp _$ExpirationTimestampFromJson(Map<String, dynamic> json) =>
    ExpirationTimestamp(
      (json['data'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ExpirationTimestampToJson(
        ExpirationTimestamp instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };
