// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_update_key_input_rename.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LedgerUpdateKeyInputRenameRenameImpl
    _$$LedgerUpdateKeyInputRenameRenameImplFromJson(
            Map<String, dynamic> json) =>
        _$LedgerUpdateKeyInputRenameRenameImpl(
          publicKey: PublicKey.fromJson(json['public_key'] as String),
          name: json['name'] as String,
        );

Map<String, dynamic> _$$LedgerUpdateKeyInputRenameRenameImplToJson(
        _$LedgerUpdateKeyInputRenameRenameImpl instance) =>
    <String, dynamic>{
      'public_key': instance.publicKey.toJson(),
      'name': instance.name,
    };
