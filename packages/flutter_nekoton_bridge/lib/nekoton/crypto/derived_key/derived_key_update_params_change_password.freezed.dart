// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_update_params_change_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DerivedKeyUpdateParamsChangePassword {
  PublicKey get masterKey;
  Password get oldPassword;
  Password get newPassword;

  /// Create a copy of DerivedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DerivedKeyUpdateParamsChangePasswordCopyWith<
          DerivedKeyUpdateParamsChangePassword>
      get copyWith => _$DerivedKeyUpdateParamsChangePasswordCopyWithImpl<
              DerivedKeyUpdateParamsChangePassword>(
          this as DerivedKeyUpdateParamsChangePassword, _$identity);

  /// Serializes this DerivedKeyUpdateParamsChangePassword to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DerivedKeyUpdateParamsChangePassword &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, masterKey, oldPassword, newPassword);

  @override
  String toString() {
    return 'DerivedKeyUpdateParamsChangePassword(masterKey: $masterKey, oldPassword: $oldPassword, newPassword: $newPassword)';
  }
}

/// @nodoc
abstract mixin class $DerivedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  factory $DerivedKeyUpdateParamsChangePasswordCopyWith(
          DerivedKeyUpdateParamsChangePassword value,
          $Res Function(DerivedKeyUpdateParamsChangePassword) _then) =
      _$DerivedKeyUpdateParamsChangePasswordCopyWithImpl;
  @useResult
  $Res call({PublicKey masterKey, Password oldPassword, Password newPassword});

  $PublicKeyCopyWith<$Res> get masterKey;
  $PasswordCopyWith<$Res> get oldPassword;
  $PasswordCopyWith<$Res> get newPassword;
}

/// @nodoc
class _$DerivedKeyUpdateParamsChangePasswordCopyWithImpl<$Res>
    implements $DerivedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  _$DerivedKeyUpdateParamsChangePasswordCopyWithImpl(this._self, this._then);

  final DerivedKeyUpdateParamsChangePassword _self;
  final $Res Function(DerivedKeyUpdateParamsChangePassword) _then;

  /// Create a copy of DerivedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_self.copyWith(
      masterKey: null == masterKey
          ? _self.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      oldPassword: null == oldPassword
          ? _self.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of DerivedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
      return _then(_self.copyWith(masterKey: value));
    });
  }

  /// Create a copy of DerivedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get oldPassword {
    return $PasswordCopyWith<$Res>(_self.oldPassword, (value) {
      return _then(_self.copyWith(oldPassword: value));
    });
  }

  /// Create a copy of DerivedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get newPassword {
    return $PasswordCopyWith<$Res>(_self.newPassword, (value) {
      return _then(_self.copyWith(newPassword: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _DerivedKeyUpdateParamsChangePassword
    implements DerivedKeyUpdateParamsChangePassword {
  const _DerivedKeyUpdateParamsChangePassword(
      {required this.masterKey,
      required this.oldPassword,
      required this.newPassword});
  factory _DerivedKeyUpdateParamsChangePassword.fromJson(
          Map<String, dynamic> json) =>
      _$DerivedKeyUpdateParamsChangePasswordFromJson(json);

  @override
  final PublicKey masterKey;
  @override
  final Password oldPassword;
  @override
  final Password newPassword;

  /// Create a copy of DerivedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyUpdateParamsChangePasswordCopyWith<
          _DerivedKeyUpdateParamsChangePassword>
      get copyWith => __$DerivedKeyUpdateParamsChangePasswordCopyWithImpl<
          _DerivedKeyUpdateParamsChangePassword>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyUpdateParamsChangePasswordToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyUpdateParamsChangePassword &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, masterKey, oldPassword, newPassword);

  @override
  String toString() {
    return 'DerivedKeyUpdateParamsChangePassword(masterKey: $masterKey, oldPassword: $oldPassword, newPassword: $newPassword)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyUpdateParamsChangePasswordCopyWith<$Res>
    implements $DerivedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  factory _$DerivedKeyUpdateParamsChangePasswordCopyWith(
          _DerivedKeyUpdateParamsChangePassword value,
          $Res Function(_DerivedKeyUpdateParamsChangePassword) _then) =
      __$DerivedKeyUpdateParamsChangePasswordCopyWithImpl;
  @override
  @useResult
  $Res call({PublicKey masterKey, Password oldPassword, Password newPassword});

  @override
  $PublicKeyCopyWith<$Res> get masterKey;
  @override
  $PasswordCopyWith<$Res> get oldPassword;
  @override
  $PasswordCopyWith<$Res> get newPassword;
}

/// @nodoc
class __$DerivedKeyUpdateParamsChangePasswordCopyWithImpl<$Res>
    implements _$DerivedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  __$DerivedKeyUpdateParamsChangePasswordCopyWithImpl(this._self, this._then);

  final _DerivedKeyUpdateParamsChangePassword _self;
  final $Res Function(_DerivedKeyUpdateParamsChangePassword) _then;

  /// Create a copy of DerivedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? masterKey = null,
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_DerivedKeyUpdateParamsChangePassword(
      masterKey: null == masterKey
          ? _self.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      oldPassword: null == oldPassword
          ? _self.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of DerivedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
      return _then(_self.copyWith(masterKey: value));
    });
  }

  /// Create a copy of DerivedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get oldPassword {
    return $PasswordCopyWith<$Res>(_self.oldPassword, (value) {
      return _then(_self.copyWith(oldPassword: value));
    });
  }

  /// Create a copy of DerivedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get newPassword {
    return $PasswordCopyWith<$Res>(_self.newPassword, (value) {
      return _then(_self.copyWith(newPassword: value));
    });
  }
}

// dart format on
