// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_update_key_input_rename.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LedgerUpdateKeyInputRenameRename _$LedgerUpdateKeyInputRenameRenameFromJson(
        Map<String, dynamic> json) =>
    _LedgerUpdateKeyInputRenameRename(
      publicKey: PublicKey.fromJson(json['public_key'] as String),
      name: json['name'] as String,
    );

Map<String, dynamic> _$LedgerUpdateKeyInputRenameRenameToJson(
        _LedgerUpdateKeyInputRenameRename instance) =>
    <String, dynamic>{
      'public_key': instance.publicKey.toJson(),
      'name': instance.name,
    };
