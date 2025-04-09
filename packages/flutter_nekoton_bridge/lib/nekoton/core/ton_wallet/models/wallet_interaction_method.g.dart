// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_interaction_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletInteractionMethodWalletV3Transfer
    _$WalletInteractionMethodWalletV3TransferFromJson(
            Map<String, dynamic> json) =>
        WalletInteractionMethodWalletV3Transfer(
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$WalletInteractionMethodWalletV3TransferToJson(
        WalletInteractionMethodWalletV3Transfer instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

WalletInteractionMethodTonWalletTransfer
    _$WalletInteractionMethodTonWalletTransferFromJson(
            Map<String, dynamic> json) =>
        WalletInteractionMethodTonWalletTransfer(
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$WalletInteractionMethodTonWalletTransferToJson(
        WalletInteractionMethodTonWalletTransfer instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

WalletInteractionMethodMultisig _$WalletInteractionMethodMultisigFromJson(
        Map<String, dynamic> json) =>
    WalletInteractionMethodMultisig(
      MultisigTransaction.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$WalletInteractionMethodMultisigToJson(
        WalletInteractionMethodMultisig instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
