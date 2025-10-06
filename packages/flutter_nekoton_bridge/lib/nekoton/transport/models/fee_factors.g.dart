// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fee_factors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeeFactors _$FeeFactorsFromJson(Map<String, dynamic> json) => _FeeFactors(
  storageFeeFactor: (json['storageFeeFactor'] as num).toInt(),
  gasFeeFactor: (json['gasFeeFactor'] as num).toInt(),
);

Map<String, dynamic> _$FeeFactorsToJson(_FeeFactors instance) =>
    <String, dynamic>{
      'storageFeeFactor': instance.storageFeeFactor,
      'gasFeeFactor': instance.gasFeeFactor,
    };
