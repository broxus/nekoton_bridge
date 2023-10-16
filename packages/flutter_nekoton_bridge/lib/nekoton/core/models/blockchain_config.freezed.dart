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
abstract class _$$BlockchainConfigImplCopyWith<$Res>
    implements $BlockchainConfigCopyWith<$Res> {
  factory _$$BlockchainConfigImplCopyWith(_$BlockchainConfigImpl value,
          $Res Function(_$BlockchainConfigImpl) then) =
      __$$BlockchainConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int capabilities, int globalId, int globalVersion, String config});
}

/// @nodoc
class __$$BlockchainConfigImplCopyWithImpl<$Res>
    extends _$BlockchainConfigCopyWithImpl<$Res, _$BlockchainConfigImpl>
    implements _$$BlockchainConfigImplCopyWith<$Res> {
  __$$BlockchainConfigImplCopyWithImpl(_$BlockchainConfigImpl _value,
      $Res Function(_$BlockchainConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capabilities = null,
    Object? globalId = null,
    Object? globalVersion = null,
    Object? config = null,
  }) {
    return _then(_$BlockchainConfigImpl(
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
class _$BlockchainConfigImpl implements _BlockchainConfig {
  const _$BlockchainConfigImpl(
      {required this.capabilities,
      required this.globalId,
      required this.globalVersion,
      required this.config});

  factory _$BlockchainConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockchainConfigImplFromJson(json);

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
            other is _$BlockchainConfigImpl &&
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
  _$$BlockchainConfigImplCopyWith<_$BlockchainConfigImpl> get copyWith =>
      __$$BlockchainConfigImplCopyWithImpl<_$BlockchainConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockchainConfigImplToJson(
      this,
    );
  }
}

abstract class _BlockchainConfig implements BlockchainConfig {
  const factory _BlockchainConfig(
      {required final int capabilities,
      required final int globalId,
      required final int globalVersion,
      required final String config}) = _$BlockchainConfigImpl;

  factory _BlockchainConfig.fromJson(Map<String, dynamic> json) =
      _$BlockchainConfigImpl.fromJson;

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
  _$$BlockchainConfigImplCopyWith<_$BlockchainConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
