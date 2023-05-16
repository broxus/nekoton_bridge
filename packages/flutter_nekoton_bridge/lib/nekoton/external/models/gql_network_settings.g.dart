// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gql_network_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GqlNetworkSettings _$$_GqlNetworkSettingsFromJson(
        Map<String, dynamic> json) =>
    _$_GqlNetworkSettings(
      endpoints:
          (json['endpoints'] as List<dynamic>).map((e) => e as String).toList(),
      latencyDetectionInterval: json['latencyDetectionInterval'] as int,
      maxLatency: json['maxLatency'] as int,
      endpointSelectionRetryCount: json['endpointSelectionRetryCount'] as int,
      local: json['local'] as bool,
    );

Map<String, dynamic> _$$_GqlNetworkSettingsToJson(
        _$_GqlNetworkSettings instance) =>
    <String, dynamic>{
      'endpoints': instance.endpoints,
      'latencyDetectionInterval': instance.latencyDetectionInterval,
      'maxLatency': instance.maxLatency,
      'endpointSelectionRetryCount': instance.endpointSelectionRetryCount,
      'local': instance.local,
    };
