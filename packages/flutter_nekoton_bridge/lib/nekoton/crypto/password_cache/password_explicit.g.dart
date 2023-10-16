// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_explicit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordExplicitExplicitImpl _$$PasswordExplicitExplicitImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordExplicitExplicitImpl(
      password: json['password'] as String,
      cacheBehavior: PasswordCacheBehavior.fromJson(
          json['cache_behavior'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PasswordExplicitExplicitImplToJson(
        _$PasswordExplicitExplicitImpl instance) =>
    <String, dynamic>{
      'password': instance.password,
      'cache_behavior': instance.cacheBehavior.toJson(),
    };
