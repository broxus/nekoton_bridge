import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen_timings.freezed.dart';
part 'gen_timings.g.dart';

@freezed
class GenTimings with _$GenTimings {
  const factory GenTimings({
    required final String genLt,
    required final int genUtime,
  }) = _GenTimings;

  factory GenTimings.fromJson(Map<String, dynamic> json) =>
      _$GenTimingsFromJson(json);
}
