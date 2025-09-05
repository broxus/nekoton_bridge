import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jetton_wallet_data.freezed.dart';
part 'jetton_wallet_data.g.dart';

@freezed
sealed class JettonWalletData with _$JettonWalletData {
  const factory JettonWalletData({
    required final Address rootAddress,
    required final Address ownerAddress,
    required final BigInt balance,
  }) = _JettonWalletData;

  factory JettonWalletData.fromJson(Map<String, dynamic> json) =>
      _$JettonWalletDataFromJson(json);
}
