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
      case 'bip39':
        return MnemonicType.bip39(
          Bip39MnemonicData(
            accountId: json['data']['account_id'] as int,
            // path: json['data']['path'] as String,
            path: switch (json['data']['path'] as String) {
              'ever' => Bip39Path.ever,
              'ton' => Bip39Path.ton,
              _ => throw CheckedFromJsonException(
                  json['data'],
                  'path',
                  'Bip39Path',
                  'Invalid enum value "${json['data']['path']}"!',
                ),
            },
            entropy: switch (json['data']['entropy'] as String) {
              'bits128' => Bip39Entropy.bits128,
              'bits256' => Bip39Entropy.bits256,
              _ => throw CheckedFromJsonException(
                  json['data'],
                  'entropy',
                  'Bip39Entropy',
                  'Invalid enum value "${json['data']['entropy']}"!',
                ),
            },
          ),
        ); // json['data'] as int

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
      'type': object.when(legacy: () => 'legacy', bip39: (_) => 'bip39'),
    };
    final data = object.when(
      legacy: () => null,
      bip39: (field0) => field0,
    );
    if (data != null) {
      json['data'] = <String, dynamic>{
        'account_id': data.accountId,
        'path': switch (data.path) {
          Bip39Path.ever => 'ever',
          Bip39Path.ton => 'ton',
        },
        'entropy': switch (data.entropy) {
          Bip39Entropy.bits128 => 'bits128',
          Bip39Entropy.bits256 => 'bits256',
        },
      };
    }

    return json;
  }
}
