// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'derived_key_export_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DerivedKeyExportParams _$DerivedKeyExportParamsFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyExportParams.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyExportParams {
  String get masterKey => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DerivedKeyExportParamsCopyWith<DerivedKeyExportParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyExportParamsCopyWith<$Res> {
  factory $DerivedKeyExportParamsCopyWith(DerivedKeyExportParams value,
          $Res Function(DerivedKeyExportParams) then) =
      _$DerivedKeyExportParamsCopyWithImpl<$Res>;
  $Res call({String masterKey, Password password});

  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyExportParamsCopyWithImpl<$Res>
    implements $DerivedKeyExportParamsCopyWith<$Res> {
  _$DerivedKeyExportParamsCopyWithImpl(this._value, this._then);

  final DerivedKeyExportParams _value;
  // ignore: unused_field
  final $Res Function(DerivedKeyExportParams) _then;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  @override
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }
}

/// @nodoc
abstract class _$$_DerivedKeyExportParamsCopyWith<$Res>
    implements $DerivedKeyExportParamsCopyWith<$Res> {
  factory _$$_DerivedKeyExportParamsCopyWith(_$_DerivedKeyExportParams value,
          $Res Function(_$_DerivedKeyExportParams) then) =
      __$$_DerivedKeyExportParamsCopyWithImpl<$Res>;
  @override
  $Res call({String masterKey, Password password});

  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$_DerivedKeyExportParamsCopyWithImpl<$Res>
    extends _$DerivedKeyExportParamsCopyWithImpl<$Res>
    implements _$$_DerivedKeyExportParamsCopyWith<$Res> {
  __$$_DerivedKeyExportParamsCopyWithImpl(_$_DerivedKeyExportParams _value,
      $Res Function(_$_DerivedKeyExportParams) _then)
      : super(_value, (v) => _then(v as _$_DerivedKeyExportParams));

  @override
  _$_DerivedKeyExportParams get _value =>
      super._value as _$_DerivedKeyExportParams;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_DerivedKeyExportParams(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DerivedKeyExportParams implements _DerivedKeyExportParams {
  const _$_DerivedKeyExportParams(
      {required this.masterKey, required this.password});

  factory _$_DerivedKeyExportParams.fromJson(Map<String, dynamic> json) =>
      _$$_DerivedKeyExportParamsFromJson(json);

  @override
  final String masterKey;
  @override
  final Password password;

  @override
  String toString() {
    return 'DerivedKeyExportParams(masterKey: $masterKey, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DerivedKeyExportParams &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(masterKey),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_DerivedKeyExportParamsCopyWith<_$_DerivedKeyExportParams> get copyWith =>
      __$$_DerivedKeyExportParamsCopyWithImpl<_$_DerivedKeyExportParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DerivedKeyExportParamsToJson(
      this,
    );
  }
}

abstract class _DerivedKeyExportParams implements DerivedKeyExportParams {
  const factory _DerivedKeyExportParams(
      {required final String masterKey,
      required final Password password}) = _$_DerivedKeyExportParams;

  factory _DerivedKeyExportParams.fromJson(Map<String, dynamic> json) =
      _$_DerivedKeyExportParams.fromJson;

  @override
  String get masterKey;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$_DerivedKeyExportParamsCopyWith<_$_DerivedKeyExportParams> get copyWith =>
      throw _privateConstructorUsedError;
}
