// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gql_network_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GqlNetworkSettings {
  List<String> get endpoints;
  int get latencyDetectionInterval;
  int get maxLatency;
  int get endpointSelectionRetryCount;
  bool get local;

  /// Create a copy of GqlNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GqlNetworkSettingsCopyWith<GqlNetworkSettings> get copyWith =>
      _$GqlNetworkSettingsCopyWithImpl<GqlNetworkSettings>(
          this as GqlNetworkSettings, _$identity);

  /// Serializes this GqlNetworkSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GqlNetworkSettings &&
            const DeepCollectionEquality().equals(other.endpoints, endpoints) &&
            (identical(
                    other.latencyDetectionInterval, latencyDetectionInterval) ||
                other.latencyDetectionInterval == latencyDetectionInterval) &&
            (identical(other.maxLatency, maxLatency) ||
                other.maxLatency == maxLatency) &&
            (identical(other.endpointSelectionRetryCount,
                    endpointSelectionRetryCount) ||
                other.endpointSelectionRetryCount ==
                    endpointSelectionRetryCount) &&
            (identical(other.local, local) || other.local == local));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(endpoints),
      latencyDetectionInterval,
      maxLatency,
      endpointSelectionRetryCount,
      local);

  @override
  String toString() {
    return 'GqlNetworkSettings(endpoints: $endpoints, latencyDetectionInterval: $latencyDetectionInterval, maxLatency: $maxLatency, endpointSelectionRetryCount: $endpointSelectionRetryCount, local: $local)';
  }
}

/// @nodoc
abstract mixin class $GqlNetworkSettingsCopyWith<$Res> {
  factory $GqlNetworkSettingsCopyWith(
          GqlNetworkSettings value, $Res Function(GqlNetworkSettings) _then) =
      _$GqlNetworkSettingsCopyWithImpl;
  @useResult
  $Res call(
      {List<String> endpoints,
      int latencyDetectionInterval,
      int maxLatency,
      int endpointSelectionRetryCount,
      bool local});
}

/// @nodoc
class _$GqlNetworkSettingsCopyWithImpl<$Res>
    implements $GqlNetworkSettingsCopyWith<$Res> {
  _$GqlNetworkSettingsCopyWithImpl(this._self, this._then);

  final GqlNetworkSettings _self;
  final $Res Function(GqlNetworkSettings) _then;

  /// Create a copy of GqlNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endpoints = null,
    Object? latencyDetectionInterval = null,
    Object? maxLatency = null,
    Object? endpointSelectionRetryCount = null,
    Object? local = null,
  }) {
    return _then(_self.copyWith(
      endpoints: null == endpoints
          ? _self.endpoints
          : endpoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      latencyDetectionInterval: null == latencyDetectionInterval
          ? _self.latencyDetectionInterval
          : latencyDetectionInterval // ignore: cast_nullable_to_non_nullable
              as int,
      maxLatency: null == maxLatency
          ? _self.maxLatency
          : maxLatency // ignore: cast_nullable_to_non_nullable
              as int,
      endpointSelectionRetryCount: null == endpointSelectionRetryCount
          ? _self.endpointSelectionRetryCount
          : endpointSelectionRetryCount // ignore: cast_nullable_to_non_nullable
              as int,
      local: null == local
          ? _self.local
          : local // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GqlNetworkSettings implements GqlNetworkSettings {
  const _GqlNetworkSettings(
      {required final List<String> endpoints,
      required this.latencyDetectionInterval,
      required this.maxLatency,
      required this.endpointSelectionRetryCount,
      required this.local})
      : _endpoints = endpoints;
  factory _GqlNetworkSettings.fromJson(Map<String, dynamic> json) =>
      _$GqlNetworkSettingsFromJson(json);

  final List<String> _endpoints;
  @override
  List<String> get endpoints {
    if (_endpoints is EqualUnmodifiableListView) return _endpoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_endpoints);
  }

  @override
  final int latencyDetectionInterval;
  @override
  final int maxLatency;
  @override
  final int endpointSelectionRetryCount;
  @override
  final bool local;

  /// Create a copy of GqlNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GqlNetworkSettingsCopyWith<_GqlNetworkSettings> get copyWith =>
      __$GqlNetworkSettingsCopyWithImpl<_GqlNetworkSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GqlNetworkSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GqlNetworkSettings &&
            const DeepCollectionEquality()
                .equals(other._endpoints, _endpoints) &&
            (identical(
                    other.latencyDetectionInterval, latencyDetectionInterval) ||
                other.latencyDetectionInterval == latencyDetectionInterval) &&
            (identical(other.maxLatency, maxLatency) ||
                other.maxLatency == maxLatency) &&
            (identical(other.endpointSelectionRetryCount,
                    endpointSelectionRetryCount) ||
                other.endpointSelectionRetryCount ==
                    endpointSelectionRetryCount) &&
            (identical(other.local, local) || other.local == local));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_endpoints),
      latencyDetectionInterval,
      maxLatency,
      endpointSelectionRetryCount,
      local);

  @override
  String toString() {
    return 'GqlNetworkSettings(endpoints: $endpoints, latencyDetectionInterval: $latencyDetectionInterval, maxLatency: $maxLatency, endpointSelectionRetryCount: $endpointSelectionRetryCount, local: $local)';
  }
}

/// @nodoc
abstract mixin class _$GqlNetworkSettingsCopyWith<$Res>
    implements $GqlNetworkSettingsCopyWith<$Res> {
  factory _$GqlNetworkSettingsCopyWith(
          _GqlNetworkSettings value, $Res Function(_GqlNetworkSettings) _then) =
      __$GqlNetworkSettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String> endpoints,
      int latencyDetectionInterval,
      int maxLatency,
      int endpointSelectionRetryCount,
      bool local});
}

/// @nodoc
class __$GqlNetworkSettingsCopyWithImpl<$Res>
    implements _$GqlNetworkSettingsCopyWith<$Res> {
  __$GqlNetworkSettingsCopyWithImpl(this._self, this._then);

  final _GqlNetworkSettings _self;
  final $Res Function(_GqlNetworkSettings) _then;

  /// Create a copy of GqlNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? endpoints = null,
    Object? latencyDetectionInterval = null,
    Object? maxLatency = null,
    Object? endpointSelectionRetryCount = null,
    Object? local = null,
  }) {
    return _then(_GqlNetworkSettings(
      endpoints: null == endpoints
          ? _self._endpoints
          : endpoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      latencyDetectionInterval: null == latencyDetectionInterval
          ? _self.latencyDetectionInterval
          : latencyDetectionInterval // ignore: cast_nullable_to_non_nullable
              as int,
      maxLatency: null == maxLatency
          ? _self.maxLatency
          : maxLatency // ignore: cast_nullable_to_non_nullable
              as int,
      endpointSelectionRetryCount: null == endpointSelectionRetryCount
          ? _self.endpointSelectionRetryCount
          : endpointSelectionRetryCount // ignore: cast_nullable_to_non_nullable
              as int,
      local: null == local
          ? _self.local
          : local // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
