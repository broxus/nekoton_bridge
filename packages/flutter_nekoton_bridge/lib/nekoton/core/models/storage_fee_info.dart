import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_fee_info.freezed.dart';
part 'storage_fee_info.g.dart';

@freezed
sealed class StorageFeeInfo with _$StorageFeeInfo {
  const factory StorageFeeInfo({
    required final String storageFee,
    required final String? storageFeeDebt,
    required final String accountStatus,
    required final String freezeDueLimit,
    required final String deleteDueLimit,
  }) = _StorageFeeInfo;

  factory StorageFeeInfo.fromJson(Map<String, dynamic> json) =>
      _$StorageFeeInfoFromJson(json);
}
