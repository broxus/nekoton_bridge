// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendImpl _$$SendImplFromJson(Map<String, dynamic> json) => _$SendImpl(
      MultisigSendTransaction.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SendImplToJson(_$SendImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$SubmitImpl _$$SubmitImplFromJson(Map<String, dynamic> json) => _$SubmitImpl(
      MultisigSubmitTransaction.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SubmitImplToJson(_$SubmitImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$ConfirmImpl _$$ConfirmImplFromJson(Map<String, dynamic> json) =>
    _$ConfirmImpl(
      MultisigConfirmTransaction.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ConfirmImplToJson(_$ConfirmImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
