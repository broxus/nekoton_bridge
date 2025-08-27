// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multisig_send_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MultisigSendTransaction {
  Address get dest;
  @amountJsonConverter
  BigInt get value;
  bool get bounce;
  int get flags;
  String get payload;

  /// Create a copy of MultisigSendTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultisigSendTransactionCopyWith<MultisigSendTransaction> get copyWith =>
      _$MultisigSendTransactionCopyWithImpl<MultisigSendTransaction>(
          this as MultisigSendTransaction, _$identity);

  /// Serializes this MultisigSendTransaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultisigSendTransaction &&
            (identical(other.dest, dest) || other.dest == dest) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.bounce, bounce) || other.bounce == bounce) &&
            (identical(other.flags, flags) || other.flags == flags) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dest, value, bounce, flags, payload);

  @override
  String toString() {
    return 'MultisigSendTransaction(dest: $dest, value: $value, bounce: $bounce, flags: $flags, payload: $payload)';
  }
}

/// @nodoc
abstract mixin class $MultisigSendTransactionCopyWith<$Res> {
  factory $MultisigSendTransactionCopyWith(MultisigSendTransaction value,
          $Res Function(MultisigSendTransaction) _then) =
      _$MultisigSendTransactionCopyWithImpl;
  @useResult
  $Res call(
      {Address dest,
      @amountJsonConverter BigInt value,
      bool bounce,
      int flags,
      String payload});

  $AddressCopyWith<$Res> get dest;
}

/// @nodoc
class _$MultisigSendTransactionCopyWithImpl<$Res>
    implements $MultisigSendTransactionCopyWith<$Res> {
  _$MultisigSendTransactionCopyWithImpl(this._self, this._then);

  final MultisigSendTransaction _self;
  final $Res Function(MultisigSendTransaction) _then;

  /// Create a copy of MultisigSendTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dest = null,
    Object? value = null,
    Object? bounce = null,
    Object? flags = null,
    Object? payload = null,
  }) {
    return _then(_self.copyWith(
      dest: null == dest
          ? _self.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as Address,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bounce: null == bounce
          ? _self.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      flags: null == flags
          ? _self.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as int,
      payload: null == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of MultisigSendTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get dest {
    return $AddressCopyWith<$Res>(_self.dest, (value) {
      return _then(_self.copyWith(dest: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MultisigSendTransaction].
extension MultisigSendTransactionPatterns on MultisigSendTransaction {
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
    TResult Function(_MultisigSendTransaction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MultisigSendTransaction() when $default != null:
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
    TResult Function(_MultisigSendTransaction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MultisigSendTransaction():
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
    TResult? Function(_MultisigSendTransaction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MultisigSendTransaction() when $default != null:
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
    TResult Function(Address dest, @amountJsonConverter BigInt value,
            bool bounce, int flags, String payload)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MultisigSendTransaction() when $default != null:
        return $default(
            _that.dest, _that.value, _that.bounce, _that.flags, _that.payload);
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
    TResult Function(Address dest, @amountJsonConverter BigInt value,
            bool bounce, int flags, String payload)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MultisigSendTransaction():
        return $default(
            _that.dest, _that.value, _that.bounce, _that.flags, _that.payload);
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
    TResult? Function(Address dest, @amountJsonConverter BigInt value,
            bool bounce, int flags, String payload)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MultisigSendTransaction() when $default != null:
        return $default(
            _that.dest, _that.value, _that.bounce, _that.flags, _that.payload);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MultisigSendTransaction implements MultisigSendTransaction {
  const _MultisigSendTransaction(
      {required this.dest,
      @amountJsonConverter required this.value,
      required this.bounce,
      required this.flags,
      required this.payload});
  factory _MultisigSendTransaction.fromJson(Map<String, dynamic> json) =>
      _$MultisigSendTransactionFromJson(json);

  @override
  final Address dest;
  @override
  @amountJsonConverter
  final BigInt value;
  @override
  final bool bounce;
  @override
  final int flags;
  @override
  final String payload;

  /// Create a copy of MultisigSendTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MultisigSendTransactionCopyWith<_MultisigSendTransaction> get copyWith =>
      __$MultisigSendTransactionCopyWithImpl<_MultisigSendTransaction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultisigSendTransactionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultisigSendTransaction &&
            (identical(other.dest, dest) || other.dest == dest) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.bounce, bounce) || other.bounce == bounce) &&
            (identical(other.flags, flags) || other.flags == flags) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dest, value, bounce, flags, payload);

  @override
  String toString() {
    return 'MultisigSendTransaction(dest: $dest, value: $value, bounce: $bounce, flags: $flags, payload: $payload)';
  }
}

/// @nodoc
abstract mixin class _$MultisigSendTransactionCopyWith<$Res>
    implements $MultisigSendTransactionCopyWith<$Res> {
  factory _$MultisigSendTransactionCopyWith(_MultisigSendTransaction value,
          $Res Function(_MultisigSendTransaction) _then) =
      __$MultisigSendTransactionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Address dest,
      @amountJsonConverter BigInt value,
      bool bounce,
      int flags,
      String payload});

  @override
  $AddressCopyWith<$Res> get dest;
}

/// @nodoc
class __$MultisigSendTransactionCopyWithImpl<$Res>
    implements _$MultisigSendTransactionCopyWith<$Res> {
  __$MultisigSendTransactionCopyWithImpl(this._self, this._then);

  final _MultisigSendTransaction _self;
  final $Res Function(_MultisigSendTransaction) _then;

  /// Create a copy of MultisigSendTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dest = null,
    Object? value = null,
    Object? bounce = null,
    Object? flags = null,
    Object? payload = null,
  }) {
    return _then(_MultisigSendTransaction(
      dest: null == dest
          ? _self.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as Address,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bounce: null == bounce
          ? _self.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      flags: null == flags
          ? _self.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as int,
      payload: null == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of MultisigSendTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get dest {
    return $AddressCopyWith<$Res>(_self.dest, (value) {
      return _then(_self.copyWith(dest: value));
    });
  }
}

// dart format on
