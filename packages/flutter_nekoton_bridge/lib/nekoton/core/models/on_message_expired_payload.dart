import 'package:flutter_nekoton_bridge/nekoton/core/models/pending_transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_message_expired_payload.freezed.dart';
part 'on_message_expired_payload.g.dart';

@freezed
class OnMessageExpiredPayload with _$OnMessageExpiredPayload {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory OnMessageExpiredPayload({
    required final PendingTransaction pendingTransaction,
  }) = _OnMessageExpiredPayload;

  factory OnMessageExpiredPayload.fromJson(Map<String, dynamic> json) =>
      _$OnMessageExpiredPayloadFromJson(json);
}
