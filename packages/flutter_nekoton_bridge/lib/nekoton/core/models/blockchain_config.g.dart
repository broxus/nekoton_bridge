// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockchain_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlockchainConfig _$$_BlockchainConfigFromJson(Map<String, dynamic> json) =>
    _$_BlockchainConfig(
      capabilities: json['capabilities'] as int,
      globalId: json['globalId'] as int,
      globalVersion: json['globalVersion'] as int,
      config: json['config'] as String,
    );

Map<String, dynamic> _$$_BlockchainConfigToJson(_$_BlockchainConfig instance) =>
    <String, dynamic>{
      'capabilities': instance.capabilities,
      'globalId': instance.globalId,
      'globalVersion': instance.globalVersion,
      'config': instance.config,
    };
