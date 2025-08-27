// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounts_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountsList {
  List<String> get accounts;
  @JsonKey(includeIfNull: false)
  String? get continuation;

  /// Create a copy of AccountsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AccountsListCopyWith<AccountsList> get copyWith =>
      _$AccountsListCopyWithImpl<AccountsList>(
          this as AccountsList, _$identity);

  /// Serializes this AccountsList to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccountsList &&
            const DeepCollectionEquality().equals(other.accounts, accounts) &&
            (identical(other.continuation, continuation) ||
                other.continuation == continuation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(accounts), continuation);

  @override
  String toString() {
    return 'AccountsList(accounts: $accounts, continuation: $continuation)';
  }
}

/// @nodoc
abstract mixin class $AccountsListCopyWith<$Res> {
  factory $AccountsListCopyWith(
          AccountsList value, $Res Function(AccountsList) _then) =
      _$AccountsListCopyWithImpl;
  @useResult
  $Res call(
      {List<String> accounts,
      @JsonKey(includeIfNull: false) String? continuation});
}

/// @nodoc
class _$AccountsListCopyWithImpl<$Res> implements $AccountsListCopyWith<$Res> {
  _$AccountsListCopyWithImpl(this._self, this._then);

  final AccountsList _self;
  final $Res Function(AccountsList) _then;

  /// Create a copy of AccountsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? continuation = freezed,
  }) {
    return _then(_self.copyWith(
      accounts: null == accounts
          ? _self.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      continuation: freezed == continuation
          ? _self.continuation
          : continuation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AccountsList].
extension AccountsListPatterns on AccountsList {
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
    TResult Function(_AccountsList value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AccountsList() when $default != null:
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
    TResult Function(_AccountsList value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AccountsList():
        return $default(_that);
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
    TResult? Function(_AccountsList value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AccountsList() when $default != null:
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
    TResult Function(List<String> accounts,
            @JsonKey(includeIfNull: false) String? continuation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AccountsList() when $default != null:
        return $default(_that.accounts, _that.continuation);
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
    TResult Function(List<String> accounts,
            @JsonKey(includeIfNull: false) String? continuation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AccountsList():
        return $default(_that.accounts, _that.continuation);
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
    TResult? Function(List<String> accounts,
            @JsonKey(includeIfNull: false) String? continuation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AccountsList() when $default != null:
        return $default(_that.accounts, _that.continuation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AccountsList implements AccountsList {
  const _AccountsList(
      {required final List<String> accounts,
      @JsonKey(includeIfNull: false) this.continuation})
      : _accounts = accounts;
  factory _AccountsList.fromJson(Map<String, dynamic> json) =>
      _$AccountsListFromJson(json);

  final List<String> _accounts;
  @override
  List<String> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  @JsonKey(includeIfNull: false)
  final String? continuation;

  /// Create a copy of AccountsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AccountsListCopyWith<_AccountsList> get copyWith =>
      __$AccountsListCopyWithImpl<_AccountsList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AccountsListToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountsList &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            (identical(other.continuation, continuation) ||
                other.continuation == continuation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_accounts), continuation);

  @override
  String toString() {
    return 'AccountsList(accounts: $accounts, continuation: $continuation)';
  }
}

/// @nodoc
abstract mixin class _$AccountsListCopyWith<$Res>
    implements $AccountsListCopyWith<$Res> {
  factory _$AccountsListCopyWith(
          _AccountsList value, $Res Function(_AccountsList) _then) =
      __$AccountsListCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String> accounts,
      @JsonKey(includeIfNull: false) String? continuation});
}

/// @nodoc
class __$AccountsListCopyWithImpl<$Res>
    implements _$AccountsListCopyWith<$Res> {
  __$AccountsListCopyWithImpl(this._self, this._then);

  final _AccountsList _self;
  final $Res Function(_AccountsList) _then;

  /// Create a copy of AccountsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accounts = null,
    Object? continuation = freezed,
  }) {
    return _then(_AccountsList(
      accounts: null == accounts
          ? _self._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      continuation: freezed == continuation
          ? _self.continuation
          : continuation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
