// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_key_create_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LedgerKeyCreateInput _$LedgerKeyCreateInputFromJson(
        Map<String, dynamic> json) =>
    _LedgerKeyCreateInput(
      name: json['name'] as String?,
      accountId: (json['accountId'] as num).toInt(),
    );

Map<String, dynamic> _$LedgerKeyCreateInputToJson(
        _LedgerKeyCreateInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'accountId': instance.accountId,
    };
