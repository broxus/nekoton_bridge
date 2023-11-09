// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_export_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DerivedKeyExportSeedParams _$DerivedKeyExportSeedParamsFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyExportSeedParams.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyExportSeedParams {
  PublicKey get masterKey => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DerivedKeyExportSeedParamsCopyWith<DerivedKeyExportSeedParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyExportSeedParamsCopyWith<$Res> {
  factory $DerivedKeyExportSeedParamsCopyWith(DerivedKeyExportSeedParams value,
          $Res Function(DerivedKeyExportSeedParams) then) =
      _$DerivedKeyExportSeedParamsCopyWithImpl<$Res,
          DerivedKeyExportSeedParams>;
  @useResult
  $Res call({PublicKey masterKey, Password password});

  $PublicKeyCopyWith<$Res> get masterKey;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyExportSeedParamsCopyWithImpl<$Res,
        $Val extends DerivedKeyExportSeedParams>
    implements $DerivedKeyExportSeedParamsCopyWith<$Res> {
  _$DerivedKeyExportSeedParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_value.masterKey, (value) {
      return _then(_value.copyWith(masterKey: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DerivedKeyExportSeedParamsImplCopyWith<$Res>
    implements $DerivedKeyExportSeedParamsCopyWith<$Res> {
  factory _$$DerivedKeyExportSeedParamsImplCopyWith(
          _$DerivedKeyExportSeedParamsImpl value,
          $Res Function(_$DerivedKeyExportSeedParamsImpl) then) =
      __$$DerivedKeyExportSeedParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PublicKey masterKey, Password password});

  @override
  $PublicKeyCopyWith<$Res> get masterKey;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$DerivedKeyExportSeedParamsImplCopyWithImpl<$Res>
    extends _$DerivedKeyExportSeedParamsCopyWithImpl<$Res,
        _$DerivedKeyExportSeedParamsImpl>
    implements _$$DerivedKeyExportSeedParamsImplCopyWith<$Res> {
  __$$DerivedKeyExportSeedParamsImplCopyWithImpl(
      _$DerivedKeyExportSeedParamsImpl _value,
      $Res Function(_$DerivedKeyExportSeedParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? password = null,
  }) {
    return _then(_$DerivedKeyExportSeedParamsImpl(
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DerivedKeyExportSeedParamsImpl implements _DerivedKeyExportSeedParams {
  const _$DerivedKeyExportSeedParamsImpl(
      {required this.masterKey, required this.password});

  factory _$DerivedKeyExportSeedParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DerivedKeyExportSeedParamsImplFromJson(json);

  @override
  final PublicKey masterKey;
  @override
  final Password password;

  @override
  String toString() {
    return 'DerivedKeyExportSeedParams(masterKey: $masterKey, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DerivedKeyExportSeedParamsImpl &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, masterKey, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DerivedKeyExportSeedParamsImplCopyWith<_$DerivedKeyExportSeedParamsImpl>
      get copyWith => __$$DerivedKeyExportSeedParamsImplCopyWithImpl<
          _$DerivedKeyExportSeedParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DerivedKeyExportSeedParamsImplToJson(
      this,
    );
  }
}

abstract class _DerivedKeyExportSeedParams
    implements DerivedKeyExportSeedParams {
  const factory _DerivedKeyExportSeedParams(
      {required final PublicKey masterKey,
      required final Password password}) = _$DerivedKeyExportSeedParamsImpl;

  factory _DerivedKeyExportSeedParams.fromJson(Map<String, dynamic> json) =
      _$DerivedKeyExportSeedParamsImpl.fromJson;

  @override
  PublicKey get masterKey;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$DerivedKeyExportSeedParamsImplCopyWith<_$DerivedKeyExportSeedParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
