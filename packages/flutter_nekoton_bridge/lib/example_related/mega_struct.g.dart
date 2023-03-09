// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mega_struct.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Coords _$$_CoordsFromJson(Map<String, dynamic> json) => _$_Coords(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      z: (json['z'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CoordsToJson(_$_Coords instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'z': instance.z,
    };

_$_MegaStruct _$$_MegaStructFromJson(Map<String, dynamic> json) =>
    _$_MegaStruct(
      name: json['name'] as String,
      coords: Coords.fromJson(json['coords'] as Map<String, dynamic>),
      props: Map<String, String>.from(json['props'] as Map),
    );

Map<String, dynamic> _$$_MegaStructToJson(_$_MegaStruct instance) =>
    <String, dynamic>{
      'name': instance.name,
      'coords': instance.coords,
      'props': instance.props,
    };
