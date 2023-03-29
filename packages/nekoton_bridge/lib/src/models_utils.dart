import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nekoton_bridge/nekoton_bridge.dart';

const mnemonicJsonConverter = MnemonicTypeJsonConverter();

/// Json converter for MnemonicType
class MnemonicTypeJsonConverter
    implements JsonConverter<MnemonicType, Map<String, dynamic>> {
  const MnemonicTypeJsonConverter();

  @override
  MnemonicType fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'legacy':
        return const MnemonicType.legacy();
      case 'labs':
        return MnemonicType.labs(json['data'] as int);

      default:
        throw CheckedFromJsonException(
          json,
          'type',
          'MnemonicType',
          'Invalid union type "${json['type']}"!',
        );
    }
  }

  @override
  Map<String, dynamic> toJson(MnemonicType object) {
    final json = <String, dynamic>{
      'type': object.when(legacy: () => 'legacy', labs: (_) => 'labs'),
    };
    final data = object.when(
      legacy: () => null,
      labs: (field0) => field0,
    );
    if (data != null) {
      json['data'] = data;
    }

    return json;
  }
}
