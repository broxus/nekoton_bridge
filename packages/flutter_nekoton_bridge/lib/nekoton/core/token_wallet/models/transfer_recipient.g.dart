// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_recipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferRecipientOwnerWallet _$TransferRecipientOwnerWalletFromJson(
        Map<String, dynamic> json) =>
    TransferRecipientOwnerWallet(
      Address.fromJson(json['data'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TransferRecipientOwnerWalletToJson(
        TransferRecipientOwnerWallet instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

TransferRecipientTokenWallet _$TransferRecipientTokenWalletFromJson(
        Map<String, dynamic> json) =>
    TransferRecipientTokenWallet(
      Address.fromJson(json['data'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TransferRecipientTokenWalletToJson(
        TransferRecipientTokenWallet instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
