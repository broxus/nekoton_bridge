// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PendingTransaction {
  String get messageHash;
  Address? get src;
  @dateSecondsSinceEpochJsonConverter
  DateTime get expireAt;

  /// Create a copy of PendingTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PendingTransactionCopyWith<PendingTransaction> get copyWith =>
      _$PendingTransactionCopyWithImpl<PendingTransaction>(
          this as PendingTransaction, _$identity);

  /// Serializes this PendingTransaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PendingTransaction &&
            (identical(other.messageHash, messageHash) ||
                other.messageHash == messageHash) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, messageHash, src, expireAt);

  @override
  String toString() {
    return 'PendingTransaction(messageHash: $messageHash, src: $src, expireAt: $expireAt)';
  }
}

/// @nodoc
abstract mixin class $PendingTransactionCopyWith<$Res> {
  factory $PendingTransactionCopyWith(
          PendingTransaction value, $Res Function(PendingTransaction) _then) =
      _$PendingTransactionCopyWithImpl;
  @useResult
  $Res call(
      {String messageHash,
      Address? src,
      @dateSecondsSinceEpochJsonConverter DateTime expireAt});

  $AddressCopyWith<$Res>? get src;
}

/// @nodoc
class _$PendingTransactionCopyWithImpl<$Res>
    implements $PendingTransactionCopyWith<$Res> {
  _$PendingTransactionCopyWithImpl(this._self, this._then);

  final PendingTransaction _self;
  final $Res Function(PendingTransaction) _then;

  /// Create a copy of PendingTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageHash = null,
    Object? src = freezed,
    Object? expireAt = null,
  }) {
    return _then(_self.copyWith(
      messageHash: null == messageHash
          ? _self.messageHash
          : messageHash // ignore: cast_nullable_to_non_nullable
              as String,
      src: freezed == src
          ? _self.src
          : src // ignore: cast_nullable_to_non_nullable
              as Address?,
      expireAt: null == expireAt
          ? _self.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of PendingTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get src {
    if (_self.src == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.src!, (value) {
      return _then(_self.copyWith(src: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PendingTransaction].
extension PendingTransactionPatterns on PendingTransaction {
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
    TResult Function(_PendingTransaction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PendingTransaction() when $default != null:
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
    TResult Function(_PendingTransaction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PendingTransaction():
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
    TResult? Function(_PendingTransaction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PendingTransaction() when $default != null:
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
    TResult Function(String messageHash, Address? src,
            @dateSecondsSinceEpochJsonConverter DateTime expireAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PendingTransaction() when $default != null:
        return $default(_that.messageHash, _that.src, _that.expireAt);
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
    TResult Function(String messageHash, Address? src,
            @dateSecondsSinceEpochJsonConverter DateTime expireAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PendingTransaction():
        return $default(_that.messageHash, _that.src, _that.expireAt);
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
    TResult? Function(String messageHash, Address? src,
            @dateSecondsSinceEpochJsonConverter DateTime expireAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PendingTransaction() when $default != null:
        return $default(_that.messageHash, _that.src, _that.expireAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PendingTransaction extends PendingTransaction {
  const _PendingTransaction(
      {required this.messageHash,
      this.src,
      @dateSecondsSinceEpochJsonConverter required this.expireAt})
      : super._();
  factory _PendingTransaction.fromJson(Map<String, dynamic> json) =>
      _$PendingTransactionFromJson(json);

  @override
  final String messageHash;
  @override
  final Address? src;
  @override
  @dateSecondsSinceEpochJsonConverter
  final DateTime expireAt;

  /// Create a copy of PendingTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PendingTransactionCopyWith<_PendingTransaction> get copyWith =>
      __$PendingTransactionCopyWithImpl<_PendingTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PendingTransactionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PendingTransaction &&
            (identical(other.messageHash, messageHash) ||
                other.messageHash == messageHash) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, messageHash, src, expireAt);

  @override
  String toString() {
    return 'PendingTransaction(messageHash: $messageHash, src: $src, expireAt: $expireAt)';
  }
}

/// @nodoc
abstract mixin class _$PendingTransactionCopyWith<$Res>
    implements $PendingTransactionCopyWith<$Res> {
  factory _$PendingTransactionCopyWith(
          _PendingTransaction value, $Res Function(_PendingTransaction) _then) =
      __$PendingTransactionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String messageHash,
      Address? src,
      @dateSecondsSinceEpochJsonConverter DateTime expireAt});

  @override
  $AddressCopyWith<$Res>? get src;
}

/// @nodoc
class __$PendingTransactionCopyWithImpl<$Res>
    implements _$PendingTransactionCopyWith<$Res> {
  __$PendingTransactionCopyWithImpl(this._self, this._then);

  final _PendingTransaction _self;
  final $Res Function(_PendingTransaction) _then;

  /// Create a copy of PendingTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? messageHash = null,
    Object? src = freezed,
    Object? expireAt = null,
  }) {
    return _then(_PendingTransaction(
      messageHash: null == messageHash
          ? _self.messageHash
          : messageHash // ignore: cast_nullable_to_non_nullable
              as String,
      src: freezed == src
          ? _self.src
          : src // ignore: cast_nullable_to_non_nullable
              as Address?,
      expireAt: null == expireAt
          ? _self.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of PendingTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get src {
    if (_self.src == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.src!, (value) {
      return _then(_self.copyWith(src: value));
    });
  }
}

// dart format on
