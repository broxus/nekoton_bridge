import 'package:freezed_annotation/freezed_annotation.dart';

part 'proto_network_settings.freezed.dart';
part 'proto_network_settings.g.dart';

@freezed
sealed class ProtoNetworkSettings with _$ProtoNetworkSettings {
  const factory ProtoNetworkSettings({required final String endpoint}) =
      _ProtoNetworkSettings;

  factory ProtoNetworkSettings.fromJson(Map<String, dynamic> json) =>
      _$ProtoNetworkSettingsFromJson(json);
}
