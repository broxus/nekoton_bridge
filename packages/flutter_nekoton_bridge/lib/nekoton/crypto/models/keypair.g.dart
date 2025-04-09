// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keypair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Keypair _$KeypairFromJson(Map<String, dynamic> json) => _Keypair(
      public: PublicKey.fromJson(json['public'] as String),
      secret: PublicKey.fromJson(json['secret'] as String),
    );

Map<String, dynamic> _$KeypairToJson(_Keypair instance) => <String, dynamic>{
      'public': instance.public.toJson(),
      'secret': instance.secret.toJson(),
    };
