// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Multisig _$$_MultisigFromJson(Map<String, dynamic> json) => _$_Multisig(
      $enumDecode(_$MultisigTypeEnumMap, json['data']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_MultisigToJson(_$_Multisig instance) =>
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

_$_WalletV3 _$$_WalletV3FromJson(Map<String, dynamic> json) => _$_WalletV3(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_WalletV3ToJson(_$_WalletV3 instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$_HighloadWalletV2 _$$_HighloadWalletV2FromJson(Map<String, dynamic> json) =>
    _$_HighloadWalletV2(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_HighloadWalletV2ToJson(_$_HighloadWalletV2 instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$_WalletTypeEverWallet _$$_WalletTypeEverWalletFromJson(
        Map<String, dynamic> json) =>
    _$_WalletTypeEverWallet(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_WalletTypeEverWalletToJson(
        _$_WalletTypeEverWallet instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };
