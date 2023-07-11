import 'package:flutter_nekoton_bridge/nekoton/helpers/models/tokens_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'decoded_event.freezed.dart';
part 'decoded_event.g.dart';

@freezed
sealed class DecodedEvent with _$DecodedEvent {
  const factory DecodedEvent({
    required final String event,
    required final TokensObject data,
  }) = _DecodedEvent;

  factory DecodedEvent.fromJson(Map<String, dynamic> json) =>
      _$DecodedEventFromJson(json);
}
