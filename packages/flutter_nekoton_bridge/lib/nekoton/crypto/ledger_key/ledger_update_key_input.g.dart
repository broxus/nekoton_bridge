// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_update_key_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LedgerUpdateKeyInputImpl _$$LedgerUpdateKeyInputImplFromJson(
        Map<String, dynamic> json) =>
    _$LedgerUpdateKeyInputImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LedgerUpdateKeyInputImplToJson(
        _$LedgerUpdateKeyInputImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$LedgerUpdateKeyInputRenameImpl _$$LedgerUpdateKeyInputRenameImplFromJson(
        Map<String, dynamic> json) =>
    _$LedgerUpdateKeyInputRenameImpl(
      LedgerUpdateKeyInputRename.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LedgerUpdateKeyInputRenameImplToJson(
        _$LedgerUpdateKeyInputRenameImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
