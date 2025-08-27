// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_update_params_change_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EncryptedKeyUpdateParamsChangePassword {
  PublicKey get publicKey;
  Password get oldPassword;
  Password get newPassword;

  /// Create a copy of EncryptedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EncryptedKeyUpdateParamsChangePasswordCopyWith<
          EncryptedKeyUpdateParamsChangePassword>
      get copyWith => _$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl<
              EncryptedKeyUpdateParamsChangePassword>(
          this as EncryptedKeyUpdateParamsChangePassword, _$identity);

  /// Serializes this EncryptedKeyUpdateParamsChangePassword to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EncryptedKeyUpdateParamsChangePassword &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, publicKey, oldPassword, newPassword);

  @override
  String toString() {
    return 'EncryptedKeyUpdateParamsChangePassword(publicKey: $publicKey, oldPassword: $oldPassword, newPassword: $newPassword)';
  }
}

/// @nodoc
abstract mixin class $EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  factory $EncryptedKeyUpdateParamsChangePasswordCopyWith(
          EncryptedKeyUpdateParamsChangePassword value,
          $Res Function(EncryptedKeyUpdateParamsChangePassword) _then) =
      _$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl;
  @useResult
  $Res call({PublicKey publicKey, Password oldPassword, Password newPassword});

  $PublicKeyCopyWith<$Res> get publicKey;
  $PasswordCopyWith<$Res> get oldPassword;
  $PasswordCopyWith<$Res> get newPassword;
}

/// @nodoc
class _$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl<$Res>
    implements $EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  _$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl(this._self, this._then);

  final EncryptedKeyUpdateParamsChangePassword _self;
  final $Res Function(EncryptedKeyUpdateParamsChangePassword) _then;

  /// Create a copy of EncryptedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_self.copyWith(
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of EncryptedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }

  /// Create a copy of EncryptedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get oldPassword {
    return $PasswordCopyWith<$Res>(_self.oldPassword, (value) {
      return _then(_self.copyWith(oldPassword: value));
    });
  }

  /// Create a copy of EncryptedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get newPassword {
    return $PasswordCopyWith<$Res>(_self.newPassword, (value) {
      return _then(_self.copyWith(newPassword: value));
    });
  }
}

/// Adds pattern-matching-related methods to [EncryptedKeyUpdateParamsChangePassword].
extension EncryptedKeyUpdateParamsChangePasswordPatterns
    on EncryptedKeyUpdateParamsChangePassword {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EncryptedKeyUpdateParamsChangePassword value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EncryptedKeyUpdateParamsChangePassword() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EncryptedKeyUpdateParamsChangePassword value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EncryptedKeyUpdateParamsChangePassword():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EncryptedKeyUpdateParamsChangePassword value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EncryptedKeyUpdateParamsChangePassword() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            PublicKey publicKey, Password oldPassword, Password newPassword)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EncryptedKeyUpdateParamsChangePassword() when $default != null:
        return $default(_that.publicKey, _that.oldPassword, _that.newPassword);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            PublicKey publicKey, Password oldPassword, Password newPassword)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EncryptedKeyUpdateParamsChangePassword():
        return $default(_that.publicKey, _that.oldPassword, _that.newPassword);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            PublicKey publicKey, Password oldPassword, Password newPassword)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EncryptedKeyUpdateParamsChangePassword() when $default != null:
        return $default(_that.publicKey, _that.oldPassword, _that.newPassword);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _EncryptedKeyUpdateParamsChangePassword
    implements EncryptedKeyUpdateParamsChangePassword {
  const _EncryptedKeyUpdateParamsChangePassword(
      {required this.publicKey,
      required this.oldPassword,
      required this.newPassword});
  factory _EncryptedKeyUpdateParamsChangePassword.fromJson(
          Map<String, dynamic> json) =>
      _$EncryptedKeyUpdateParamsChangePasswordFromJson(json);

  @override
  final PublicKey publicKey;
  @override
  final Password oldPassword;
  @override
  final Password newPassword;

  /// Create a copy of EncryptedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EncryptedKeyUpdateParamsChangePasswordCopyWith<
          _EncryptedKeyUpdateParamsChangePassword>
      get copyWith => __$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl<
          _EncryptedKeyUpdateParamsChangePassword>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EncryptedKeyUpdateParamsChangePasswordToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EncryptedKeyUpdateParamsChangePassword &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, publicKey, oldPassword, newPassword);

  @override
  String toString() {
    return 'EncryptedKeyUpdateParamsChangePassword(publicKey: $publicKey, oldPassword: $oldPassword, newPassword: $newPassword)';
  }
}

/// @nodoc
abstract mixin class _$EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res>
    implements $EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  factory _$EncryptedKeyUpdateParamsChangePasswordCopyWith(
          _EncryptedKeyUpdateParamsChangePassword value,
          $Res Function(_EncryptedKeyUpdateParamsChangePassword) _then) =
      __$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl;
  @override
  @useResult
  $Res call({PublicKey publicKey, Password oldPassword, Password newPassword});

  @override
  $PublicKeyCopyWith<$Res> get publicKey;
  @override
  $PasswordCopyWith<$Res> get oldPassword;
  @override
  $PasswordCopyWith<$Res> get newPassword;
}

/// @nodoc
class __$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl<$Res>
    implements _$EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  __$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl(this._self, this._then);

  final _EncryptedKeyUpdateParamsChangePassword _self;
  final $Res Function(_EncryptedKeyUpdateParamsChangePassword) _then;

  /// Create a copy of EncryptedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? publicKey = null,
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_EncryptedKeyUpdateParamsChangePassword(
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of EncryptedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }

  /// Create a copy of EncryptedKeyUpdateParamsChangePassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get oldPassword {
    return $PasswordCopyWith<$Res>(_self.oldPassword, (value) {
      return _then(_self.copyWith(oldPassword: value));
    });
  }

  /// Create a copy of EncryptedKeyUpdateParamsChangePassword
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
