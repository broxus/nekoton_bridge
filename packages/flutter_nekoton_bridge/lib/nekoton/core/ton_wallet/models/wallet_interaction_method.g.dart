// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_interaction_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletV3TransferImpl _$$WalletV3TransferImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletV3TransferImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$WalletV3TransferImplToJson(
        _$WalletV3TransferImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$TonWalletTransferImpl _$$TonWalletTransferImplFromJson(
        Map<String, dynamic> json) =>
    _$TonWalletTransferImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TonWalletTransferImplToJson(
        _$TonWalletTransferImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$MultisigImpl _$$MultisigImplFromJson(Map<String, dynamic> json) =>
    _$MultisigImpl(
      MultisigTransaction.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MultisigImplToJson(_$MultisigImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
