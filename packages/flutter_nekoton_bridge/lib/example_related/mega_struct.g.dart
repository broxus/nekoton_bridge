// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mega_struct.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoordsImpl _$$CoordsImplFromJson(Map<String, dynamic> json) => _$CoordsImpl(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      z: (json['z'] as num).toDouble(),
    );

Map<String, dynamic> _$$CoordsImplToJson(_$CoordsImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'z': instance.z,
    };

_$MegaStructImpl _$$MegaStructImplFromJson(Map<String, dynamic> json) =>
    _$MegaStructImpl(
      name: json['name'] as String,
      coords: Coords.fromJson(json['coords'] as Map<String, dynamic>),
      props: Map<String, String>.from(json['props'] as Map),
    );

Map<String, dynamic> _$$MegaStructImplToJson(_$MegaStructImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'coords': instance.coords.toJson(),
      'props': instance.props,
    };
