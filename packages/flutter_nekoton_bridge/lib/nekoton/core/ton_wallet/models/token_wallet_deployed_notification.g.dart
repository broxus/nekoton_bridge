// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_wallet_deployed_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenWalletDeployedNotificationImpl
    _$$TokenWalletDeployedNotificationImplFromJson(Map<String, dynamic> json) =>
        _$TokenWalletDeployedNotificationImpl(
          rootTokenContract:
              Address.fromJson(json['rootTokenContract'] as String),
        );

Map<String, dynamic> _$$TokenWalletDeployedNotificationImplToJson(
        _$TokenWalletDeployedNotificationImpl instance) =>
    <String, dynamic>{
      'rootTokenContract': instance.rootTokenContract.toJson(),
    };
