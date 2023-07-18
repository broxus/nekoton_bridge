import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/multisig_transaction.dart';

part 'wallet_interaction_method.freezed.dart';

part 'wallet_interaction_method.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
class WalletInteractionMethod with _$WalletInteractionMethod {
  const factory WalletInteractionMethod.walletV3Transfer() = _WalletV3Transfer;

  const factory WalletInteractionMethod.multisig(
    final MultisigTransaction data,
  ) = _Multisig;

  factory WalletInteractionMethod.fromJson(Map<String, dynamic> json) =>
      _$WalletInteractionMethodFromJson(json);
}
