// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_wallet_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IncomingTransferImpl _$$IncomingTransferImplFromJson(
        Map<String, dynamic> json) =>
    _$IncomingTransferImpl(
      TokenIncomingTransfer.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$IncomingTransferImplToJson(
        _$IncomingTransferImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$OutgoingTransferImpl _$$OutgoingTransferImplFromJson(
        Map<String, dynamic> json) =>
    _$OutgoingTransferImpl(
      TokenOutgoingTransfer.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OutgoingTransferImplToJson(
        _$OutgoingTransferImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$SwapBackImpl _$$SwapBackImplFromJson(Map<String, dynamic> json) =>
    _$SwapBackImpl(
      TokenSwapBack.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SwapBackImplToJson(_$SwapBackImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$AcceptImpl _$$AcceptImplFromJson(Map<String, dynamic> json) => _$AcceptImpl(
      amountJsonConverter.fromJson(json['data'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AcceptImplToJson(_$AcceptImpl instance) =>
    <String, dynamic>{
      'data': amountJsonConverter.toJson(instance.data),
      'type': instance.$type,
    };

_$TransferBouncedImpl _$$TransferBouncedImplFromJson(
        Map<String, dynamic> json) =>
    _$TransferBouncedImpl(
      amountJsonConverter.fromJson(json['data'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TransferBouncedImplToJson(
        _$TransferBouncedImpl instance) =>
    <String, dynamic>{
      'data': amountJsonConverter.toJson(instance.data),
      'type': instance.$type,
    };

_$SwapBackBouncedImpl _$$SwapBackBouncedImplFromJson(
        Map<String, dynamic> json) =>
    _$SwapBackBouncedImpl(
      amountJsonConverter.fromJson(json['data'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SwapBackBouncedImplToJson(
        _$SwapBackBouncedImpl instance) =>
    <String, dynamic>{
      'data': amountJsonConverter.toJson(instance.data),
      'type': instance.$type,
    };
