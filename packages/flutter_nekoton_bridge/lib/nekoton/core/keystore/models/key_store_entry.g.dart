// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_store_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KeyStoreEntry _$$_KeyStoreEntryFromJson(Map<String, dynamic> json) =>
    _$_KeyStoreEntry(
      signerName: json['signer_name'] as String,
      name: json['name'] as String,
      publicKey: json['public_key'] as String,
      masterKey: json['master_key'] as String,
      accountId: json['account_id'] as int,
    );

Map<String, dynamic> _$$_KeyStoreEntryToJson(_$_KeyStoreEntry instance) =>
    <String, dynamic>{
      'signer_name': instance.signerName,
      'name': instance.name,
      'public_key': instance.publicKey,
      'master_key': instance.masterKey,
      'account_id': instance.accountId,
    };
