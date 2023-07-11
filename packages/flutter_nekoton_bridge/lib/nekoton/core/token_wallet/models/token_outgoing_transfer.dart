import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/token_wallet/models/transfer_recipient.dart';

part 'token_outgoing_transfer.freezed.dart';
part 'token_outgoing_transfer.g.dart';

@freezed
sealed class TokenOutgoingTransfer with _$TokenOutgoingTransfer {
  const factory TokenOutgoingTransfer({
    required final TransferRecipient to,
    required final String tokens,
  }) = _TokenOutgoingTransfer;

  factory TokenOutgoingTransfer.fromJson(Map<String, dynamic> json) =>
      _$TokenOutgoingTransferFromJson(json);
}
