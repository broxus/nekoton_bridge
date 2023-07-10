import 'package:flutter_nekoton_bridge/nekoton/core/models/pending_transaction.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_message_sent_payload.freezed.dart';
part 'on_message_sent_payload.g.dart';

@freezed
class OnMessageSentPayload with _$OnMessageSentPayload {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory OnMessageSentPayload({
    required final PendingTransaction pendingTransaction,
    final Transaction? transaction,
  }) = _OnMessageSentPayload;

  factory OnMessageSentPayload.fromJson(Map<String, dynamic> json) =>
      _$OnMessageSentPayloadFromJson(json);
}
