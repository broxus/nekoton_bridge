// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jrpc_network_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JrpcNetworkSettings _$JrpcNetworkSettingsFromJson(Map<String, dynamic> json) {
  return _JrpcNetworkSettings.fromJson(json);
}

/// @nodoc
mixin _$JrpcNetworkSettings {
  String get endpoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JrpcNetworkSettingsCopyWith<JrpcNetworkSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JrpcNetworkSettingsCopyWith<$Res> {
  factory $JrpcNetworkSettingsCopyWith(
          JrpcNetworkSettings value, $Res Function(JrpcNetworkSettings) then) =
      _$JrpcNetworkSettingsCopyWithImpl<$Res, JrpcNetworkSettings>;
  @useResult
  $Res call({String endpoint});
}

/// @nodoc
class _$JrpcNetworkSettingsCopyWithImpl<$Res, $Val extends JrpcNetworkSettings>
    implements $JrpcNetworkSettingsCopyWith<$Res> {
  _$JrpcNetworkSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endpoint = null,
  }) {
    return _then(_value.copyWith(
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JrpcNetworkSettingsCopyWith<$Res>
    implements $JrpcNetworkSettingsCopyWith<$Res> {
  factory _$$_JrpcNetworkSettingsCopyWith(_$_JrpcNetworkSettings value,
          $Res Function(_$_JrpcNetworkSettings) then) =
      __$$_JrpcNetworkSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String endpoint});
}

/// @nodoc
class __$$_JrpcNetworkSettingsCopyWithImpl<$Res>
    extends _$JrpcNetworkSettingsCopyWithImpl<$Res, _$_JrpcNetworkSettings>
    implements _$$_JrpcNetworkSettingsCopyWith<$Res> {
  __$$_JrpcNetworkSettingsCopyWithImpl(_$_JrpcNetworkSettings _value,
      $Res Function(_$_JrpcNetworkSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endpoint = null,
  }) {
    return _then(_$_JrpcNetworkSettings(
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JrpcNetworkSettings implements _JrpcNetworkSettings {
  const _$_JrpcNetworkSettings({required this.endpoint});

  factory _$_JrpcNetworkSettings.fromJson(Map<String, dynamic> json) =>
      _$$_JrpcNetworkSettingsFromJson(json);

  @override
  final String endpoint;

  @override
  String toString() {
    return 'JrpcNetworkSettings(endpoint: $endpoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JrpcNetworkSettings &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, endpoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JrpcNetworkSettingsCopyWith<_$_JrpcNetworkSettings> get copyWith =>
      __$$_JrpcNetworkSettingsCopyWithImpl<_$_JrpcNetworkSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JrpcNetworkSettingsToJson(
      this,
    );
  }
}

abstract class _JrpcNetworkSettings implements JrpcNetworkSettings {
  const factory _JrpcNetworkSettings({required final String endpoint}) =
      _$_JrpcNetworkSettings;

  factory _JrpcNetworkSettings.fromJson(Map<String, dynamic> json) =
      _$_JrpcNetworkSettings.fromJson;

  @override
  String get endpoint;
  @override
  @JsonKey(ignore: true)
  _$$_JrpcNetworkSettingsCopyWith<_$_JrpcNetworkSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
