import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/accounts_storage/models/multisig_type.dart';

part 'wallet_type.freezed.dart';
part 'wallet_type.g.dart';

@Freezed(unionKey: 'type')
sealed class WalletType with _$WalletType {
  const factory WalletType.multisig(final MultisigType data) =
      WalletTypeMultisig;

  const factory WalletType.walletV3() = WalletTypeWalletV3;

  const factory WalletType.highloadWalletV2() = WalletTypeHighloadWalletV2;

  const factory WalletType.everWallet() = WalletTypeEverWallet;

  const factory WalletType.walletV3R1() = WalletTypeWalletV3R1;

  const factory WalletType.walletV3R2() = WalletTypeWalletV3R2;

  const factory WalletType.walletV4R1() = WalletTypeWalletV4R1;

  const factory WalletType.walletV4R2() = WalletTypeWalletV4R2;

  const factory WalletType.walletV5R1() = WalletTypeWalletV5R1;

  factory WalletType.fromJson(Map<String, dynamic> json) =>
      _$WalletTypeFromJson(json);
}
