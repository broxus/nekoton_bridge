// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_update_key_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LedgerUpdateKeyInput _$$_LedgerUpdateKeyInputFromJson(
        Map<String, dynamic> json) =>
    _$_LedgerUpdateKeyInput(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_LedgerUpdateKeyInputToJson(
        _$_LedgerUpdateKeyInput instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$_LedgerUpdateKeyInputRename _$$_LedgerUpdateKeyInputRenameFromJson(
        Map<String, dynamic> json) =>
    _$_LedgerUpdateKeyInputRename(
      LedgerUpdateKeyInputRename.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_LedgerUpdateKeyInputRenameToJson(
        _$_LedgerUpdateKeyInputRename instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };
