// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_sign_params_by_account_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DerivedKeyPasswordByAccountId {
  PublicKey get masterKey;
  int get accountId;
  Password get password;

  /// Create a copy of DerivedKeyPasswordByAccountId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DerivedKeyPasswordByAccountIdCopyWith<DerivedKeyPasswordByAccountId>
      get copyWith => _$DerivedKeyPasswordByAccountIdCopyWithImpl<
              DerivedKeyPasswordByAccountId>(
          this as DerivedKeyPasswordByAccountId, _$identity);

  /// Serializes this DerivedKeyPasswordByAccountId to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DerivedKeyPasswordByAccountId &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, masterKey, accountId, password);

  @override
  String toString() {
    return 'DerivedKeyPasswordByAccountId(masterKey: $masterKey, accountId: $accountId, password: $password)';
  }
}

/// @nodoc
abstract mixin class $DerivedKeyPasswordByAccountIdCopyWith<$Res> {
  factory $DerivedKeyPasswordByAccountIdCopyWith(
          DerivedKeyPasswordByAccountId value,
          $Res Function(DerivedKeyPasswordByAccountId) _then) =
      _$DerivedKeyPasswordByAccountIdCopyWithImpl;
  @useResult
  $Res call({PublicKey masterKey, int accountId, Password password});

  $PublicKeyCopyWith<$Res> get masterKey;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyPasswordByAccountIdCopyWithImpl<$Res>
    implements $DerivedKeyPasswordByAccountIdCopyWith<$Res> {
  _$DerivedKeyPasswordByAccountIdCopyWithImpl(this._self, this._then);

  final DerivedKeyPasswordByAccountId _self;
  final $Res Function(DerivedKeyPasswordByAccountId) _then;

  /// Create a copy of DerivedKeyPasswordByAccountId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? accountId = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      masterKey: null == masterKey
          ? _self.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of DerivedKeyPasswordByAccountId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
      return _then(_self.copyWith(masterKey: value));
    });
  }

  /// Create a copy of DerivedKeyPasswordByAccountId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_self.password, (value) {
      return _then(_self.copyWith(password: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DerivedKeyPasswordByAccountId].
extension DerivedKeyPasswordByAccountIdPatterns
    on DerivedKeyPasswordByAccountId {
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
    TResult Function(_DerivedKeyPasswordByAccountId value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyPasswordByAccountId() when $default != null:
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
    TResult Function(_DerivedKeyPasswordByAccountId value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyPasswordByAccountId():
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
    TResult? Function(_DerivedKeyPasswordByAccountId value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyPasswordByAccountId() when $default != null:
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
    TResult Function(PublicKey masterKey, int accountId, Password password)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyPasswordByAccountId() when $default != null:
        return $default(_that.masterKey, _that.accountId, _that.password);
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
    TResult Function(PublicKey masterKey, int accountId, Password password)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyPasswordByAccountId():
        return $default(_that.masterKey, _that.accountId, _that.password);
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
    TResult? Function(PublicKey masterKey, int accountId, Password password)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyPasswordByAccountId() when $default != null:
        return $default(_that.masterKey, _that.accountId, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _DerivedKeyPasswordByAccountId implements DerivedKeyPasswordByAccountId {
  const _DerivedKeyPasswordByAccountId(
      {required this.masterKey,
      required this.accountId,
      required this.password});
  factory _DerivedKeyPasswordByAccountId.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyPasswordByAccountIdFromJson(json);

  @override
  final PublicKey masterKey;
  @override
  final int accountId;
  @override
  final Password password;

  /// Create a copy of DerivedKeyPasswordByAccountId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyPasswordByAccountIdCopyWith<_DerivedKeyPasswordByAccountId>
      get copyWith => __$DerivedKeyPasswordByAccountIdCopyWithImpl<
          _DerivedKeyPasswordByAccountId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyPasswordByAccountIdToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyPasswordByAccountId &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, masterKey, accountId, password);

  @override
  String toString() {
    return 'DerivedKeyPasswordByAccountId(masterKey: $masterKey, accountId: $accountId, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyPasswordByAccountIdCopyWith<$Res>
    implements $DerivedKeyPasswordByAccountIdCopyWith<$Res> {
  factory _$DerivedKeyPasswordByAccountIdCopyWith(
          _DerivedKeyPasswordByAccountId value,
          $Res Function(_DerivedKeyPasswordByAccountId) _then) =
      __$DerivedKeyPasswordByAccountIdCopyWithImpl;
  @override
  @useResult
  $Res call({PublicKey masterKey, int accountId, Password password});

  @override
  $PublicKeyCopyWith<$Res> get masterKey;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$DerivedKeyPasswordByAccountIdCopyWithImpl<$Res>
    implements _$DerivedKeyPasswordByAccountIdCopyWith<$Res> {
  __$DerivedKeyPasswordByAccountIdCopyWithImpl(this._self, this._then);

  final _DerivedKeyPasswordByAccountId _self;
  final $Res Function(_DerivedKeyPasswordByAccountId) _then;

  /// Create a copy of DerivedKeyPasswordByAccountId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? masterKey = null,
    Object? accountId = null,
    Object? password = null,
  }) {
    return _then(_DerivedKeyPasswordByAccountId(
      masterKey: null == masterKey
          ? _self.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of DerivedKeyPasswordByAccountId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
      return _then(_self.copyWith(masterKey: value));
    });
  }

  /// Create a copy of DerivedKeyPasswordByAccountId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_self.password, (value) {
      return _then(_self.copyWith(password: value));
    });
  }
}

// dart format on
