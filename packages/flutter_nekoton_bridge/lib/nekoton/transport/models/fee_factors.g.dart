// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fee_factors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeeFactorsImpl _$$FeeFactorsImplFromJson(Map<String, dynamic> json) =>
    _$FeeFactorsImpl(
      storageFeeFactor: (json['storageFeeFactor'] as num).toInt(),
      gasFeeFactor: (json['gasFeeFactor'] as num).toInt(),
    );

Map<String, dynamic> _$$FeeFactorsImplToJson(_$FeeFactorsImpl instance) =>
    <String, dynamic>{
      'storageFeeFactor': instance.storageFeeFactor,
      'gasFeeFactor': instance.gasFeeFactor,
    };
