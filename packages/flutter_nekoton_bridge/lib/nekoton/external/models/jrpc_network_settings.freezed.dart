// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jrpc_network_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JrpcNetworkSettings {
  String get endpoint;

  /// Create a copy of JrpcNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JrpcNetworkSettingsCopyWith<JrpcNetworkSettings> get copyWith =>
      _$JrpcNetworkSettingsCopyWithImpl<JrpcNetworkSettings>(
          this as JrpcNetworkSettings, _$identity);

  /// Serializes this JrpcNetworkSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JrpcNetworkSettings &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, endpoint);

  @override
  String toString() {
    return 'JrpcNetworkSettings(endpoint: $endpoint)';
  }
}

/// @nodoc
abstract mixin class $JrpcNetworkSettingsCopyWith<$Res> {
  factory $JrpcNetworkSettingsCopyWith(
          JrpcNetworkSettings value, $Res Function(JrpcNetworkSettings) _then) =
      _$JrpcNetworkSettingsCopyWithImpl;
  @useResult
  $Res call({String endpoint});
}

/// @nodoc
class _$JrpcNetworkSettingsCopyWithImpl<$Res>
    implements $JrpcNetworkSettingsCopyWith<$Res> {
  _$JrpcNetworkSettingsCopyWithImpl(this._self, this._then);

  final JrpcNetworkSettings _self;
  final $Res Function(JrpcNetworkSettings) _then;

  /// Create a copy of JrpcNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endpoint = null,
  }) {
    return _then(_self.copyWith(
      endpoint: null == endpoint
          ? _self.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _JrpcNetworkSettings implements JrpcNetworkSettings {
  const _JrpcNetworkSettings({required this.endpoint});
  factory _JrpcNetworkSettings.fromJson(Map<String, dynamic> json) =>
      _$JrpcNetworkSettingsFromJson(json);

  @override
  final String endpoint;

  /// Create a copy of JrpcNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JrpcNetworkSettingsCopyWith<_JrpcNetworkSettings> get copyWith =>
      __$JrpcNetworkSettingsCopyWithImpl<_JrpcNetworkSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JrpcNetworkSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JrpcNetworkSettings &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, endpoint);

  @override
  String toString() {
    return 'JrpcNetworkSettings(endpoint: $endpoint)';
  }
}

/// @nodoc
abstract mixin class _$JrpcNetworkSettingsCopyWith<$Res>
    implements $JrpcNetworkSettingsCopyWith<$Res> {
  factory _$JrpcNetworkSettingsCopyWith(_JrpcNetworkSettings value,
          $Res Function(_JrpcNetworkSettings) _then) =
      __$JrpcNetworkSettingsCopyWithImpl;
  @override
  @useResult
  $Res call({String endpoint});
}

/// @nodoc
class __$JrpcNetworkSettingsCopyWithImpl<$Res>
    implements _$JrpcNetworkSettingsCopyWith<$Res> {
  __$JrpcNetworkSettingsCopyWithImpl(this._self, this._then);

  final _JrpcNetworkSettings _self;
  final $Res Function(_JrpcNetworkSettings) _then;

  /// Create a copy of JrpcNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? endpoint = null,
  }) {
    return _then(_JrpcNetworkSettings(
      endpoint: null == endpoint
          ? _self.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
