import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/export_key_output.dart';

part 'derived_key_export_output.freezed.dart';
part 'derived_key_export_output.g.dart';

@freezed
abstract class DerivedKeyExportOutput
    with _$DerivedKeyExportOutput
    implements ExportKeyOutput {
  const factory DerivedKeyExportOutput({
    required final String phrase,
  }) = _DerivedKeyExportOutput;

  factory DerivedKeyExportOutput.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyExportOutputFromJson(json);
}
