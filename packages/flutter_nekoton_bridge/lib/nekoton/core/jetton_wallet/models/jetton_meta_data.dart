import 'package:freezed_annotation/freezed_annotation.dart';

part 'jetton_meta_data.freezed.dart';
part 'jetton_meta_data.g.dart';

@freezed
sealed class JettonMetaData with _$JettonMetaData {
  const factory JettonMetaData({
    final String? name,
    final String? uri,
    final String? symbol,
    final String? description,
    final String? image,
    final int? decimals,
  }) = _JettonMetaData;

  factory JettonMetaData.fromJson(Map<String, dynamic> json) =>
      _$JettonMetaDataFromJson(json);
}
