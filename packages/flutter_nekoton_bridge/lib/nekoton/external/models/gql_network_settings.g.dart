// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gql_network_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GqlNetworkSettings _$GqlNetworkSettingsFromJson(Map<String, dynamic> json) =>
    _GqlNetworkSettings(
      endpoints: (json['endpoints'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      latencyDetectionInterval: (json['latencyDetectionInterval'] as num)
          .toInt(),
      maxLatency: (json['maxLatency'] as num).toInt(),
      endpointSelectionRetryCount: (json['endpointSelectionRetryCount'] as num)
          .toInt(),
      local: json['local'] as bool,
    );

Map<String, dynamic> _$GqlNetworkSettingsToJson(_GqlNetworkSettings instance) =>
    <String, dynamic>{
      'endpoints': instance.endpoints,
      'latencyDetectionInterval': instance.latencyDetectionInterval,
      'maxLatency': instance.maxLatency,
      'endpointSelectionRetryCount': instance.endpointSelectionRetryCount,
      'local': instance.local,
    };
