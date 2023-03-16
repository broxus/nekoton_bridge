// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'encrypted_key_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EncryptedKeyPassword _$EncryptedKeyPasswordFromJson(Map<String, dynamic> json) {
  return _EncryptedKeyPassword.fromJson(json);
}

/// @nodoc
mixin _$EncryptedKeyPassword {
  String get publicKey => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncryptedKeyPasswordCopyWith<EncryptedKeyPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedKeyPasswordCopyWith<$Res> {
  factory $EncryptedKeyPasswordCopyWith(EncryptedKeyPassword value,
          $Res Function(EncryptedKeyPassword) then) =
      _$EncryptedKeyPasswordCopyWithImpl<$Res>;
  $Res call({String publicKey, Password password});

  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$EncryptedKeyPasswordCopyWithImpl<$Res>
    implements $EncryptedKeyPasswordCopyWith<$Res> {
  _$EncryptedKeyPasswordCopyWithImpl(this._value, this._then);

  final EncryptedKeyPassword _value;
  // ignore: unused_field
  final $Res Function(EncryptedKeyPassword) _then;

  @override
  $Res call({
    Object? publicKey = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_EncryptedKeyPasswordCopyWith<$Res>
    implements $EncryptedKeyPasswordCopyWith<$Res> {
  factory _$$_EncryptedKeyPasswordCopyWith(_$_EncryptedKeyPassword value,
          $Res Function(_$_EncryptedKeyPassword) then) =
      __$$_EncryptedKeyPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String publicKey, Password password});

  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$_EncryptedKeyPasswordCopyWithImpl<$Res>
    extends _$EncryptedKeyPasswordCopyWithImpl<$Res>
    implements _$$_EncryptedKeyPasswordCopyWith<$Res> {
  __$$_EncryptedKeyPasswordCopyWithImpl(_$_EncryptedKeyPassword _value,
      $Res Function(_$_EncryptedKeyPassword) _then)
      : super(_value, (v) => _then(v as _$_EncryptedKeyPassword));

  @override
  _$_EncryptedKeyPassword get _value => super._value as _$_EncryptedKeyPassword;

  @override
  $Res call({
    Object? publicKey = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_EncryptedKeyPassword(
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
class _$_EncryptedKeyPassword implements _EncryptedKeyPassword {
  const _$_EncryptedKeyPassword(
      {required this.publicKey, required this.password});

  factory _$_EncryptedKeyPassword.fromJson(Map<String, dynamic> json) =>
      _$$_EncryptedKeyPasswordFromJson(json);

  @override
  final String publicKey;
  @override
  final Password password;

  @override
  String toString() {
    return 'EncryptedKeyPassword(publicKey: $publicKey, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EncryptedKeyPassword &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(publicKey),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_EncryptedKeyPasswordCopyWith<_$_EncryptedKeyPassword> get copyWith =>
      __$$_EncryptedKeyPasswordCopyWithImpl<_$_EncryptedKeyPassword>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EncryptedKeyPasswordToJson(
      this,
    );
  }
}

abstract class _EncryptedKeyPassword implements EncryptedKeyPassword {
  const factory _EncryptedKeyPassword(
      {required final String publicKey,
      required final Password password}) = _$_EncryptedKeyPassword;

  factory _EncryptedKeyPassword.fromJson(Map<String, dynamic> json) =
      _$_EncryptedKeyPassword.fromJson;

  @override
  String get publicKey;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$_EncryptedKeyPasswordCopyWith<_$_EncryptedKeyPassword> get copyWith =>
      throw _privateConstructorUsedError;
}
