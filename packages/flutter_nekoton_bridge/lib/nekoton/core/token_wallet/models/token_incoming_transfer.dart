import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_incoming_transfer.freezed.dart';

part 'token_incoming_transfer.g.dart';

@freezed
sealed class TokenIncomingTransfer with _$TokenIncomingTransfer {
  const factory TokenIncomingTransfer({
    @amountJsonConverter required final Fixed tokens,
    required final Address senderAddress,
  }) = _TokenIncomingTransfer;

  factory TokenIncomingTransfer.fromJson(Map<String, dynamic> json) =>
      _$TokenIncomingTransferFromJson(json);
}
