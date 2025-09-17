import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/gen_timings.dart';

part 'not_existing_contract.freezed.dart';
part 'not_existing_contract.g.dart';

@freezed
sealed class NotExistingContract with _$NotExistingContract {
  const factory NotExistingContract({required final GenTimings timings}) =
      _NotExistingContract;

  factory NotExistingContract.fromJson(Map<String, dynamic> json) =>
      _$NotExistingContractFromJson(json);
}
