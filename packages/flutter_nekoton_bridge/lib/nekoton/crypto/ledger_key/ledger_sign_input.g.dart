// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_sign_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LedgerSignInput _$$_LedgerSignInputFromJson(Map<String, dynamic> json) =>
    _$_LedgerSignInput(
      publicKey: json['publicKey'] as String,
      context: json['context'] == null
          ? null
          : LedgerSignatureContext.fromJson(
              json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LedgerSignInputToJson(_$_LedgerSignInput instance) =>
    <String, dynamic>{
      'publicKey': instance.publicKey,
      'context': instance.context?.toJson(),
    };
