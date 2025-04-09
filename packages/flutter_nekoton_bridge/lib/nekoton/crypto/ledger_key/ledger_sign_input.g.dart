// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_sign_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LedgerSignInput _$LedgerSignInputFromJson(Map<String, dynamic> json) =>
    _LedgerSignInput(
      publicKey: PublicKey.fromJson(json['publicKey'] as String),
      context: json['context'] == null
          ? null
          : LedgerSignatureContext.fromJson(
              json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LedgerSignInputToJson(_LedgerSignInput instance) =>
    <String, dynamic>{
      'publicKey': instance.publicKey.toJson(),
      'context': instance.context?.toJson(),
    };
