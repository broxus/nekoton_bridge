import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'mega_struct.freezed.dart';
part 'mega_struct.g.dart';

@freezed
class Coords with _$Coords {
  const factory Coords({
    required double x,
    required double y,
    required double z,
  }) = _Coords;

  factory Coords.fromJson(Map<String, Object?> json) => _$CoordsFromJson(json);
}

@freezed
class MegaStruct with _$MegaStruct {
  const factory MegaStruct({
    required String name,
    required Coords coords,
    required Map<String, String> props,
  }) = _MegaStruct;

  factory MegaStruct.fromJson(Map<String, Object?> json) =>
      _$MegaStructFromJson(json);
}
