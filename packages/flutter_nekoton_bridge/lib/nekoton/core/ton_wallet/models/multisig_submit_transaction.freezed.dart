// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multisig_submit_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MultisigSubmitTransaction {
  PublicKey get custodian;
  Address get dest;
  @amountJsonConverter
  BigInt get value;
  bool get bounce;
  bool get allBalance;
  String get payload;
  String get transId;

  /// Create a copy of MultisigSubmitTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultisigSubmitTransactionCopyWith<MultisigSubmitTransaction> get copyWith =>
      _$MultisigSubmitTransactionCopyWithImpl<MultisigSubmitTransaction>(
          this as MultisigSubmitTransaction, _$identity);

  /// Serializes this MultisigSubmitTransaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultisigSubmitTransaction &&
            (identical(other.custodian, custodian) ||
                other.custodian == custodian) &&
            (identical(other.dest, dest) || other.dest == dest) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.bounce, bounce) || other.bounce == bounce) &&
            (identical(other.allBalance, allBalance) ||
                other.allBalance == allBalance) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.transId, transId) || other.transId == transId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, custodian, dest, value, bounce,
      allBalance, payload, transId);

  @override
  String toString() {
    return 'MultisigSubmitTransaction(custodian: $custodian, dest: $dest, value: $value, bounce: $bounce, allBalance: $allBalance, payload: $payload, transId: $transId)';
  }
}

/// @nodoc
abstract mixin class $MultisigSubmitTransactionCopyWith<$Res> {
  factory $MultisigSubmitTransactionCopyWith(MultisigSubmitTransaction value,
          $Res Function(MultisigSubmitTransaction) _then) =
      _$MultisigSubmitTransactionCopyWithImpl;
  @useResult
  $Res call(
      {PublicKey custodian,
      Address dest,
      @amountJsonConverter BigInt value,
      bool bounce,
      bool allBalance,
      String payload,
      String transId});

  $PublicKeyCopyWith<$Res> get custodian;
  $AddressCopyWith<$Res> get dest;
}

