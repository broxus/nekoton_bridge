import 'package:flutter_nekoton_bridge/nekoton/core/models/address.dart';
import 'package:flutter_nekoton_bridge/nekoton/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ton_wallet_transfer_params.freezed.dart';
part 'ton_wallet_transfer_params.g.dart';

@freezed
sealed class TonWalletTransferParams with _$TonWalletTransferParams {
  factory TonWalletTransferParams({
    required Address destination,
    @amountJsonConverter required BigInt amount,
    required bool bounce,
    String? body,
    String? stateInit,
  }) = _TonWalletTransferParams;

  factory TonWalletTransferParams.fromJson(Map<String, dynamic> json) =>
      _$TonWalletTransferParamsFromJson(json);
}
