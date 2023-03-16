import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'encrypted_key_export_output.freezed.dart';

part 'encrypted_key_export_output.g.dart';

@freezed
class EncryptedKeyExportOutput
    with _$EncryptedKeyExportOutput
    implements ExportKeyOutput {
  const factory EncryptedKeyExportOutput(
    String phrase,
    @MnemonicTypeJsonConverter() MnemonicType mnemonicType,
  ) = _EncryptedKeyExportOutput;

  factory EncryptedKeyExportOutput.fromJson(Map<String, dynamic> json) =>
      _$EncryptedKeyExportOutputFromJson(json);
}
