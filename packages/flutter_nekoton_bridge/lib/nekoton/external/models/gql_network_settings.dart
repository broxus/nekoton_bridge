import 'package:freezed_annotation/freezed_annotation.dart';

part 'gql_network_settings.freezed.dart';
part 'gql_network_settings.g.dart';

@freezed
sealed class GqlNetworkSettings with _$GqlNetworkSettings {
  const factory GqlNetworkSettings({
    required final List<String> endpoints,
    required final int latencyDetectionInterval,
    required final int maxLatency,
    required final int endpointSelectionRetryCount,
    required final bool local,
  }) = _GqlNetworkSettings;

  factory GqlNetworkSettings.fromJson(Map<String, dynamic> json) =>
      _$GqlNetworkSettingsFromJson(json);
}
