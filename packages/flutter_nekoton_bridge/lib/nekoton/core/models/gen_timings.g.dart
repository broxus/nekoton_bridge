// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gen_timings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenTimings _$GenTimingsFromJson(Map<String, dynamic> json) => _GenTimings(
  genLt: json['genLt'] as String,
  genUtime: (json['genUtime'] as num).toInt(),
);

Map<String, dynamic> _$GenTimingsToJson(_GenTimings instance) =>
    <String, dynamic>{'genLt': instance.genLt, 'genUtime': instance.genUtime};
