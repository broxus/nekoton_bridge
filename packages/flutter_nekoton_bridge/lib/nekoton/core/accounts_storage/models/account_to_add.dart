import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/accounts_storage/models/wallet_type.dart';

part 'account_to_add.freezed.dart';
part 'account_to_add.g.dart';

@freezed
sealed class AccountToAdd with _$AccountToAdd {
  const factory AccountToAdd({
    required final String name,
    required final PublicKey publicKey,
    required final WalletType contract,
    required final int workchain,
    final Address? explicitAddress,
  }) = _AccountToAdd;

  factory AccountToAdd.fromJson(Map<String, dynamic> json) =>
      _$AccountToAddFromJson(json);
}
