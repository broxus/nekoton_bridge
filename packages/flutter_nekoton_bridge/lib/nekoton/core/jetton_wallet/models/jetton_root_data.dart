import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jetton_root_data.freezed.dart';
part 'jetton_root_data.g.dart';

@freezed
sealed class JettonRootData with _$JettonRootData {
  const factory JettonRootData({
    required final bool mintable,
    required final Address adminAddress,
    required final JettonMetaData content,
  }) = _JettonRootData;

  factory JettonRootData.fromJson(Map<String, dynamic> json) =>
      _$JettonRootDataFromJson(json);
}
