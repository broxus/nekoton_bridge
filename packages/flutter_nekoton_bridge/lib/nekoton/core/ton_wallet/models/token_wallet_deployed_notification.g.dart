// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_wallet_deployed_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenWalletDeployedNotification _$TokenWalletDeployedNotificationFromJson(
        Map<String, dynamic> json) =>
    _TokenWalletDeployedNotification(
      rootTokenContract: Address.fromJson(json['rootTokenContract'] as String),
    );

Map<String, dynamic> _$TokenWalletDeployedNotificationToJson(
        _TokenWalletDeployedNotification instance) =>
    <String, dynamic>{
      'rootTokenContract': instance.rootTokenContract.toJson(),
    };
