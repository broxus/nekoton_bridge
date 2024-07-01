// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expiration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NeverImpl _$$NeverImplFromJson(Map<String, dynamic> json) => _$NeverImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$NeverImplToJson(_$NeverImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$TimeoutImpl _$$TimeoutImplFromJson(Map<String, dynamic> json) =>
    _$TimeoutImpl(
      (json['data'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TimeoutImplToJson(_$TimeoutImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };

_$TimestampImpl _$$TimestampImplFromJson(Map<String, dynamic> json) =>
    _$TimestampImpl(
      (json['data'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TimestampImplToJson(_$TimestampImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.$type,
    };
