// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multisig_confirm_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MultisigConfirmTransaction {
  PublicKey get custodian;
  String get transactionId;

  /// Create a copy of MultisigConfirmTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultisigConfirmTransactionCopyWith<MultisigConfirmTransaction>
      get copyWith =>
          _$MultisigConfirmTransactionCopyWithImpl<MultisigConfirmTransaction>(
              this as MultisigConfirmTransaction, _$identity);

  /// Serializes this MultisigConfirmTransaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultisigConfirmTransaction &&
            (identical(other.custodian, custodian) ||
                other.custodian == custodian) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, custodian, transactionId);

  @override
  String toString() {
    return 'MultisigConfirmTransaction(custodian: $custodian, transactionId: $transactionId)';
  }
}

/// @nodoc
abstract mixin class $MultisigConfirmTransactionCopyWith<$Res> {
  factory $MultisigConfirmTransactionCopyWith(MultisigConfirmTransaction value,
          $Res Function(MultisigConfirmTransaction) _then) =
      _$MultisigConfirmTransactionCopyWithImpl;
  @useResult
  $Res call({PublicKey custodian, String transactionId});

  $PublicKeyCopyWith<$Res> get custodian;
}

/// @nodoc
class _$MultisigConfirmTransactionCopyWithImpl<$Res>
    implements $MultisigConfirmTransactionCopyWith<$Res> {
  _$MultisigConfirmTransactionCopyWithImpl(this._self, this._then);

  final MultisigConfirmTransaction _self;
  final $Res Function(MultisigConfirmTransaction) _then;

  /// Create a copy of MultisigConfirmTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custodian = null,
    Object? transactionId = null,
  }) {
    return _then(_self.copyWith(
      custodian: null == custodian
          ? _self.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      transactionId: null == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of MultisigConfirmTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get custodian {
    return $PublicKeyCopyWith<$Res>(_self.custodian, (value) {
      return _then(_self.copyWith(custodian: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MultisigConfirmTransaction].
extension MultisigConfirmTransactionPatterns on MultisigConfirmTransaction {
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
    TResult Function(_MultisigConfirmTransaction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MultisigConfirmTransaction() when $default != null:
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
    TResult Function(_MultisigConfirmTransaction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MultisigConfirmTransaction():
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
    TResult? Function(_MultisigConfirmTransaction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MultisigConfirmTransaction() when $default != null:
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
    TResult Function(PublicKey custodian, String transactionId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MultisigConfirmTransaction() when $default != null:
        return $default(_that.custodian, _that.transactionId);
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
    TResult Function(PublicKey custodian, String transactionId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MultisigConfirmTransaction():
        return $default(_that.custodian, _that.transactionId);
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
    TResult? Function(PublicKey custodian, String transactionId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MultisigConfirmTransaction() when $default != null:
        return $default(_that.custodian, _that.transactionId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MultisigConfirmTransaction implements MultisigConfirmTransaction {
  const _MultisigConfirmTransaction(
      {required this.custodian, required this.transactionId});
  factory _MultisigConfirmTransaction.fromJson(Map<String, dynamic> json) =>
      _$MultisigConfirmTransactionFromJson(json);

  @override
  final PublicKey custodian;
  @override
  final String transactionId;

  /// Create a copy of MultisigConfirmTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MultisigConfirmTransactionCopyWith<_MultisigConfirmTransaction>
      get copyWith => __$MultisigConfirmTransactionCopyWithImpl<
          _MultisigConfirmTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultisigConfirmTransactionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultisigConfirmTransaction &&
            (identical(other.custodian, custodian) ||
                other.custodian == custodian) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, custodian, transactionId);

  @override
  String toString() {
    return 'MultisigConfirmTransaction(custodian: $custodian, transactionId: $transactionId)';
  }
}

/// @nodoc
abstract mixin class _$MultisigConfirmTransactionCopyWith<$Res>
    implements $MultisigConfirmTransactionCopyWith<$Res> {
  factory _$MultisigConfirmTransactionCopyWith(
          _MultisigConfirmTransaction value,
          $Res Function(_MultisigConfirmTransaction) _then) =
      __$MultisigConfirmTransactionCopyWithImpl;
  @override
  @useResult
  $Res call({PublicKey custodian, String transactionId});

  @override
  $PublicKeyCopyWith<$Res> get custodian;
}

/// @nodoc
class __$MultisigConfirmTransactionCopyWithImpl<$Res>
    implements _$MultisigConfirmTransactionCopyWith<$Res> {
  __$MultisigConfirmTransactionCopyWithImpl(this._self, this._then);

  final _MultisigConfirmTransaction _self;
  final $Res Function(_MultisigConfirmTransaction) _then;

  /// Create a copy of MultisigConfirmTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? custodian = null,
    Object? transactionId = null,
  }) {
    return _then(_MultisigConfirmTransaction(
      custodian: null == custodian
          ? _self.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      transactionId: null == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of MultisigConfirmTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get custodian {
    return $PublicKeyCopyWith<$Res>(_self.custodian, (value) {
      return _then(_self.copyWith(custodian: value));
    });
  }
}

// dart format on
