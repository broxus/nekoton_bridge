import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:flutter_nekoton_bridge/nekoton/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/accounts_storage/models/wallet_type.dart';

part 'existing_wallet_info.freezed.dart';
part 'existing_wallet_info.g.dart';

@freezed
class ExistingWalletInfo with _$ExistingWalletInfo {
  const factory ExistingWalletInfo({
    @addressJsonConverter required Address address,
    @publicKeyJsonConverter required PublicKey publicKey,
    required WalletType walletType,
    required ContractState contractState,
  }) = _ExistingWalletInfo;

  factory ExistingWalletInfo.fromJson(Map<String, dynamic> json) =>
      _$ExistingWalletInfoFromJson(json);
}
