// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_sign_params_by_public_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DerivedKeyPasswordByPublicKey _$DerivedKeyPasswordByPublicKeyFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyPasswordByPublicKeyByPublicKey.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyPasswordByPublicKey {
  @publicKeyJsonConverter
  PublicKey get masterKey => throw _privateConstructorUsedError;
  @publicKeyJsonConverter
  PublicKey get publicKey => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DerivedKeyPasswordByPublicKeyCopyWith<DerivedKeyPasswordByPublicKey>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyPasswordByPublicKeyCopyWith<$Res> {
  factory $DerivedKeyPasswordByPublicKeyCopyWith(
          DerivedKeyPasswordByPublicKey value,
          $Res Function(DerivedKeyPasswordByPublicKey) then) =
      _$DerivedKeyPasswordByPublicKeyCopyWithImpl<$Res,
          DerivedKeyPasswordByPublicKey>;
  @useResult
  $Res call(
      {@publicKeyJsonConverter PublicKey masterKey,
      @publicKeyJsonConverter PublicKey publicKey,
      Password password});

  $PublicKeyCopyWith<$Res> get masterKey;
  $PublicKeyCopyWith<$Res> get publicKey;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyPasswordByPublicKeyCopyWithImpl<$Res,
        $Val extends DerivedKeyPasswordByPublicKey>
    implements $DerivedKeyPasswordByPublicKeyCopyWith<$Res> {
  _$DerivedKeyPasswordByPublicKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? publicKey = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
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
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_value.publicKey, (value) {
      return _then(_value.copyWith(publicKey: value) as $Val);
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
abstract class _$$_DerivedKeyPasswordByPublicKeyByPublicKeyCopyWith<$Res>
    implements $DerivedKeyPasswordByPublicKeyCopyWith<$Res> {
  factory _$$_DerivedKeyPasswordByPublicKeyByPublicKeyCopyWith(
          _$_DerivedKeyPasswordByPublicKeyByPublicKey value,
          $Res Function(_$_DerivedKeyPasswordByPublicKeyByPublicKey) then) =
      __$$_DerivedKeyPasswordByPublicKeyByPublicKeyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@publicKeyJsonConverter PublicKey masterKey,
      @publicKeyJsonConverter PublicKey publicKey,
      Password password});

  @override
  $PublicKeyCopyWith<$Res> get masterKey;
  @override
  $PublicKeyCopyWith<$Res> get publicKey;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$_DerivedKeyPasswordByPublicKeyByPublicKeyCopyWithImpl<$Res>
    extends _$DerivedKeyPasswordByPublicKeyCopyWithImpl<$Res,
        _$_DerivedKeyPasswordByPublicKeyByPublicKey>
    implements _$$_DerivedKeyPasswordByPublicKeyByPublicKeyCopyWith<$Res> {
  __$$_DerivedKeyPasswordByPublicKeyByPublicKeyCopyWithImpl(
      _$_DerivedKeyPasswordByPublicKeyByPublicKey _value,
      $Res Function(_$_DerivedKeyPasswordByPublicKeyByPublicKey) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? publicKey = null,
    Object? password = null,
  }) {
    return _then(_$_DerivedKeyPasswordByPublicKeyByPublicKey(
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
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
class _$_DerivedKeyPasswordByPublicKeyByPublicKey
    implements _DerivedKeyPasswordByPublicKeyByPublicKey {
  const _$_DerivedKeyPasswordByPublicKeyByPublicKey(
      {@publicKeyJsonConverter required this.masterKey,
      @publicKeyJsonConverter required this.publicKey,
      required this.password});

  factory _$_DerivedKeyPasswordByPublicKeyByPublicKey.fromJson(
          Map<String, dynamic> json) =>
      _$$_DerivedKeyPasswordByPublicKeyByPublicKeyFromJson(json);

  @override
  @publicKeyJsonConverter
  final PublicKey masterKey;
  @override
  @publicKeyJsonConverter
  final PublicKey publicKey;
  @override
  final Password password;

  @override
  String toString() {
    return 'DerivedKeyPasswordByPublicKey(masterKey: $masterKey, publicKey: $publicKey, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DerivedKeyPasswordByPublicKeyByPublicKey &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, masterKey, publicKey, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DerivedKeyPasswordByPublicKeyByPublicKeyCopyWith<
          _$_DerivedKeyPasswordByPublicKeyByPublicKey>
      get copyWith => __$$_DerivedKeyPasswordByPublicKeyByPublicKeyCopyWithImpl<
          _$_DerivedKeyPasswordByPublicKeyByPublicKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DerivedKeyPasswordByPublicKeyByPublicKeyToJson(
      this,
    );
  }
}

abstract class _DerivedKeyPasswordByPublicKeyByPublicKey
    implements DerivedKeyPasswordByPublicKey {
  const factory _DerivedKeyPasswordByPublicKeyByPublicKey(
          {@publicKeyJsonConverter required final PublicKey masterKey,
          @publicKeyJsonConverter required final PublicKey publicKey,
          required final Password password}) =
      _$_DerivedKeyPasswordByPublicKeyByPublicKey;

  factory _DerivedKeyPasswordByPublicKeyByPublicKey.fromJson(
          Map<String, dynamic> json) =
      _$_DerivedKeyPasswordByPublicKeyByPublicKey.fromJson;

  @override
  @publicKeyJsonConverter
  PublicKey get masterKey;
  @override
  @publicKeyJsonConverter
  PublicKey get publicKey;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$_DerivedKeyPasswordByPublicKeyByPublicKeyCopyWith<
          _$_DerivedKeyPasswordByPublicKeyByPublicKey>
      get copyWith => throw _privateConstructorUsedError;
}
