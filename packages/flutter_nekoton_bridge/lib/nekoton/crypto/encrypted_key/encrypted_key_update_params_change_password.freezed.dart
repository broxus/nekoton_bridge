// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_update_params_change_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EncryptedKeyUpdateParamsChangePassword
    _$EncryptedKeyUpdateParamsChangePasswordFromJson(
        Map<String, dynamic> json) {
  return _EncryptedKeyUpdateParamsChangePasswordChangePassword.fromJson(json);
}

/// @nodoc
mixin _$EncryptedKeyUpdateParamsChangePassword {
  String get publicKey => throw _privateConstructorUsedError;
  Password get oldPassword => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncryptedKeyUpdateParamsChangePasswordCopyWith<
          EncryptedKeyUpdateParamsChangePassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  factory $EncryptedKeyUpdateParamsChangePasswordCopyWith(
          EncryptedKeyUpdateParamsChangePassword value,
          $Res Function(EncryptedKeyUpdateParamsChangePassword) then) =
      _$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl<$Res,
          EncryptedKeyUpdateParamsChangePassword>;
  @useResult
  $Res call({String publicKey, Password oldPassword, Password newPassword});

  $PasswordCopyWith<$Res> get oldPassword;
  $PasswordCopyWith<$Res> get newPassword;
}

/// @nodoc
class _$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl<$Res,
        $Val extends EncryptedKeyUpdateParamsChangePassword>
    implements $EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  _$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_value.copyWith(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get oldPassword {
    return $PasswordCopyWith<$Res>(_value.oldPassword, (value) {
      return _then(_value.copyWith(oldPassword: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get newPassword {
    return $PasswordCopyWith<$Res>(_value.newPassword, (value) {
      return _then(_value.copyWith(newPassword: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EncryptedKeyUpdateParamsChangePasswordChangePasswordCopyWith<
    $Res> implements $EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  factory _$$_EncryptedKeyUpdateParamsChangePasswordChangePasswordCopyWith(
          _$_EncryptedKeyUpdateParamsChangePasswordChangePassword value,
          $Res Function(_$_EncryptedKeyUpdateParamsChangePasswordChangePassword)
              then) =
      __$$_EncryptedKeyUpdateParamsChangePasswordChangePasswordCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call({String publicKey, Password oldPassword, Password newPassword});

  @override
  $PasswordCopyWith<$Res> get oldPassword;
  @override
  $PasswordCopyWith<$Res> get newPassword;
}

/// @nodoc
class __$$_EncryptedKeyUpdateParamsChangePasswordChangePasswordCopyWithImpl<
        $Res>
    extends _$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl<$Res,
        _$_EncryptedKeyUpdateParamsChangePasswordChangePassword>
    implements
        _$$_EncryptedKeyUpdateParamsChangePasswordChangePasswordCopyWith<$Res> {
  __$$_EncryptedKeyUpdateParamsChangePasswordChangePasswordCopyWithImpl(
      _$_EncryptedKeyUpdateParamsChangePasswordChangePassword _value,
      $Res Function(_$_EncryptedKeyUpdateParamsChangePasswordChangePassword)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$_EncryptedKeyUpdateParamsChangePasswordChangePassword(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_EncryptedKeyUpdateParamsChangePasswordChangePassword
    implements _EncryptedKeyUpdateParamsChangePasswordChangePassword {
  const _$_EncryptedKeyUpdateParamsChangePasswordChangePassword(
      {required this.publicKey,
      required this.oldPassword,
      required this.newPassword});

  factory _$_EncryptedKeyUpdateParamsChangePasswordChangePassword.fromJson(
          Map<String, dynamic> json) =>
      _$$_EncryptedKeyUpdateParamsChangePasswordChangePasswordFromJson(json);

  @override
  final String publicKey;
  @override
  final Password oldPassword;
  @override
  final Password newPassword;

  @override
  String toString() {
    return 'EncryptedKeyUpdateParamsChangePassword(publicKey: $publicKey, oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EncryptedKeyUpdateParamsChangePasswordChangePassword &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, publicKey, oldPassword, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EncryptedKeyUpdateParamsChangePasswordChangePasswordCopyWith<
          _$_EncryptedKeyUpdateParamsChangePasswordChangePassword>
      get copyWith =>
          __$$_EncryptedKeyUpdateParamsChangePasswordChangePasswordCopyWithImpl<
                  _$_EncryptedKeyUpdateParamsChangePasswordChangePassword>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EncryptedKeyUpdateParamsChangePasswordChangePasswordToJson(
      this,
    );
  }
}

abstract class _EncryptedKeyUpdateParamsChangePasswordChangePassword
    implements EncryptedKeyUpdateParamsChangePassword {
  const factory _EncryptedKeyUpdateParamsChangePasswordChangePassword(
          {required final String publicKey,
          required final Password oldPassword,
          required final Password newPassword}) =
      _$_EncryptedKeyUpdateParamsChangePasswordChangePassword;

  factory _EncryptedKeyUpdateParamsChangePasswordChangePassword.fromJson(
          Map<String, dynamic> json) =
      _$_EncryptedKeyUpdateParamsChangePasswordChangePassword.fromJson;

  @override
  String get publicKey;
  @override
  Password get oldPassword;
  @override
  Password get newPassword;
  @override
  @JsonKey(ignore: true)
  _$$_EncryptedKeyUpdateParamsChangePasswordChangePasswordCopyWith<
          _$_EncryptedKeyUpdateParamsChangePasswordChangePassword>
      get copyWith => throw _privateConstructorUsedError;
}
