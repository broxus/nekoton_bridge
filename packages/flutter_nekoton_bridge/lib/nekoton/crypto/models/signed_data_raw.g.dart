// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signed_data_raw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignedDataRaw _$$_SignedDataRawFromJson(Map<String, dynamic> json) =>
    _$_SignedDataRaw(
      signature: json['signature'] as String,
      signatureHex: json['signatureHex'] as String,
      signatureParts: SignatureParts.fromJson(
          json['signatureParts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SignedDataRawToJson(_$_SignedDataRaw instance) =>
    <String, dynamic>{
      'signature': instance.signature,
      'signatureHex': instance.signatureHex,
      'signatureParts': instance.signatureParts.toJson(),
    };
