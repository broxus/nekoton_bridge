// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gql_network_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GqlNetworkSettings _$GqlNetworkSettingsFromJson(Map<String, dynamic> json) {
  return _GqlNetworkSettings.fromJson(json);
}

/// @nodoc
mixin _$GqlNetworkSettings {
  List<String> get endpoints => throw _privateConstructorUsedError;
  int get latencyDetectionInterval => throw _privateConstructorUsedError;
  int get maxLatency => throw _privateConstructorUsedError;
  int get endpointSelectionRetryCount => throw _privateConstructorUsedError;
  bool get local => throw _privateConstructorUsedError;

  /// Serializes this GqlNetworkSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GqlNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GqlNetworkSettingsCopyWith<GqlNetworkSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GqlNetworkSettingsCopyWith<$Res> {
  factory $GqlNetworkSettingsCopyWith(
          GqlNetworkSettings value, $Res Function(GqlNetworkSettings) then) =
      _$GqlNetworkSettingsCopyWithImpl<$Res, GqlNetworkSettings>;
  @useResult
  $Res call(
      {List<String> endpoints,
      int latencyDetectionInterval,
      int maxLatency,
      int endpointSelectionRetryCount,
      bool local});
}

/// @nodoc
class _$GqlNetworkSettingsCopyWithImpl<$Res, $Val extends GqlNetworkSettings>
    implements $GqlNetworkSettingsCopyWith<$Res> {
  _$GqlNetworkSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      endpoints: null == endpoints
          ? _value.endpoints
          : endpoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      latencyDetectionInterval: null == latencyDetectionInterval
          ? _value.latencyDetectionInterval
          : latencyDetectionInterval // ignore: cast_nullable_to_non_nullable
              as int,
      maxLatency: null == maxLatency
          ? _value.maxLatency
          : maxLatency // ignore: cast_nullable_to_non_nullable
              as int,
      endpointSelectionRetryCount: null == endpointSelectionRetryCount
          ? _value.endpointSelectionRetryCount
          : endpointSelectionRetryCount // ignore: cast_nullable_to_non_nullable
              as int,
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GqlNetworkSettingsImplCopyWith<$Res>
    implements $GqlNetworkSettingsCopyWith<$Res> {
  factory _$$GqlNetworkSettingsImplCopyWith(_$GqlNetworkSettingsImpl value,
          $Res Function(_$GqlNetworkSettingsImpl) then) =
      __$$GqlNetworkSettingsImplCopyWithImpl<$Res>;
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
class __$$GqlNetworkSettingsImplCopyWithImpl<$Res>
    extends _$GqlNetworkSettingsCopyWithImpl<$Res, _$GqlNetworkSettingsImpl>
    implements _$$GqlNetworkSettingsImplCopyWith<$Res> {
  __$$GqlNetworkSettingsImplCopyWithImpl(_$GqlNetworkSettingsImpl _value,
      $Res Function(_$GqlNetworkSettingsImpl) _then)
      : super(_value, _then);

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
    return _then(_$GqlNetworkSettingsImpl(
      endpoints: null == endpoints
          ? _value._endpoints
          : endpoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      latencyDetectionInterval: null == latencyDetectionInterval
          ? _value.latencyDetectionInterval
          : latencyDetectionInterval // ignore: cast_nullable_to_non_nullable
              as int,
      maxLatency: null == maxLatency
          ? _value.maxLatency
          : maxLatency // ignore: cast_nullable_to_non_nullable
              as int,
      endpointSelectionRetryCount: null == endpointSelectionRetryCount
          ? _value.endpointSelectionRetryCount
          : endpointSelectionRetryCount // ignore: cast_nullable_to_non_nullable
              as int,
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GqlNetworkSettingsImpl implements _GqlNetworkSettings {
  const _$GqlNetworkSettingsImpl(
      {required final List<String> endpoints,
      required this.latencyDetectionInterval,
      required this.maxLatency,
      required this.endpointSelectionRetryCount,
      required this.local})
      : _endpoints = endpoints;

  factory _$GqlNetworkSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GqlNetworkSettingsImplFromJson(json);

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

  @override
  String toString() {
    return 'GqlNetworkSettings(endpoints: $endpoints, latencyDetectionInterval: $latencyDetectionInterval, maxLatency: $maxLatency, endpointSelectionRetryCount: $endpointSelectionRetryCount, local: $local)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GqlNetworkSettingsImpl &&
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

  /// Create a copy of GqlNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GqlNetworkSettingsImplCopyWith<_$GqlNetworkSettingsImpl> get copyWith =>
      __$$GqlNetworkSettingsImplCopyWithImpl<_$GqlNetworkSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GqlNetworkSettingsImplToJson(
      this,
    );
  }
}

abstract class _GqlNetworkSettings implements GqlNetworkSettings {
  const factory _GqlNetworkSettings(
      {required final List<String> endpoints,
      required final int latencyDetectionInterval,
      required final int maxLatency,
      required final int endpointSelectionRetryCount,
      required final bool local}) = _$GqlNetworkSettingsImpl;

  factory _GqlNetworkSettings.fromJson(Map<String, dynamic> json) =
      _$GqlNetworkSettingsImpl.fromJson;

  @override
  List<String> get endpoints;
  @override
  int get latencyDetectionInterval;
  @override
  int get maxLatency;
  @override
  int get endpointSelectionRetryCount;
  @override
  bool get local;

  /// Create a copy of GqlNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GqlNetworkSettingsImplCopyWith<_$GqlNetworkSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
