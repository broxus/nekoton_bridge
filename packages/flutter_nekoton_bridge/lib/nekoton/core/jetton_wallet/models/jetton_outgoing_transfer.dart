import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jetton_outgoing_transfer.freezed.dart';
part 'jetton_outgoing_transfer.g.dart';

@freezed
sealed class JettonOutgoingTransfer with _$JettonOutgoingTransfer {
  const factory JettonOutgoingTransfer({
    required final BigInt tokens,
    required final Address to,
  }) = _JettonOutgoingTransfer;

  factory JettonOutgoingTransfer.fromJson(Map<String, dynamic> json) =>
      _$JettonOutgoingTransferFromJson(json);
}
