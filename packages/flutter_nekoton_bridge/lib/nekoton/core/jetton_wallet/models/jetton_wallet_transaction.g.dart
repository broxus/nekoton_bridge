// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jetton_wallet_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferImpl _$$TransferImplFromJson(Map<String, dynamic> json) =>
    _$TransferImpl(
      JettonOutgoingTransfer.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TransferImplToJson(_$TransferImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$InternalTransferImpl _$$InternalTransferImplFromJson(
        Map<String, dynamic> json) =>
    _$InternalTransferImpl(
      JettonIncomingTransfer.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$InternalTransferImplToJson(
        _$InternalTransferImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
