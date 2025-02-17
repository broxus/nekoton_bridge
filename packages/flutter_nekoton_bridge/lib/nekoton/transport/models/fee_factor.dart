import 'package:freezed_annotation/freezed_annotation.dart';

part 'fee_factor.freezed.dart';
part 'fee_factor.g.dart';

@freezed
sealed class FeeFactors with _$FeeFactors {
  const factory FeeFactors({
    required String storageFeeFactor,
    required String gasFeeFactor,
  }) = _FeeFactors;

  factory FeeFactors.fromJson(Map<String, dynamic> json) =>
      _$FeeFactorsFromJson(json);

  const FeeFactors._();
}
