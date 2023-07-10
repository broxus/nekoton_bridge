import 'package:flutter_nekoton_bridge/nekoton/core/accounts_storage/models/multisig_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_type.freezed.dart';
part 'wallet_type.g.dart';

@Freezed(unionKey: 'type')
sealed class WalletType with _$WalletType {
  const factory WalletType.multisig(final MultisigType data) = _Multisig;

  const factory WalletType.walletV3() = _WalletV3;

  const factory WalletType.highloadWalletV2() = _HighloadWalletV2;

  const factory WalletType.everWallet() = _WalletTypeEverWallet;

  factory WalletType.fromJson(Map<String, dynamic> json) =>
      _$WalletTypeFromJson(json);
}