/// @nodoc
class _$MultisigSubmitTransactionCopyWithImpl<$Res>
    implements $MultisigSubmitTransactionCopyWith<$Res> {
  _$MultisigSubmitTransactionCopyWithImpl(this._self, this._then);

  final MultisigSubmitTransaction _self;
  final $Res Function(MultisigSubmitTransaction) _then;

  /// Create a copy of MultisigSubmitTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custodian = null,
    Object? dest = null,
    Object? value = null,
    Object? bounce = null,
    Object? allBalance = null,
    Object? payload = null,
    Object? transId = null,
  }) {
    return _then(_self.copyWith(
      custodian: null == custodian
          ? _self.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as PublicKey,
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
      allBalance: null == allBalance
          ? _self.allBalance
          : allBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: null == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      transId: null == transId
          ? _self.transId
          : transId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of MultisigSubmitTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get custodian {
    return $PublicKeyCopyWith<$Res>(_self.custodian, (value) {
      return _then(_self.copyWith(custodian: value));
    });
  }

  /// Create a copy of MultisigSubmitTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get dest {
    return $AddressCopyWith<$Res>(_self.dest, (value) {
      return _then(_self.copyWith(dest: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MultisigSubmitTransaction].
extension MultisigSubmitTransactionPatterns on MultisigSubmitTransaction {
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
    TResult Function(_MultisigSubmitTransaction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MultisigSubmitTransaction() when $default != null:
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
    TResult Function(_MultisigSubmitTransaction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MultisigSubmitTransaction():
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
    TResult? Function(_MultisigSubmitTransaction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MultisigSubmitTransaction() when $default != null:
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
            PublicKey custodian,
            Address dest,
            @amountJsonConverter BigInt value,
            bool bounce,
            bool allBalance,
            String payload,
            String transId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MultisigSubmitTransaction() when $default != null:
        return $default(_that.custodian, _that.dest, _that.value, _that.bounce,
            _that.allBalance, _that.payload, _that.transId);
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
            PublicKey custodian,
            Address dest,
            @amountJsonConverter BigInt value,
            bool bounce,
            bool allBalance,
            String payload,
            String transId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MultisigSubmitTransaction():
        return $default(_that.custodian, _that.dest, _that.value, _that.bounce,
            _that.allBalance, _that.payload, _that.transId);
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
            PublicKey custodian,
            Address dest,
            @amountJsonConverter BigInt value,
            bool bounce,
            bool allBalance,
            String payload,
            String transId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MultisigSubmitTransaction() when $default != null:
        return $default(_that.custodian, _that.dest, _that.value, _that.bounce,
            _that.allBalance, _that.payload, _that.transId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MultisigSubmitTransaction implements MultisigSubmitTransaction {
  const _MultisigSubmitTransaction(
      {required this.custodian,
      required this.dest,
      @amountJsonConverter required this.value,
      required this.bounce,
      required this.allBalance,
      required this.payload,
      required this.transId});
  factory _MultisigSubmitTransaction.fromJson(Map<String, dynamic> json) =>
      _$MultisigSubmitTransactionFromJson(json);

  @override
  final PublicKey custodian;
  @override
  final Address dest;
  @override
  @amountJsonConverter
  final BigInt value;
  @override
  final bool bounce;
  @override
  final bool allBalance;
  @override
  final String payload;
  @override
  final String transId;

  /// Create a copy of MultisigSubmitTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MultisigSubmitTransactionCopyWith<_MultisigSubmitTransaction>
      get copyWith =>
          __$MultisigSubmitTransactionCopyWithImpl<_MultisigSubmitTransaction>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultisigSubmitTransactionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultisigSubmitTransaction &&
            (identical(other.custodian, custodian) ||
                other.custodian == custodian) &&
            (identical(other.dest, dest) || other.dest == dest) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.bounce, bounce) || other.bounce == bounce) &&
            (identical(other.allBalance, allBalance) ||
                other.allBalance == allBalance) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.transId, transId) || other.transId == transId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, custodian, dest, value, bounce,
      allBalance, payload, transId);

  @override
  String toString() {
    return 'MultisigSubmitTransaction(custodian: $custodian, dest: $dest, value: $value, bounce: $bounce, allBalance: $allBalance, payload: $payload, transId: $transId)';
  }
}

/// @nodoc
abstract mixin class _$MultisigSubmitTransactionCopyWith<$Res>
    implements $MultisigSubmitTransactionCopyWith<$Res> {
  factory _$MultisigSubmitTransactionCopyWith(_MultisigSubmitTransaction value,
          $Res Function(_MultisigSubmitTransaction) _then) =
      __$MultisigSubmitTransactionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {PublicKey custodian,
      Address dest,
      @amountJsonConverter BigInt value,
      bool bounce,
      bool allBalance,
      String payload,
      String transId});

  @override
  $PublicKeyCopyWith<$Res> get custodian;
  @override
  $AddressCopyWith<$Res> get dest;
}

/// @nodoc
class __$MultisigSubmitTransactionCopyWithImpl<$Res>
    implements _$MultisigSubmitTransactionCopyWith<$Res> {
  __$MultisigSubmitTransactionCopyWithImpl(this._self, this._then);

  final _MultisigSubmitTransaction _self;
  final $Res Function(_MultisigSubmitTransaction) _then;

  /// Create a copy of MultisigSubmitTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? custodian = null,
    Object? dest = null,
    Object? value = null,
    Object? bounce = null,
    Object? allBalance = null,
    Object? payload = null,
    Object? transId = null,
  }) {
    return _then(_MultisigSubmitTransaction(
      custodian: null == custodian
          ? _self.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as PublicKey,
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
      allBalance: null == allBalance
          ? _self.allBalance
          : allBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: null == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      transId: null == transId
          ? _self.transId
          : transId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of MultisigSubmitTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get custodian {
    return $PublicKeyCopyWith<$Res>(_self.custodian, (value) {
      return _then(_self.copyWith(custodian: value));
    });
  }

  /// Create a copy of MultisigSubmitTransaction
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
