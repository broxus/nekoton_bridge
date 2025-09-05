// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_wallet_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenWalletTransactionTransfer _$TokenWalletTransactionTransferFromJson(
        Map<String, dynamic> json) =>
    TokenWalletTransactionTransfer(
      JettonOutgoingTransfer.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TokenWalletTransactionTransferToJson(
        TokenWalletTransactionTransfer instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

TokenWalletTransactionInternalTransfer
    _$TokenWalletTransactionInternalTransferFromJson(
            Map<String, dynamic> json) =>
        TokenWalletTransactionInternalTransfer(
          JettonIncomingTransfer.fromJson(json['data'] as Map<String, dynamic>),
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$TokenWalletTransactionInternalTransferToJson(
        TokenWalletTransactionInternalTransfer instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

TokenWalletTransactionIncomingTransfer
    _$TokenWalletTransactionIncomingTransferFromJson(
            Map<String, dynamic> json) =>
        TokenWalletTransactionIncomingTransfer(
          TokenIncomingTransfer.fromJson(json['data'] as Map<String, dynamic>),
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$TokenWalletTransactionIncomingTransferToJson(
        TokenWalletTransactionIncomingTransfer instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

TokenWalletTransactionOutgoingTransfer
    _$TokenWalletTransactionOutgoingTransferFromJson(
            Map<String, dynamic> json) =>
        TokenWalletTransactionOutgoingTransfer(
          TokenOutgoingTransfer.fromJson(json['data'] as Map<String, dynamic>),
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$TokenWalletTransactionOutgoingTransferToJson(
        TokenWalletTransactionOutgoingTransfer instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

TokenWalletTransactionSwapBack _$TokenWalletTransactionSwapBackFromJson(
        Map<String, dynamic> json) =>
    TokenWalletTransactionSwapBack(
      TokenSwapBack.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TokenWalletTransactionSwapBackToJson(
        TokenWalletTransactionSwapBack instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

TokenWalletTransactionAccept _$TokenWalletTransactionAcceptFromJson(
        Map<String, dynamic> json) =>
    TokenWalletTransactionAccept(
      BigInt.parse(json['data'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TokenWalletTransactionAcceptToJson(
        TokenWalletTransactionAccept instance) =>
    <String, dynamic>{
      'data': instance.data.toString(),
      'type': instance.$type,
    };

TokenWalletTransactionTransferBounced
    _$TokenWalletTransactionTransferBouncedFromJson(
            Map<String, dynamic> json) =>
        TokenWalletTransactionTransferBounced(
          BigInt.parse(json['data'] as String),
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$TokenWalletTransactionTransferBouncedToJson(
        TokenWalletTransactionTransferBounced instance) =>
    <String, dynamic>{
      'data': instance.data.toString(),
      'type': instance.$type,
    };

TokenWalletTransactionSwapBackBounced
    _$TokenWalletTransactionSwapBackBouncedFromJson(
            Map<String, dynamic> json) =>
        TokenWalletTransactionSwapBackBounced(
          BigInt.parse(json['data'] as String),
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$TokenWalletTransactionSwapBackBouncedToJson(
        TokenWalletTransactionSwapBackBounced instance) =>
    <String, dynamic>{
      'data': instance.data.toString(),
      'type': instance.$type,
    };
