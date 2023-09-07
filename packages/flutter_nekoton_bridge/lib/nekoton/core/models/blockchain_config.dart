import 'package:freezed_annotation/freezed_annotation.dart';

part 'blockchain_config.g.dart';

part 'blockchain_config.freezed.dart';

/// Config of transport that could be used in [executeLocal]
@freezed
sealed class BlockchainConfig with _$BlockchainConfig {
  const factory BlockchainConfig({
    required int capabilities,
    required int globalId,
    required int globalVersion,
    // base64-encoded ConfigParams
    required String config,
  }) = _BlockchainConfig;

  factory BlockchainConfig.fromJson(Map<String, dynamic> json) =>
      _$BlockchainConfigFromJson(json);
}
