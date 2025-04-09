// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_store_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KeyStoreEntry _$KeyStoreEntryFromJson(Map<String, dynamic> json) =>
    _KeyStoreEntry(
      signerName: json['signer_name'] as String,
      name: json['name'] as String,
      publicKey: PublicKey.fromJson(json['public_key'] as String),
      masterKey: PublicKey.fromJson(json['master_key'] as String),
      accountId: (json['account_id'] as num).toInt(),
    );

Map<String, dynamic> _$KeyStoreEntryToJson(_KeyStoreEntry instance) =>
    <String, dynamic>{
      'signer_name': instance.signerName,
      'name': instance.name,
      'public_key': instance.publicKey.toJson(),
      'master_key': instance.masterKey.toJson(),
      'account_id': instance.accountId,
    };
