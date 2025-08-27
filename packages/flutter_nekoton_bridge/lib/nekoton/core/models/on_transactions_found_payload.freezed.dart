// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_transactions_found_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnTransactionsFoundPayload {
  List<Transaction> get transactions;
  TransactionsBatchInfo get batchInfo;

  /// Create a copy of OnTransactionsFoundPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnTransactionsFoundPayloadCopyWith<OnTransactionsFoundPayload>
      get copyWith =>
          _$OnTransactionsFoundPayloadCopyWithImpl<OnTransactionsFoundPayload>(
              this as OnTransactionsFoundPayload, _$identity);

  /// Serializes this OnTransactionsFoundPayload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnTransactionsFoundPayload &&
            const DeepCollectionEquality()
                .equals(other.transactions, transactions) &&
            (identical(other.batchInfo, batchInfo) ||
                other.batchInfo == batchInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(transactions), batchInfo);

  @override
  String toString() {
    return 'OnTransactionsFoundPayload(transactions: $transactions, batchInfo: $batchInfo)';
  }
}

/// @nodoc
abstract mixin class $OnTransactionsFoundPayloadCopyWith<$Res> {
  factory $OnTransactionsFoundPayloadCopyWith(OnTransactionsFoundPayload value,
          $Res Function(OnTransactionsFoundPayload) _then) =
      _$OnTransactionsFoundPayloadCopyWithImpl;
  @useResult
  $Res call({List<Transaction> transactions, TransactionsBatchInfo batchInfo});

  $TransactionsBatchInfoCopyWith<$Res> get batchInfo;
}

/// @nodoc
class _$OnTransactionsFoundPayloadCopyWithImpl<$Res>
    implements $OnTransactionsFoundPayloadCopyWith<$Res> {
  _$OnTransactionsFoundPayloadCopyWithImpl(this._self, this._then);

  final OnTransactionsFoundPayload _self;
  final $Res Function(OnTransactionsFoundPayload) _then;

  /// Create a copy of OnTransactionsFoundPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? batchInfo = null,
  }) {
    return _then(_self.copyWith(
      transactions: null == transactions
          ? _self.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      batchInfo: null == batchInfo
          ? _self.batchInfo
          : batchInfo // ignore: cast_nullable_to_non_nullable
              as TransactionsBatchInfo,
    ));
  }

  /// Create a copy of OnTransactionsFoundPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionsBatchInfoCopyWith<$Res> get batchInfo {
    return $TransactionsBatchInfoCopyWith<$Res>(_self.batchInfo, (value) {
      return _then(_self.copyWith(batchInfo: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OnTransactionsFoundPayload].
extension OnTransactionsFoundPayloadPatterns on OnTransactionsFoundPayload {
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
    TResult Function(_OnTransactionsFoundPayload value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OnTransactionsFoundPayload() when $default != null:
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
    TResult Function(_OnTransactionsFoundPayload value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OnTransactionsFoundPayload():
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
    TResult? Function(_OnTransactionsFoundPayload value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OnTransactionsFoundPayload() when $default != null:
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
            List<Transaction> transactions, TransactionsBatchInfo batchInfo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OnTransactionsFoundPayload() when $default != null:
        return $default(_that.transactions, _that.batchInfo);
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
            List<Transaction> transactions, TransactionsBatchInfo batchInfo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OnTransactionsFoundPayload():
        return $default(_that.transactions, _that.batchInfo);
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
            List<Transaction> transactions, TransactionsBatchInfo batchInfo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OnTransactionsFoundPayload() when $default != null:
        return $default(_that.transactions, _that.batchInfo);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _OnTransactionsFoundPayload implements OnTransactionsFoundPayload {
  const _OnTransactionsFoundPayload(
      {required final List<Transaction> transactions, required this.batchInfo})
      : _transactions = transactions;
  factory _OnTransactionsFoundPayload.fromJson(Map<String, dynamic> json) =>
      _$OnTransactionsFoundPayloadFromJson(json);

  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final TransactionsBatchInfo batchInfo;

  /// Create a copy of OnTransactionsFoundPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnTransactionsFoundPayloadCopyWith<_OnTransactionsFoundPayload>
      get copyWith => __$OnTransactionsFoundPayloadCopyWithImpl<
          _OnTransactionsFoundPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OnTransactionsFoundPayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnTransactionsFoundPayload &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.batchInfo, batchInfo) ||
                other.batchInfo == batchInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_transactions), batchInfo);

  @override
  String toString() {
    return 'OnTransactionsFoundPayload(transactions: $transactions, batchInfo: $batchInfo)';
  }
}

/// @nodoc
abstract mixin class _$OnTransactionsFoundPayloadCopyWith<$Res>
    implements $OnTransactionsFoundPayloadCopyWith<$Res> {
  factory _$OnTransactionsFoundPayloadCopyWith(
          _OnTransactionsFoundPayload value,
          $Res Function(_OnTransactionsFoundPayload) _then) =
      __$OnTransactionsFoundPayloadCopyWithImpl;
  @override
  @useResult
  $Res call({List<Transaction> transactions, TransactionsBatchInfo batchInfo});

  @override
  $TransactionsBatchInfoCopyWith<$Res> get batchInfo;
}

/// @nodoc
class __$OnTransactionsFoundPayloadCopyWithImpl<$Res>
    implements _$OnTransactionsFoundPayloadCopyWith<$Res> {
  __$OnTransactionsFoundPayloadCopyWithImpl(this._self, this._then);

  final _OnTransactionsFoundPayload _self;
  final $Res Function(_OnTransactionsFoundPayload) _then;

  /// Create a copy of OnTransactionsFoundPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? transactions = null,
    Object? batchInfo = null,
  }) {
    return _then(_OnTransactionsFoundPayload(
      transactions: null == transactions
          ? _self._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      batchInfo: null == batchInfo
          ? _self.batchInfo
          : batchInfo // ignore: cast_nullable_to_non_nullable
              as TransactionsBatchInfo,
    ));
  }

  /// Create a copy of OnTransactionsFoundPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionsBatchInfoCopyWith<$Res> get batchInfo {
    return $TransactionsBatchInfoCopyWith<$Res>(_self.batchInfo, (value) {
      return _then(_self.copyWith(batchInfo: value));
    });
  }
}

// dart format on
