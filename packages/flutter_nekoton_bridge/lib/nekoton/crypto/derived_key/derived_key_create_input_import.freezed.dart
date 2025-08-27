// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_create_input_import.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DerivedKeyCreateInputImport {
  String? get keyName;
  String get phrase;
  Password get password;

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DerivedKeyCreateInputImportCopyWith<DerivedKeyCreateInputImport>
      get copyWith => _$DerivedKeyCreateInputImportCopyWithImpl<
              DerivedKeyCreateInputImport>(
          this as DerivedKeyCreateInputImport, _$identity);

  /// Serializes this DerivedKeyCreateInputImport to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DerivedKeyCreateInputImport &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, keyName, phrase, password);

  @override
  String toString() {
    return 'DerivedKeyCreateInputImport(keyName: $keyName, phrase: $phrase, password: $password)';
  }
}

/// @nodoc
abstract mixin class $DerivedKeyCreateInputImportCopyWith<$Res> {
  factory $DerivedKeyCreateInputImportCopyWith(
          DerivedKeyCreateInputImport value,
          $Res Function(DerivedKeyCreateInputImport) _then) =
      _$DerivedKeyCreateInputImportCopyWithImpl;
  @useResult
  $Res call({String? keyName, String phrase, Password password});

  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyCreateInputImportCopyWithImpl<$Res>
    implements $DerivedKeyCreateInputImportCopyWith<$Res> {
  _$DerivedKeyCreateInputImportCopyWithImpl(this._self, this._then);

  final DerivedKeyCreateInputImport _self;
  final $Res Function(DerivedKeyCreateInputImport) _then;

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyName = freezed,
    Object? phrase = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      keyName: freezed == keyName
          ? _self.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      phrase: null == phrase
          ? _self.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_self.password, (value) {
      return _then(_self.copyWith(password: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DerivedKeyCreateInputImport].
extension DerivedKeyCreateInputImportPatterns on DerivedKeyCreateInputImport {
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
    TResult Function(_DerivedKeyCreateInputImport value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyCreateInputImport() when $default != null:
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
    TResult Function(_DerivedKeyCreateInputImport value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyCreateInputImport():
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
    TResult? Function(_DerivedKeyCreateInputImport value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyCreateInputImport() when $default != null:
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
    TResult Function(String? keyName, String phrase, Password password)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyCreateInputImport() when $default != null:
        return $default(_that.keyName, _that.phrase, _that.password);
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
    TResult Function(String? keyName, String phrase, Password password)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyCreateInputImport():
        return $default(_that.keyName, _that.phrase, _that.password);
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
    TResult? Function(String? keyName, String phrase, Password password)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyCreateInputImport() when $default != null:
        return $default(_that.keyName, _that.phrase, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _DerivedKeyCreateInputImport implements DerivedKeyCreateInputImport {
  const _DerivedKeyCreateInputImport(
      {this.keyName, required this.phrase, required this.password});
  factory _DerivedKeyCreateInputImport.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyCreateInputImportFromJson(json);

  @override
  final String? keyName;
  @override
  final String phrase;
  @override
  final Password password;

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyCreateInputImportCopyWith<_DerivedKeyCreateInputImport>
      get copyWith => __$DerivedKeyCreateInputImportCopyWithImpl<
          _DerivedKeyCreateInputImport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyCreateInputImportToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyCreateInputImport &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, keyName, phrase, password);

  @override
  String toString() {
    return 'DerivedKeyCreateInputImport(keyName: $keyName, phrase: $phrase, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyCreateInputImportCopyWith<$Res>
    implements $DerivedKeyCreateInputImportCopyWith<$Res> {
  factory _$DerivedKeyCreateInputImportCopyWith(
          _DerivedKeyCreateInputImport value,
          $Res Function(_DerivedKeyCreateInputImport) _then) =
      __$DerivedKeyCreateInputImportCopyWithImpl;
  @override
  @useResult
  $Res call({String? keyName, String phrase, Password password});

  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$DerivedKeyCreateInputImportCopyWithImpl<$Res>
    implements _$DerivedKeyCreateInputImportCopyWith<$Res> {
  __$DerivedKeyCreateInputImportCopyWithImpl(this._self, this._then);

  final _DerivedKeyCreateInputImport _self;
  final $Res Function(_DerivedKeyCreateInputImport) _then;

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? keyName = freezed,
    Object? phrase = null,
    Object? password = null,
  }) {
    return _then(_DerivedKeyCreateInputImport(
      keyName: freezed == keyName
          ? _self.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      phrase: null == phrase
          ? _self.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of DerivedKeyCreateInputImport
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
