// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multisig_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Send _$$_SendFromJson(Map<String, dynamic> json) => _$_Send(
      MultisigSendTransaction.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_SendToJson(_$_Send instance) => <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$_Submit _$$_SubmitFromJson(Map<String, dynamic> json) => _$_Submit(
      MultisigSubmitTransaction.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_SubmitToJson(_$_Submit instance) => <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$_Confirm _$$_ConfirmFromJson(Map<String, dynamic> json) => _$_Confirm(
      MultisigConfirmTransaction.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_ConfirmToJson(_$_Confirm instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
