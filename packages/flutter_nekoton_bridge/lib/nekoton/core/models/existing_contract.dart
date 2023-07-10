import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/gen_timings.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/last_transaction_id.dart';

part 'existing_contract.freezed.dart';
part 'existing_contract.g.dart';

@freezed
sealed class ExistingContract with _$ExistingContract {
  const factory ExistingContract({
    required final String account,
    required final GenTimings timings,
    required final LastTransactionId lastTransactionId,
  }) = _ExistingContract;

  factory ExistingContract.fromJson(Map<String, dynamic> json) =>
      _$ExistingContractFromJson(json);
}
