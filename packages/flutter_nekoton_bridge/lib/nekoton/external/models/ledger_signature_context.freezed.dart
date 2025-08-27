// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_signature_context.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LedgerSignatureContext {
  int get decimals;
  String get asset;
  int? get workchainId;
  String? get address;

  /// Create a copy of LedgerSignatureContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LedgerSignatureContextCopyWith<LedgerSignatureContext> get copyWith =>
      _$LedgerSignatureContextCopyWithImpl<LedgerSignatureContext>(
          this as LedgerSignatureContext, _$identity);

  /// Serializes this LedgerSignatureContext to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LedgerSignatureContext &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.workchainId, workchainId) ||
                other.workchainId == workchainId) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, decimals, asset, workchainId, address);

  @override
  String toString() {
    return 'LedgerSignatureContext(decimals: $decimals, asset: $asset, workchainId: $workchainId, address: $address)';
  }
}

/// @nodoc
abstract mixin class $LedgerSignatureContextCopyWith<$Res> {
  factory $LedgerSignatureContextCopyWith(LedgerSignatureContext value,
          $Res Function(LedgerSignatureContext) _then) =
      _$LedgerSignatureContextCopyWithImpl;
  @useResult
  $Res call({int decimals, String asset, int? workchainId, String? address});
}

/// @nodoc
class _$LedgerSignatureContextCopyWithImpl<$Res>
    implements $LedgerSignatureContextCopyWith<$Res> {
  _$LedgerSignatureContextCopyWithImpl(this._self, this._then);

  final LedgerSignatureContext _self;
  final $Res Function(LedgerSignatureContext) _then;

  /// Create a copy of LedgerSignatureContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decimals = null,
    Object? asset = null,
    Object? workchainId = freezed,
    Object? address = freezed,
  }) {
    return _then(_self.copyWith(
      decimals: null == decimals
          ? _self.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      asset: null == asset
          ? _self.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      workchainId: freezed == workchainId
          ? _self.workchainId
          : workchainId // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LedgerSignatureContext].
extension LedgerSignatureContextPatterns on LedgerSignatureContext {
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
    TResult Function(_LedgerSignatureContext value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LedgerSignatureContext() when $default != null:
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
    TResult Function(_LedgerSignatureContext value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerSignatureContext():
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
    TResult? Function(_LedgerSignatureContext value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerSignatureContext() when $default != null:
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
            int decimals, String asset, int? workchainId, String? address)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LedgerSignatureContext() when $default != null:
        return $default(
            _that.decimals, _that.asset, _that.workchainId, _that.address);
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
            int decimals, String asset, int? workchainId, String? address)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerSignatureContext():
        return $default(
            _that.decimals, _that.asset, _that.workchainId, _that.address);
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
            int decimals, String asset, int? workchainId, String? address)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerSignatureContext() when $default != null:
        return $default(
            _that.decimals, _that.asset, _that.workchainId, _that.address);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LedgerSignatureContext implements LedgerSignatureContext {
  const _LedgerSignatureContext(
      {required this.decimals,
      required this.asset,
      this.workchainId,
      this.address});
  factory _LedgerSignatureContext.fromJson(Map<String, dynamic> json) =>
      _$LedgerSignatureContextFromJson(json);

  @override
  final int decimals;
  @override
  final String asset;
  @override
  final int? workchainId;
  @override
  final String? address;

  /// Create a copy of LedgerSignatureContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LedgerSignatureContextCopyWith<_LedgerSignatureContext> get copyWith =>
      __$LedgerSignatureContextCopyWithImpl<_LedgerSignatureContext>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LedgerSignatureContextToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LedgerSignatureContext &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.workchainId, workchainId) ||
                other.workchainId == workchainId) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, decimals, asset, workchainId, address);

  @override
  String toString() {
    return 'LedgerSignatureContext(decimals: $decimals, asset: $asset, workchainId: $workchainId, address: $address)';
  }
}

/// @nodoc
abstract mixin class _$LedgerSignatureContextCopyWith<$Res>
    implements $LedgerSignatureContextCopyWith<$Res> {
  factory _$LedgerSignatureContextCopyWith(_LedgerSignatureContext value,
          $Res Function(_LedgerSignatureContext) _then) =
      __$LedgerSignatureContextCopyWithImpl;
  @override
  @useResult
  $Res call({int decimals, String asset, int? workchainId, String? address});
}

/// @nodoc
class __$LedgerSignatureContextCopyWithImpl<$Res>
    implements _$LedgerSignatureContextCopyWith<$Res> {
  __$LedgerSignatureContextCopyWithImpl(this._self, this._then);

  final _LedgerSignatureContext _self;
  final $Res Function(_LedgerSignatureContext) _then;

  /// Create a copy of LedgerSignatureContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? decimals = null,
    Object? asset = null,
    Object? workchainId = freezed,
    Object? address = freezed,
  }) {
    return _then(_LedgerSignatureContext(
      decimals: null == decimals
          ? _self.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      asset: null == asset
          ? _self.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      workchainId: freezed == workchainId
          ? _self.workchainId
          : workchainId // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
