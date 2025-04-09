// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mega_struct.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Coords _$CoordsFromJson(Map<String, dynamic> json) => _Coords(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      z: (json['z'] as num).toDouble(),
    );

Map<String, dynamic> _$CoordsToJson(_Coords instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'z': instance.z,
    };

_MegaStruct _$MegaStructFromJson(Map<String, dynamic> json) => _MegaStruct(
      name: json['name'] as String,
      coords: Coords.fromJson(json['coords'] as Map<String, dynamic>),
      props: Map<String, String>.from(json['props'] as Map),
    );

Map<String, dynamic> _$MegaStructToJson(_MegaStruct instance) =>
    <String, dynamic>{
      'name': instance.name,
      'coords': instance.coords.toJson(),
      'props': instance.props,
    };
