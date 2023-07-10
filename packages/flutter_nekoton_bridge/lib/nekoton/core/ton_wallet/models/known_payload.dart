import 'package:flutter_nekoton_bridge/nekoton/core/token_wallet/models/token_outgoing_transfer.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/token_wallet/models/token_swap_back.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'known_payload.freezed.dart';
part 'known_payload.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
class KnownPayload with _$KnownPayload {
  const factory KnownPayload.comment(final String data) = _Comment;

  const factory KnownPayload.tokenOutgoingTransfer(
      final TokenOutgoingTransfer data,) = _TokenOutgoingTransfer;

  const factory KnownPayload.tokenSwapBack(final TokenSwapBack data) =
      _TokenSwapBack;

  factory KnownPayload.fromJson(Map<String, dynamic> json) =>
      _$KnownPayloadFromJson(json);
}
