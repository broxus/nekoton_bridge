// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_to_add.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountToAdd _$$_AccountToAddFromJson(Map<String, dynamic> json) =>
    _$_AccountToAdd(
      name: json['name'] as String,
      publicKey: publicKeyJsonConverter.fromJson(json['publicKey'] as String),
      contract: WalletType.fromJson(json['contract'] as Map<String, dynamic>),
      workchain: json['workchain'] as int,
      explicitAddress: _$JsonConverterFromJson<String, Address>(
          json['explicitAddress'], addressJsonConverter.fromJson),
    );

Map<String, dynamic> _$$_AccountToAddToJson(_$_AccountToAdd instance) =>
    <String, dynamic>{
      'name': instance.name,
      'publicKey': publicKeyJsonConverter.toJson(instance.publicKey),
      'contract': instance.contract.toJson(),
      'workchain': instance.workchain,
      'explicitAddress': _$JsonConverterToJson<String, Address>(
          instance.explicitAddress, addressJsonConverter.toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
