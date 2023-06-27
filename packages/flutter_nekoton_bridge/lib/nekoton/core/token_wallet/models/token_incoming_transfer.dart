import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:flutter_nekoton_bridge/nekoton/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_incoming_transfer.freezed.dart';
part 'token_incoming_transfer.g.dart';

@freezed
class TokenIncomingTransfer with _$TokenIncomingTransfer {
  const factory TokenIncomingTransfer({
    required String tokens,
    @addressJsonConverter required Address senderAddress,
  }) = _TokenIncomingTransfer;

  factory TokenIncomingTransfer.fromJson(Map<String, dynamic> json) =>
      _$TokenIncomingTransferFromJson(json);
}
