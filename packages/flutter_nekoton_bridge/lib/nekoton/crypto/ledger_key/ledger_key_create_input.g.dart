// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_key_create_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LedgerKeyCreateInputImpl _$$LedgerKeyCreateInputImplFromJson(
        Map<String, dynamic> json) =>
    _$LedgerKeyCreateInputImpl(
      name: json['name'] as String?,
      accountId: (json['accountId'] as num).toInt(),
    );

Map<String, dynamic> _$$LedgerKeyCreateInputImplToJson(
        _$LedgerKeyCreateInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'accountId': instance.accountId,
    };
