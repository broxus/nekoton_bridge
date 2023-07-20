import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_outgoing_transfer.freezed.dart';

part 'token_outgoing_transfer.g.dart';

@freezed
sealed class TokenOutgoingTransfer with _$TokenOutgoingTransfer {
  const factory TokenOutgoingTransfer({
    required final TransferRecipient to,
    @amountJsonConverter required final BigInt tokens,
  }) = _TokenOutgoingTransfer;

  factory TokenOutgoingTransfer.fromJson(Map<String, dynamic> json) =>
      _$TokenOutgoingTransferFromJson(json);
}
