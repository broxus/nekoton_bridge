// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keypair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Keypair _$$_KeypairFromJson(Map<String, dynamic> json) => _$_Keypair(
      public: publicKeyJsonConverter.fromJson(json['public'] as String),
      secret: publicKeyJsonConverter.fromJson(json['secret'] as String),
    );

Map<String, dynamic> _$$_KeypairToJson(_$_Keypair instance) =>
    <String, dynamic>{
      'public': publicKeyJsonConverter.toJson(instance.public),
      'secret': publicKeyJsonConverter.toJson(instance.secret),
    };
