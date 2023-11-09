// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keypair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeypairImpl _$$KeypairImplFromJson(Map<String, dynamic> json) =>
    _$KeypairImpl(
      public: PublicKey.fromJson(json['public'] as String),
      secret: PublicKey.fromJson(json['secret'] as String),
    );

Map<String, dynamic> _$$KeypairImplToJson(_$KeypairImpl instance) =>
    <String, dynamic>{
      'public': instance.public.toJson(),
      'secret': instance.secret.toJson(),
    };
