// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keypair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Keypair {
  PublicKey get public;
  PublicKey get secret;

  /// Create a copy of Keypair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeypairCopyWith<Keypair> get copyWith =>
      _$KeypairCopyWithImpl<Keypair>(this as Keypair, _$identity);

  /// Serializes this Keypair to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Keypair &&
            (identical(other.public, public) || other.public == public) &&
            (identical(other.secret, secret) || other.secret == secret));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, public, secret);

  @override
  String toString() {
    return 'Keypair(public: $public, secret: $secret)';
  }
}

/// @nodoc
abstract mixin class $KeypairCopyWith<$Res> {
  factory $KeypairCopyWith(Keypair value, $Res Function(Keypair) _then) =
      _$KeypairCopyWithImpl;
  @useResult
  $Res call({PublicKey public, PublicKey secret});

  $PublicKeyCopyWith<$Res> get public;
  $PublicKeyCopyWith<$Res> get secret;
}

/// @nodoc
class _$KeypairCopyWithImpl<$Res> implements $KeypairCopyWith<$Res> {
  _$KeypairCopyWithImpl(this._self, this._then);

  final Keypair _self;
  final $Res Function(Keypair) _then;

  /// Create a copy of Keypair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? public = null,
    Object? secret = null,
  }) {
    return _then(_self.copyWith(
      public: null == public
          ? _self.public
          : public // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      secret: null == secret
          ? _self.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as PublicKey,
    ));
  }

  /// Create a copy of Keypair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get public {
    return $PublicKeyCopyWith<$Res>(_self.public, (value) {
      return _then(_self.copyWith(public: value));
    });
  }

  /// Create a copy of Keypair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get secret {
    return $PublicKeyCopyWith<$Res>(_self.secret, (value) {
      return _then(_self.copyWith(secret: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Keypair].
extension KeypairPatterns on Keypair {
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
    TResult Function(_Keypair value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Keypair() when $default != null:
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
    TResult Function(_Keypair value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Keypair():
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
    TResult? Function(_Keypair value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Keypair() when $default != null:
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
    TResult Function(PublicKey public, PublicKey secret)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Keypair() when $default != null:
        return $default(_that.public, _that.secret);
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
    TResult Function(PublicKey public, PublicKey secret) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Keypair():
        return $default(_that.public, _that.secret);
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
    TResult? Function(PublicKey public, PublicKey secret)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Keypair() when $default != null:
        return $default(_that.public, _that.secret);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Keypair implements Keypair {
  const _Keypair({required this.public, required this.secret});
  factory _Keypair.fromJson(Map<String, dynamic> json) =>
      _$KeypairFromJson(json);

  @override
  final PublicKey public;
  @override
  final PublicKey secret;

  /// Create a copy of Keypair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeypairCopyWith<_Keypair> get copyWith =>
      __$KeypairCopyWithImpl<_Keypair>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KeypairToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Keypair &&
            (identical(other.public, public) || other.public == public) &&
            (identical(other.secret, secret) || other.secret == secret));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, public, secret);

  @override
  String toString() {
    return 'Keypair(public: $public, secret: $secret)';
  }
}

/// @nodoc
abstract mixin class _$KeypairCopyWith<$Res> implements $KeypairCopyWith<$Res> {
  factory _$KeypairCopyWith(_Keypair value, $Res Function(_Keypair) _then) =
      __$KeypairCopyWithImpl;
  @override
  @useResult
  $Res call({PublicKey public, PublicKey secret});

  @override
  $PublicKeyCopyWith<$Res> get public;
  @override
  $PublicKeyCopyWith<$Res> get secret;
}

/// @nodoc
class __$KeypairCopyWithImpl<$Res> implements _$KeypairCopyWith<$Res> {
  __$KeypairCopyWithImpl(this._self, this._then);

  final _Keypair _self;
  final $Res Function(_Keypair) _then;

  /// Create a copy of Keypair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? public = null,
    Object? secret = null,
  }) {
    return _then(_Keypair(
      public: null == public
          ? _self.public
          : public // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      secret: null == secret
          ? _self.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as PublicKey,
    ));
  }

  /// Create a copy of Keypair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get public {
    return $PublicKeyCopyWith<$Res>(_self.public, (value) {
      return _then(_self.copyWith(public: value));
    });
  }

  /// Create a copy of Keypair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get secret {
    return $PublicKeyCopyWith<$Res>(_self.secret, (value) {
      return _then(_self.copyWith(secret: value));
    });
  }
}

// dart format on
