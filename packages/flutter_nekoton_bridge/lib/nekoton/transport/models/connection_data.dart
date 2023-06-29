import 'package:flutter_nekoton_bridge/nekoton/transport/models/transport_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_data.freezed.dart';

@freezed
class ConnectionData with _$ConnectionData {
  const factory ConnectionData({
    required final String name,
    required final int networkId,
    required final String group,
    required final TransportType type,
    required final List<String> endpoints,
    required final int timeout,
    required final bool local,
  }) = _ConnectionData;
}
