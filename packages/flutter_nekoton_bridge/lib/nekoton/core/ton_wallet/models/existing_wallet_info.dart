import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/accounts_storage/models/wallet_type.dart';

part 'existing_wallet_info.freezed.dart';
part 'existing_wallet_info.g.dart';

@freezed
sealed class ExistingWalletInfo with _$ExistingWalletInfo {
  const factory ExistingWalletInfo({
    required final Address address,
    required final PublicKey publicKey,
    required final WalletType walletType,
    required final ContractState contractState,
  }) = _ExistingWalletInfo;

  factory ExistingWalletInfo.fromJson(Map<String, dynamic> json) =>
      _$ExistingWalletInfoFromJson(json);
}
