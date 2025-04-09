// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockchain_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlockchainConfig _$BlockchainConfigFromJson(Map<String, dynamic> json) =>
    _BlockchainConfig(
      capabilities: (json['capabilities'] as num).toInt(),
      globalId: (json['globalId'] as num).toInt(),
      globalVersion: (json['globalVersion'] as num).toInt(),
      config: json['config'] as String,
    );

Map<String, dynamic> _$BlockchainConfigToJson(_BlockchainConfig instance) =>
    <String, dynamic>{
      'capabilities': instance.capabilities,
      'globalId': instance.globalId,
      'globalVersion': instance.globalVersion,
      'config': instance.config,
    };
