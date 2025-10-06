// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletTypeMultisig _$WalletTypeMultisigFromJson(Map<String, dynamic> json) =>
    WalletTypeMultisig(
      $enumDecode(_$MultisigTypeEnumMap, json['data']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$WalletTypeMultisigToJson(WalletTypeMultisig instance) =>
    <String, dynamic>{
      'data': _$MultisigTypeEnumMap[instance.data]!,
      'type': instance.$type,
    };

const _$MultisigTypeEnumMap = {
  MultisigType.safeMultisigWallet: 'SafeMultisigWallet',
  MultisigType.safeMultisigWallet24h: 'SafeMultisigWallet24h',
  MultisigType.setcodeMultisigWallet: 'SetcodeMultisigWallet',
  MultisigType.setcodeMultisigWallet24h: 'SetcodeMultisigWallet24h',
  MultisigType.bridgeMultisigWallet: 'BridgeMultisigWallet',
  MultisigType.surfWallet: 'SurfWallet',
  MultisigType.multisig2: 'Multisig2',
  MultisigType.multisig2_1: 'Multisig2_1',
};

WalletTypeWalletV3 _$WalletTypeWalletV3FromJson(Map<String, dynamic> json) =>
    WalletTypeWalletV3($type: json['type'] as String?);

Map<String, dynamic> _$WalletTypeWalletV3ToJson(WalletTypeWalletV3 instance) =>
    <String, dynamic>{'type': instance.$type};

WalletTypeHighloadWalletV2 _$WalletTypeHighloadWalletV2FromJson(
  Map<String, dynamic> json,
) => WalletTypeHighloadWalletV2($type: json['type'] as String?);

Map<String, dynamic> _$WalletTypeHighloadWalletV2ToJson(
  WalletTypeHighloadWalletV2 instance,
) => <String, dynamic>{'type': instance.$type};

WalletTypeEverWallet _$WalletTypeEverWalletFromJson(
  Map<String, dynamic> json,
) => WalletTypeEverWallet($type: json['type'] as String?);

Map<String, dynamic> _$WalletTypeEverWalletToJson(
  WalletTypeEverWallet instance,
) => <String, dynamic>{'type': instance.$type};

WalletTypeWalletV3R1 _$WalletTypeWalletV3R1FromJson(
  Map<String, dynamic> json,
) => WalletTypeWalletV3R1($type: json['type'] as String?);

Map<String, dynamic> _$WalletTypeWalletV3R1ToJson(
  WalletTypeWalletV3R1 instance,
) => <String, dynamic>{'type': instance.$type};

WalletTypeWalletV3R2 _$WalletTypeWalletV3R2FromJson(
  Map<String, dynamic> json,
) => WalletTypeWalletV3R2($type: json['type'] as String?);

Map<String, dynamic> _$WalletTypeWalletV3R2ToJson(
  WalletTypeWalletV3R2 instance,
) => <String, dynamic>{'type': instance.$type};

WalletTypeWalletV4R1 _$WalletTypeWalletV4R1FromJson(
  Map<String, dynamic> json,
) => WalletTypeWalletV4R1($type: json['type'] as String?);

Map<String, dynamic> _$WalletTypeWalletV4R1ToJson(
  WalletTypeWalletV4R1 instance,
) => <String, dynamic>{'type': instance.$type};

WalletTypeWalletV4R2 _$WalletTypeWalletV4R2FromJson(
  Map<String, dynamic> json,
) => WalletTypeWalletV4R2($type: json['type'] as String?);

Map<String, dynamic> _$WalletTypeWalletV4R2ToJson(
  WalletTypeWalletV4R2 instance,
) => <String, dynamic>{'type': instance.$type};

WalletTypeWalletV5R1 _$WalletTypeWalletV5R1FromJson(
  Map<String, dynamic> json,
) => WalletTypeWalletV5R1($type: json['type'] as String?);

Map<String, dynamic> _$WalletTypeWalletV5R1ToJson(
  WalletTypeWalletV5R1 instance,
) => <String, dynamic>{'type': instance.$type};
