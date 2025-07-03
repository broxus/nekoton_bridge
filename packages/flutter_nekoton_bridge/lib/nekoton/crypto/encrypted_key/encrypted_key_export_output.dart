import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'encrypted_key_export_output.freezed.dart';

part 'encrypted_key_export_output.g.dart';

@freezed
abstract class EncryptedKeyExportSeedOutput
    with _$EncryptedKeyExportSeedOutput
    implements ExportKeyOutput {
  factory EncryptedKeyExportSeedOutput({
    required final String phrase,
    @mnemonicJsonConverter required final MnemonicType mnemonicType,
  }) = _EncryptedKeyExportSeedOutput;

  factory EncryptedKeyExportSeedOutput.fromJson(Map<String, dynamic> json) =>
      _$EncryptedKeyExportSeedOutputFromJson(json);
}
