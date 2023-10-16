// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proto_network_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProtoNetworkSettings _$ProtoNetworkSettingsFromJson(Map<String, dynamic> json) {
  return _ProtoNetworkSettings.fromJson(json);
}

/// @nodoc
mixin _$ProtoNetworkSettings {
  String get endpoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProtoNetworkSettingsCopyWith<ProtoNetworkSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProtoNetworkSettingsCopyWith<$Res> {
  factory $ProtoNetworkSettingsCopyWith(ProtoNetworkSettings value,
          $Res Function(ProtoNetworkSettings) then) =
      _$ProtoNetworkSettingsCopyWithImpl<$Res, ProtoNetworkSettings>;
  @useResult
  $Res call({String endpoint});
}

/// @nodoc
class _$ProtoNetworkSettingsCopyWithImpl<$Res,
        $Val extends ProtoNetworkSettings>
    implements $ProtoNetworkSettingsCopyWith<$Res> {
  _$ProtoNetworkSettingsCopyWithImpl(this._value, this._then);

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
abstract class _$$ProtoNetworkSettingsImplCopyWith<$Res>
    implements $ProtoNetworkSettingsCopyWith<$Res> {
  factory _$$ProtoNetworkSettingsImplCopyWith(_$ProtoNetworkSettingsImpl value,
          $Res Function(_$ProtoNetworkSettingsImpl) then) =
      __$$ProtoNetworkSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String endpoint});
}

/// @nodoc
class __$$ProtoNetworkSettingsImplCopyWithImpl<$Res>
    extends _$ProtoNetworkSettingsCopyWithImpl<$Res, _$ProtoNetworkSettingsImpl>
    implements _$$ProtoNetworkSettingsImplCopyWith<$Res> {
  __$$ProtoNetworkSettingsImplCopyWithImpl(_$ProtoNetworkSettingsImpl _value,
      $Res Function(_$ProtoNetworkSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endpoint = null,
  }) {
    return _then(_$ProtoNetworkSettingsImpl(
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProtoNetworkSettingsImpl implements _ProtoNetworkSettings {
  const _$ProtoNetworkSettingsImpl({required this.endpoint});

  factory _$ProtoNetworkSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProtoNetworkSettingsImplFromJson(json);

  @override
  final String endpoint;

  @override
  String toString() {
    return 'ProtoNetworkSettings(endpoint: $endpoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtoNetworkSettingsImpl &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, endpoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtoNetworkSettingsImplCopyWith<_$ProtoNetworkSettingsImpl>
      get copyWith =>
          __$$ProtoNetworkSettingsImplCopyWithImpl<_$ProtoNetworkSettingsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProtoNetworkSettingsImplToJson(
      this,
    );
  }
}

abstract class _ProtoNetworkSettings implements ProtoNetworkSettings {
  const factory _ProtoNetworkSettings({required final String endpoint}) =
      _$ProtoNetworkSettingsImpl;

  factory _ProtoNetworkSettings.fromJson(Map<String, dynamic> json) =
      _$ProtoNetworkSettingsImpl.fromJson;

  @override
  String get endpoint;
  @override
  @JsonKey(ignore: true)
  _$$ProtoNetworkSettingsImplCopyWith<_$ProtoNetworkSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
