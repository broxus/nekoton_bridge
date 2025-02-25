import 'package:freezed_annotation/freezed_annotation.dart';

part 'fee_factors.freezed.dart';
part 'fee_factors.g.dart';

@freezed
sealed class FeeFactors with _$FeeFactors {
  const factory FeeFactors({
    required int storageFeeFactor,
    required int gasFeeFactor,
  }) = _FeeFactors;

  factory FeeFactors.fromJson(Map<String, dynamic> json) =>
      _$FeeFactorsFromJson(json);
}
