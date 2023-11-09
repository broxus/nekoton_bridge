// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_sign_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LedgerSignInputImpl _$$LedgerSignInputImplFromJson(
        Map<String, dynamic> json) =>
    _$LedgerSignInputImpl(
      publicKey: PublicKey.fromJson(json['publicKey'] as String),
      context: json['context'] == null
          ? null
          : LedgerSignatureContext.fromJson(
              json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LedgerSignInputImplToJson(
        _$LedgerSignInputImpl instance) =>
    <String, dynamic>{
      'publicKey': instance.publicKey.toJson(),
      'context': instance.context?.toJson(),
    };
