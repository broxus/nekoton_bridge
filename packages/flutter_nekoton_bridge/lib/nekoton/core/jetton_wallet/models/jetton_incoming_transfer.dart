import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jetton_incoming_transfer.freezed.dart';
part 'jetton_incoming_transfer.g.dart';

@freezed
sealed class JettonIncomingTransfer with _$JettonIncomingTransfer {
  const factory JettonIncomingTransfer({
    @amountJsonConverter required final BigInt tokens,
    required final Address from,
  }) = _JettonIncomingTransfer;

  factory JettonIncomingTransfer.fromJson(Map<String, dynamic> json) =>
      _$JettonIncomingTransferFromJson(json);
}
