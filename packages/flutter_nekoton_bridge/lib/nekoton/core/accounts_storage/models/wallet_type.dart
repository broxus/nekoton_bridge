import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/accounts_storage/models/multisig_type.dart';

part 'wallet_type.freezed.dart';
part 'wallet_type.g.dart';

@Freezed(unionKey: 'type')
sealed class WalletType with _$WalletType {
  const factory WalletType.multisig(final MultisigType data) = _Multisig;

  const factory WalletType.walletV3() = _WalletV3;

  const factory WalletType.highloadWalletV2() = _HighloadWalletV2;

  const factory WalletType.everWallet() = _WalletTypeEverWallet;

  const factory WalletType.walletV3R1() = _WalletTypeWalletV3R1;

  const factory WalletType.walletV3R2() = _WalletTypeWalletV3R2;

  const factory WalletType.walletV4R1() = _WalletTypeWalletV4R1;

  const factory WalletType.walletV4R2() = _WalletTypeWalletV4R2;

  const factory WalletType.walletV5R1() = _WalletTypeWalletV5R1;

  factory WalletType.fromJson(Map<String, dynamic> json) =>
      _$WalletTypeFromJson(json);
}
