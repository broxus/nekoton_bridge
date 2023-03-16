// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'derived_key_sign_params_by_public_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DerivedKeySignParamsByPublicKey _$DerivedKeySignParamsByPublicKeyFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeySignParamsByPublicKeyByPublicKey.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeySignParamsByPublicKey {
  String get masterKey => throw _privateConstructorUsedError;
  String get publicKey => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DerivedKeySignParamsByPublicKeyCopyWith<DerivedKeySignParamsByPublicKey>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeySignParamsByPublicKeyCopyWith<$Res> {
  factory $DerivedKeySignParamsByPublicKeyCopyWith(
          DerivedKeySignParamsByPublicKey value,
          $Res Function(DerivedKeySignParamsByPublicKey) then) =
      _$DerivedKeySignParamsByPublicKeyCopyWithImpl<$Res>;
  $Res call({String masterKey, String publicKey, Password password});

  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeySignParamsByPublicKeyCopyWithImpl<$Res>
    implements $DerivedKeySignParamsByPublicKeyCopyWith<$Res> {
  _$DerivedKeySignParamsByPublicKeyCopyWithImpl(this._value, this._then);

  final DerivedKeySignParamsByPublicKey _value;
  // ignore: unused_field
  final $Res Function(DerivedKeySignParamsByPublicKey) _then;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? publicKey = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_DerivedKeySignParamsByPublicKeyByPublicKeyCopyWith<$Res>
    implements $DerivedKeySignParamsByPublicKeyCopyWith<$Res> {
  factory _$$_DerivedKeySignParamsByPublicKeyByPublicKeyCopyWith(
          _$_DerivedKeySignParamsByPublicKeyByPublicKey value,
          $Res Function(_$_DerivedKeySignParamsByPublicKeyByPublicKey) then) =
      __$$_DerivedKeySignParamsByPublicKeyByPublicKeyCopyWithImpl<$Res>;
  @override
  $Res call({String masterKey, String publicKey, Password password});

  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$_DerivedKeySignParamsByPublicKeyByPublicKeyCopyWithImpl<$Res>
    extends _$DerivedKeySignParamsByPublicKeyCopyWithImpl<$Res>
    implements _$$_DerivedKeySignParamsByPublicKeyByPublicKeyCopyWith<$Res> {
  __$$_DerivedKeySignParamsByPublicKeyByPublicKeyCopyWithImpl(
      _$_DerivedKeySignParamsByPublicKeyByPublicKey _value,
      $Res Function(_$_DerivedKeySignParamsByPublicKeyByPublicKey) _then)
      : super(_value,
            (v) => _then(v as _$_DerivedKeySignParamsByPublicKeyByPublicKey));

  @override
  _$_DerivedKeySignParamsByPublicKeyByPublicKey get _value =>
      super._value as _$_DerivedKeySignParamsByPublicKeyByPublicKey;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? publicKey = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_DerivedKeySignParamsByPublicKeyByPublicKey(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
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
class _$_DerivedKeySignParamsByPublicKeyByPublicKey
    implements _DerivedKeySignParamsByPublicKeyByPublicKey {
  const _$_DerivedKeySignParamsByPublicKeyByPublicKey(
      {required this.masterKey,
      required this.publicKey,
      required this.password});

  factory _$_DerivedKeySignParamsByPublicKeyByPublicKey.fromJson(
          Map<String, dynamic> json) =>
      _$$_DerivedKeySignParamsByPublicKeyByPublicKeyFromJson(json);

  @override
  final String masterKey;
  @override
  final String publicKey;
  @override
  final Password password;

  @override
  String toString() {
    return 'DerivedKeySignParamsByPublicKey(masterKey: $masterKey, publicKey: $publicKey, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DerivedKeySignParamsByPublicKeyByPublicKey &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(masterKey),
      const DeepCollectionEquality().hash(publicKey),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_DerivedKeySignParamsByPublicKeyByPublicKeyCopyWith<
          _$_DerivedKeySignParamsByPublicKeyByPublicKey>
      get copyWith =>
          __$$_DerivedKeySignParamsByPublicKeyByPublicKeyCopyWithImpl<
              _$_DerivedKeySignParamsByPublicKeyByPublicKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DerivedKeySignParamsByPublicKeyByPublicKeyToJson(
      this,
    );
  }
}

abstract class _DerivedKeySignParamsByPublicKeyByPublicKey
    implements DerivedKeySignParamsByPublicKey {
  const factory _DerivedKeySignParamsByPublicKeyByPublicKey(
          {required final String masterKey,
          required final String publicKey,
          required final Password password}) =
      _$_DerivedKeySignParamsByPublicKeyByPublicKey;

  factory _DerivedKeySignParamsByPublicKeyByPublicKey.fromJson(
          Map<String, dynamic> json) =
      _$_DerivedKeySignParamsByPublicKeyByPublicKey.fromJson;

  @override
  String get masterKey;
  @override
  String get publicKey;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$_DerivedKeySignParamsByPublicKeyByPublicKeyCopyWith<
          _$_DerivedKeySignParamsByPublicKeyByPublicKey>
      get copyWith => throw _privateConstructorUsedError;
}
