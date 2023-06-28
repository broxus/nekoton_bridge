import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:flutter_nekoton_bridge/nekoton/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'depool_asset.freezed.dart';
part 'depool_asset.g.dart';

@freezed
class DePoolAsset with _$DePoolAsset {
  const factory DePoolAsset({
    @addressJsonConverter required Address address,
  }) = _DePoolAsset;

  factory DePoolAsset.fromJson(Map<String, dynamic> json) =>
      _$DePoolAssetFromJson(json);
}
