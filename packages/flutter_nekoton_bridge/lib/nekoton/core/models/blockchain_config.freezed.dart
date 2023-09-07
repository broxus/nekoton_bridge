// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blockchain_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlockchainConfig _$BlockchainConfigFromJson(Map<String, dynamic> json) {
  return _BlockchainConfig.fromJson(json);
}

/// @nodoc
mixin _$BlockchainConfig {
  int get capabilities => throw _privateConstructorUsedError;
  int get globalId => throw _privateConstructorUsedError;
  int get globalVersion =>
      throw _privateConstructorUsedError; // base64-encoded ConfigParams
  String get config => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockchainConfigCopyWith<BlockchainConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockchainConfigCopyWith<$Res> {
  factory $BlockchainConfigCopyWith(
          BlockchainConfig value, $Res Function(BlockchainConfig) then) =
      _$BlockchainConfigCopyWithImpl<$Res, BlockchainConfig>;
  @useResult
  $Res call({int capabilities, int globalId, int globalVersion, String config});
}

/// @nodoc
class _$BlockchainConfigCopyWithImpl<$Res, $Val extends BlockchainConfig>
    implements $BlockchainConfigCopyWith<$Res> {
  _$BlockchainConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capabilities = null,
    Object? globalId = null,
    Object? globalVersion = null,
    Object? config = null,
  }) {
    return _then(_value.copyWith(
      capabilities: null == capabilities
          ? _value.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as int,
      globalId: null == globalId
          ? _value.globalId
          : globalId // ignore: cast_nullable_to_non_nullable
              as int,
      globalVersion: null == globalVersion
          ? _value.globalVersion
          : globalVersion // ignore: cast_nullable_to_non_nullable
              as int,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlockchainConfigCopyWith<$Res>
    implements $BlockchainConfigCopyWith<$Res> {
  factory _$$_BlockchainConfigCopyWith(
          _$_BlockchainConfig value, $Res Function(_$_BlockchainConfig) then) =
      __$$_BlockchainConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int capabilities, int globalId, int globalVersion, String config});
}

/// @nodoc
class __$$_BlockchainConfigCopyWithImpl<$Res>
    extends _$BlockchainConfigCopyWithImpl<$Res, _$_BlockchainConfig>
    implements _$$_BlockchainConfigCopyWith<$Res> {
  __$$_BlockchainConfigCopyWithImpl(
      _$_BlockchainConfig _value, $Res Function(_$_BlockchainConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capabilities = null,
    Object? globalId = null,
    Object? globalVersion = null,
    Object? config = null,
  }) {
    return _then(_$_BlockchainConfig(
      capabilities: null == capabilities
          ? _value.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as int,
      globalId: null == globalId
          ? _value.globalId
          : globalId // ignore: cast_nullable_to_non_nullable
              as int,
      globalVersion: null == globalVersion
          ? _value.globalVersion
          : globalVersion // ignore: cast_nullable_to_non_nullable
              as int,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlockchainConfig implements _BlockchainConfig {
  const _$_BlockchainConfig(
      {required this.capabilities,
      required this.globalId,
      required this.globalVersion,
      required this.config});

  factory _$_BlockchainConfig.fromJson(Map<String, dynamic> json) =>
      _$$_BlockchainConfigFromJson(json);

  @override
  final int capabilities;
  @override
  final int globalId;
  @override
  final int globalVersion;
// base64-encoded ConfigParams
  @override
  final String config;

  @override
  String toString() {
    return 'BlockchainConfig(capabilities: $capabilities, globalId: $globalId, globalVersion: $globalVersion, config: $config)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlockchainConfig &&
            (identical(other.capabilities, capabilities) ||
                other.capabilities == capabilities) &&
            (identical(other.globalId, globalId) ||
                other.globalId == globalId) &&
            (identical(other.globalVersion, globalVersion) ||
                other.globalVersion == globalVersion) &&
            (identical(other.config, config) || other.config == config));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, capabilities, globalId, globalVersion, config);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlockchainConfigCopyWith<_$_BlockchainConfig> get copyWith =>
      __$$_BlockchainConfigCopyWithImpl<_$_BlockchainConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlockchainConfigToJson(
      this,
    );
  }
}

abstract class _BlockchainConfig implements BlockchainConfig {
  const factory _BlockchainConfig(
      {required final int capabilities,
      required final int globalId,
      required final int globalVersion,
      required final String config}) = _$_BlockchainConfig;

  factory _BlockchainConfig.fromJson(Map<String, dynamic> json) =
      _$_BlockchainConfig.fromJson;

  @override
  int get capabilities;
  @override
  int get globalId;
  @override
  int get globalVersion;
  @override // base64-encoded ConfigParams
  String get config;
  @override
  @JsonKey(ignore: true)
  _$$_BlockchainConfigCopyWith<_$_BlockchainConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
