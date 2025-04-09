import 'package:flutter_nekoton_bridge/nekoton/core/jetton_wallet/models/jetton_outgoing_transfer.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/token_wallet/models/token_outgoing_transfer.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/token_wallet/models/token_swap_back.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'known_payload.freezed.dart';
part 'known_payload.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class KnownPayload with _$KnownPayload {
  const factory KnownPayload.comment(final String data) = KnownPayloadComment;

  const factory KnownPayload.tokenOutgoingTransfer(
      final TokenOutgoingTransfer data) = KnownPayloadTokenOutgoingTransfer;

  const factory KnownPayload.jettonOutgoingTransfer(
      final JettonOutgoingTransfer data) = KnownPayloadJettonOutgoingTransfer;

  const factory KnownPayload.tokenSwapBack(final TokenSwapBack data) =
      KnownPayloadTokenSwapBack;

  factory KnownPayload.fromJson(Map<String, dynamic> json) =>
      _$KnownPayloadFromJson(json);
}
