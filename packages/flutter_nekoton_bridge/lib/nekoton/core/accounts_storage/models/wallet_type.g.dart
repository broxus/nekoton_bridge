// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MultisigImpl _$$MultisigImplFromJson(Map<String, dynamic> json) =>
    _$MultisigImpl(
      $enumDecode(_$MultisigTypeEnumMap, json['data']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MultisigImplToJson(_$MultisigImpl instance) =>
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

_$WalletV3Impl _$$WalletV3ImplFromJson(Map<String, dynamic> json) =>
    _$WalletV3Impl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$WalletV3ImplToJson(_$WalletV3Impl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$HighloadWalletV2Impl _$$HighloadWalletV2ImplFromJson(
        Map<String, dynamic> json) =>
    _$HighloadWalletV2Impl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$HighloadWalletV2ImplToJson(
        _$HighloadWalletV2Impl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$WalletTypeEverWalletImpl _$$WalletTypeEverWalletImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletTypeEverWalletImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$WalletTypeEverWalletImplToJson(
        _$WalletTypeEverWalletImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };
