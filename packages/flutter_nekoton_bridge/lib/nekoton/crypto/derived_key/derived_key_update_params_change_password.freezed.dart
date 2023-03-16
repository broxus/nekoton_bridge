// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'derived_key_update_params_change_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DerivedKeyUpdateParamsChangePassword
    _$DerivedKeyUpdateParamsChangePasswordFromJson(Map<String, dynamic> json) {
  return _DerivedKeyUpdateParamsChangePasswordChangePassword.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyUpdateParamsChangePassword {
  String get masterKey => throw _privateConstructorUsedError;
  Password get oldPassword => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DerivedKeyUpdateParamsChangePasswordCopyWith<
          DerivedKeyUpdateParamsChangePassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  factory $DerivedKeyUpdateParamsChangePasswordCopyWith(
          DerivedKeyUpdateParamsChangePassword value,
          $Res Function(DerivedKeyUpdateParamsChangePassword) then) =
      _$DerivedKeyUpdateParamsChangePasswordCopyWithImpl<$Res>;
  $Res call({String masterKey, Password oldPassword, Password newPassword});

  $PasswordCopyWith<$Res> get oldPassword;
  $PasswordCopyWith<$Res> get newPassword;
}

/// @nodoc
class _$DerivedKeyUpdateParamsChangePasswordCopyWithImpl<$Res>
    implements $DerivedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  _$DerivedKeyUpdateParamsChangePasswordCopyWithImpl(this._value, this._then);

  final DerivedKeyUpdateParamsChangePassword _value;
  // ignore: unused_field
  final $Res Function(DerivedKeyUpdateParamsChangePassword) _then;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_value.copyWith(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  @override
  $PasswordCopyWith<$Res> get oldPassword {
    return $PasswordCopyWith<$Res>(_value.oldPassword, (value) {
      return _then(_value.copyWith(oldPassword: value));
    });
  }

  @override
  $PasswordCopyWith<$Res> get newPassword {
    return $PasswordCopyWith<$Res>(_value.newPassword, (value) {
      return _then(_value.copyWith(newPassword: value));
    });
  }
}

/// @nodoc
abstract class _$$_DerivedKeyUpdateParamsChangePasswordChangePasswordCopyWith<
    $Res> implements $DerivedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  factory _$$_DerivedKeyUpdateParamsChangePasswordChangePasswordCopyWith(
          _$_DerivedKeyUpdateParamsChangePasswordChangePassword value,
          $Res Function(_$_DerivedKeyUpdateParamsChangePasswordChangePassword)
              then) =
      __$$_DerivedKeyUpdateParamsChangePasswordChangePasswordCopyWithImpl<$Res>;
  @override
  $Res call({String masterKey, Password oldPassword, Password newPassword});

  @override
  $PasswordCopyWith<$Res> get oldPassword;
  @override
  $PasswordCopyWith<$Res> get newPassword;
}

/// @nodoc
class __$$_DerivedKeyUpdateParamsChangePasswordChangePasswordCopyWithImpl<$Res>
    extends _$DerivedKeyUpdateParamsChangePasswordCopyWithImpl<$Res>
    implements
        _$$_DerivedKeyUpdateParamsChangePasswordChangePasswordCopyWith<$Res> {
  __$$_DerivedKeyUpdateParamsChangePasswordChangePasswordCopyWithImpl(
      _$_DerivedKeyUpdateParamsChangePasswordChangePassword _value,
      $Res Function(_$_DerivedKeyUpdateParamsChangePasswordChangePassword)
          _then)
      : super(
            _value,
            (v) => _then(
                v as _$_DerivedKeyUpdateParamsChangePasswordChangePassword));

  @override
  _$_DerivedKeyUpdateParamsChangePasswordChangePassword get _value =>
      super._value as _$_DerivedKeyUpdateParamsChangePasswordChangePassword;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_$_DerivedKeyUpdateParamsChangePasswordChangePassword(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DerivedKeyUpdateParamsChangePasswordChangePassword
    implements _DerivedKeyUpdateParamsChangePasswordChangePassword {
  const _$_DerivedKeyUpdateParamsChangePasswordChangePassword(
      {required this.masterKey,
      required this.oldPassword,
      required this.newPassword});

  factory _$_DerivedKeyUpdateParamsChangePasswordChangePassword.fromJson(
          Map<String, dynamic> json) =>
      _$$_DerivedKeyUpdateParamsChangePasswordChangePasswordFromJson(json);

  @override
  final String masterKey;
  @override
  final Password oldPassword;
  @override
  final Password newPassword;

  @override
  String toString() {
    return 'DerivedKeyUpdateParamsChangePassword(masterKey: $masterKey, oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DerivedKeyUpdateParamsChangePasswordChangePassword &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality()
                .equals(other.oldPassword, oldPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(masterKey),
      const DeepCollectionEquality().hash(oldPassword),
      const DeepCollectionEquality().hash(newPassword));

  @JsonKey(ignore: true)
  @override
  _$$_DerivedKeyUpdateParamsChangePasswordChangePasswordCopyWith<
          _$_DerivedKeyUpdateParamsChangePasswordChangePassword>
      get copyWith =>
          __$$_DerivedKeyUpdateParamsChangePasswordChangePasswordCopyWithImpl<
                  _$_DerivedKeyUpdateParamsChangePasswordChangePassword>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DerivedKeyUpdateParamsChangePasswordChangePasswordToJson(
      this,
    );
  }
}

abstract class _DerivedKeyUpdateParamsChangePasswordChangePassword
    implements DerivedKeyUpdateParamsChangePassword {
  const factory _DerivedKeyUpdateParamsChangePasswordChangePassword(
          {required final String masterKey,
          required final Password oldPassword,
          required final Password newPassword}) =
      _$_DerivedKeyUpdateParamsChangePasswordChangePassword;

  factory _DerivedKeyUpdateParamsChangePasswordChangePassword.fromJson(
          Map<String, dynamic> json) =
      _$_DerivedKeyUpdateParamsChangePasswordChangePassword.fromJson;

  @override
  String get masterKey;
  @override
  Password get oldPassword;
  @override
  Password get newPassword;
  @override
  @JsonKey(ignore: true)
  _$$_DerivedKeyUpdateParamsChangePasswordChangePasswordCopyWith<
          _$_DerivedKeyUpdateParamsChangePasswordChangePassword>
      get copyWith => throw _privateConstructorUsedError;
}
