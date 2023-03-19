import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/helpers/models/tokens_object.dart';

part 'decoded_output.freezed.dart';
part 'decoded_output.g.dart';

@freezed
class DecodedOutput with _$DecodedOutput {
  const factory DecodedOutput({
    required String method,
    required TokensObject output,
  }) = _DecodedOutput;

  factory DecodedOutput.fromJson(Map<String, dynamic> json) =>
      _$DecodedOutputFromJson(json);
}
