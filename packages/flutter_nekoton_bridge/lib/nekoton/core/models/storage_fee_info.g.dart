// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_fee_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StorageFeeInfoImpl _$$StorageFeeInfoImplFromJson(Map<String, dynamic> json) =>
    _$StorageFeeInfoImpl(
      storageFee: json['storageFee'] as String,
      storageFeeDebt: json['storageFeeDebt'] as String,
      accountStatus: json['accountStatus'] as String?,
      freezeDueLimit: json['freezeDueLimit'] as String,
      deleteDueLimit: json['deleteDueLimit'] as String,
    );

Map<String, dynamic> _$$StorageFeeInfoImplToJson(
        _$StorageFeeInfoImpl instance) =>
    <String, dynamic>{
      'storageFee': instance.storageFee,
      'storageFeeDebt': instance.storageFeeDebt,
      'accountStatus': instance.accountStatus,
      'freezeDueLimit': instance.freezeDueLimit,
      'deleteDueLimit': instance.deleteDueLimit,
    };
