// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_explicit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PasswordExplicitExplicit _$PasswordExplicitExplicitFromJson(
        Map<String, dynamic> json) =>
    _PasswordExplicitExplicit(
      password: json['password'] as String,
      cacheBehavior: PasswordCacheBehavior.fromJson(
          json['cache_behavior'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PasswordExplicitExplicitToJson(
        _PasswordExplicitExplicit instance) =>
    <String, dynamic>{
      'password': instance.password,
      'cache_behavior': instance.cacheBehavior.toJson(),
    };
