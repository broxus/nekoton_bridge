// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_cache_behavior.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Store _$StoreFromJson(Map<String, dynamic> json) =>
    _Store((json['data'] as num).toInt(), $type: json['type'] as String?);

Map<String, dynamic> _$StoreToJson(_Store instance) => <String, dynamic>{
  'data': instance.data,
  'type': instance.$type,
};

_Remove _$RemoveFromJson(Map<String, dynamic> json) =>
    _Remove($type: json['type'] as String?);

Map<String, dynamic> _$RemoveToJson(_Remove instance) => <String, dynamic>{
  'type': instance.$type,
};

_Nop _$NopFromJson(Map<String, dynamic> json) =>
    _Nop($type: json['type'] as String?);

Map<String, dynamic> _$NopToJson(_Nop instance) => <String, dynamic>{
  'type': instance.$type,
};
