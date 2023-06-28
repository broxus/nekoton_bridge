// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_interaction_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletV3Transfer _$$_WalletV3TransferFromJson(Map<String, dynamic> json) =>
    _$_WalletV3Transfer(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_WalletV3TransferToJson(_$_WalletV3Transfer instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$_Multisig _$$_MultisigFromJson(Map<String, dynamic> json) => _$_Multisig(
      MultisigTransaction.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_MultisigToJson(_$_Multisig instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
