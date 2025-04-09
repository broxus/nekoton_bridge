// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blockchain_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlockchainConfig {
  int get capabilities;
  int get globalId;
  int get globalVersion; // base64-encoded ConfigParams
  String get config;

  /// Create a copy of BlockchainConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BlockchainConfigCopyWith<BlockchainConfig> get copyWith =>
      _$BlockchainConfigCopyWithImpl<BlockchainConfig>(
          this as BlockchainConfig, _$identity);

  /// Serializes this BlockchainConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlockchainConfig &&
            (identical(other.capabilities, capabilities) ||
                other.capabilities == capabilities) &&
            (identical(other.globalId, globalId) ||
                other.globalId == globalId) &&
            (identical(other.globalVersion, globalVersion) ||
                other.globalVersion == globalVersion) &&
            (identical(other.config, config) || other.config == config));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, capabilities, globalId, globalVersion, config);

  @override
  String toString() {
    return 'BlockchainConfig(capabilities: $capabilities, globalId: $globalId, globalVersion: $globalVersion, config: $config)';
  }
}

/// @nodoc
abstract mixin class $BlockchainConfigCopyWith<$Res> {
  factory $BlockchainConfigCopyWith(
          BlockchainConfig value, $Res Function(BlockchainConfig) _then) =
      _$BlockchainConfigCopyWithImpl;
  @useResult
  $Res call({int capabilities, int globalId, int globalVersion, String config});
}

/// @nodoc
class _$BlockchainConfigCopyWithImpl<$Res>
    implements $BlockchainConfigCopyWith<$Res> {
  _$BlockchainConfigCopyWithImpl(this._self, this._then);

  final BlockchainConfig _self;
  final $Res Function(BlockchainConfig) _then;

  /// Create a copy of BlockchainConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capabilities = null,
    Object? globalId = null,
    Object? globalVersion = null,
    Object? config = null,
  }) {
    return _then(_self.copyWith(
      capabilities: null == capabilities
          ? _self.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as int,
      globalId: null == globalId
          ? _self.globalId
          : globalId // ignore: cast_nullable_to_non_nullable
              as int,
      globalVersion: null == globalVersion
          ? _self.globalVersion
          : globalVersion // ignore: cast_nullable_to_non_nullable
              as int,
      config: null == config
          ? _self.config
          : config // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BlockchainConfig implements BlockchainConfig {
  const _BlockchainConfig(
      {required this.capabilities,
      required this.globalId,
      required this.globalVersion,
      required this.config});
  factory _BlockchainConfig.fromJson(Map<String, dynamic> json) =>
      _$BlockchainConfigFromJson(json);

  @override
  final int capabilities;
  @override
  final int globalId;
  @override
  final int globalVersion;
// base64-encoded ConfigParams
  @override
  final String config;

  /// Create a copy of BlockchainConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BlockchainConfigCopyWith<_BlockchainConfig> get copyWith =>
      __$BlockchainConfigCopyWithImpl<_BlockchainConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BlockchainConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BlockchainConfig &&
            (identical(other.capabilities, capabilities) ||
                other.capabilities == capabilities) &&
            (identical(other.globalId, globalId) ||
                other.globalId == globalId) &&
            (identical(other.globalVersion, globalVersion) ||
                other.globalVersion == globalVersion) &&
            (identical(other.config, config) || other.config == config));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, capabilities, globalId, globalVersion, config);

  @override
  String toString() {
    return 'BlockchainConfig(capabilities: $capabilities, globalId: $globalId, globalVersion: $globalVersion, config: $config)';
  }
}

/// @nodoc
abstract mixin class _$BlockchainConfigCopyWith<$Res>
    implements $BlockchainConfigCopyWith<$Res> {
  factory _$BlockchainConfigCopyWith(
          _BlockchainConfig value, $Res Function(_BlockchainConfig) _then) =
      __$BlockchainConfigCopyWithImpl;
  @override
  @useResult
  $Res call({int capabilities, int globalId, int globalVersion, String config});
}

/// @nodoc
class __$BlockchainConfigCopyWithImpl<$Res>
    implements _$BlockchainConfigCopyWith<$Res> {
  __$BlockchainConfigCopyWithImpl(this._self, this._then);

  final _BlockchainConfig _self;
  final $Res Function(_BlockchainConfig) _then;

  /// Create a copy of BlockchainConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? capabilities = null,
    Object? globalId = null,
    Object? globalVersion = null,
    Object? config = null,
  }) {
    return _then(_BlockchainConfig(
      capabilities: null == capabilities
          ? _self.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as int,
      globalId: null == globalId
          ? _self.globalId
          : globalId // ignore: cast_nullable_to_non_nullable
              as int,
      globalVersion: null == globalVersion
          ? _self.globalVersion
          : globalVersion // ignore: cast_nullable_to_non_nullable
              as int,
      config: null == config
          ? _self.config
          : config // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
