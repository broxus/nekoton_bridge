// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_update_key_input_rename.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LedgerUpdateKeyInputRenameRename
    _$$_LedgerUpdateKeyInputRenameRenameFromJson(Map<String, dynamic> json) =>
        _$_LedgerUpdateKeyInputRenameRename(
          publicKey:
              publicKeyJsonConverter.fromJson(json['public_key'] as String),
          name: json['name'] as String,
        );

Map<String, dynamic> _$$_LedgerUpdateKeyInputRenameRenameToJson(
        _$_LedgerUpdateKeyInputRenameRename instance) =>
    <String, dynamic>{
      'public_key': publicKeyJsonConverter.toJson(instance.publicKey),
      'name': instance.name,
    };
