// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockchain_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlockchainConfigImpl _$$BlockchainConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$BlockchainConfigImpl(
      capabilities: (json['capabilities'] as num).toInt(),
      globalId: (json['globalId'] as num).toInt(),
      globalVersion: (json['globalVersion'] as num).toInt(),
      config: json['config'] as String,
    );

Map<String, dynamic> _$$BlockchainConfigImplToJson(
        _$BlockchainConfigImpl instance) =>
    <String, dynamic>{
      'capabilities': instance.capabilities,
      'globalId': instance.globalId,
      'globalVersion': instance.globalVersion,
      'config': instance.config,
    };
