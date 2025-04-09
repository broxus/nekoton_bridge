// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_update_key_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LedgerUpdateKeyInputDefault _$LedgerUpdateKeyInputDefaultFromJson(
        Map<String, dynamic> json) =>
    _LedgerUpdateKeyInputDefault(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$LedgerUpdateKeyInputDefaultToJson(
        _LedgerUpdateKeyInputDefault instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_LedgerUpdateKeyInputRename _$LedgerUpdateKeyInputRenameFromJson(
        Map<String, dynamic> json) =>
    _LedgerUpdateKeyInputRename(
      LedgerUpdateKeyInputRename.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$LedgerUpdateKeyInputRenameToJson(
        _LedgerUpdateKeyInputRename instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
