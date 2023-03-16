// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signed_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignedData _$$_SignedDataFromJson(Map<String, dynamic> json) =>
    _$_SignedData(
      dataHash: json['dataHash'] as String,
      signature: json['signature'] as String,
      signatureHex: json['signatureHex'] as String,
      signatureParts: SignatureParts.fromJson(
          json['signatureParts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SignedDataToJson(_$_SignedData instance) =>
    <String, dynamic>{
      'dataHash': instance.dataHash,
      'signature': instance.signature,
      'signatureHex': instance.signatureHex,
      'signatureParts': instance.signatureParts.toJson(),
    };
