// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionsList {
  List<Transaction> get transactions;
  @JsonKey(includeIfNull: false)
  TransactionId? get continuation;
  TransactionsBatchInfo? get info;

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionsListCopyWith<TransactionsList> get copyWith =>
      _$TransactionsListCopyWithImpl<TransactionsList>(
          this as TransactionsList, _$identity);

  /// Serializes this TransactionsList to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionsList &&
            const DeepCollectionEquality()
                .equals(other.transactions, transactions) &&
            (identical(other.continuation, continuation) ||
                other.continuation == continuation) &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(transactions), continuation, info);

  @override
  String toString() {
    return 'TransactionsList(transactions: $transactions, continuation: $continuation, info: $info)';
  }
}

/// @nodoc
abstract mixin class $TransactionsListCopyWith<$Res> {
  factory $TransactionsListCopyWith(
          TransactionsList value, $Res Function(TransactionsList) _then) =
      _$TransactionsListCopyWithImpl;
  @useResult
  $Res call(
      {List<Transaction> transactions,
      @JsonKey(includeIfNull: false) TransactionId? continuation,
      TransactionsBatchInfo? info});

  $TransactionIdCopyWith<$Res>? get continuation;
  $TransactionsBatchInfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$TransactionsListCopyWithImpl<$Res>
    implements $TransactionsListCopyWith<$Res> {
  _$TransactionsListCopyWithImpl(this._self, this._then);

  final TransactionsList _self;
  final $Res Function(TransactionsList) _then;

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? continuation = freezed,
    Object? info = freezed,
  }) {
    return _then(_self.copyWith(
      transactions: null == transactions
          ? _self.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      continuation: freezed == continuation
          ? _self.continuation
          : continuation // ignore: cast_nullable_to_non_nullable
              as TransactionId?,
      info: freezed == info
          ? _self.info
          : info // ignore: cast_nullable_to_non_nullable
              as TransactionsBatchInfo?,
    ));
  }

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionIdCopyWith<$Res>? get continuation {
    if (_self.continuation == null) {
      return null;
    }

    return $TransactionIdCopyWith<$Res>(_self.continuation!, (value) {
      return _then(_self.copyWith(continuation: value));
    });
  }

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionsBatchInfoCopyWith<$Res>? get info {
    if (_self.info == null) {
      return null;
    }

    return $TransactionsBatchInfoCopyWith<$Res>(_self.info!, (value) {
      return _then(_self.copyWith(info: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _TransactionsList implements TransactionsList {
  const _TransactionsList(
      {required final List<Transaction> transactions,
      @JsonKey(includeIfNull: false) this.continuation,
      this.info})
      : _transactions = transactions;
  factory _TransactionsList.fromJson(Map<String, dynamic> json) =>
      _$TransactionsListFromJson(json);

  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  @JsonKey(includeIfNull: false)
  final TransactionId? continuation;
  @override
  final TransactionsBatchInfo? info;

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TransactionsListCopyWith<_TransactionsList> get copyWith =>
      __$TransactionsListCopyWithImpl<_TransactionsList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionsListToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionsList &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.continuation, continuation) ||
                other.continuation == continuation) &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_transactions), continuation, info);

  @override
  String toString() {
    return 'TransactionsList(transactions: $transactions, continuation: $continuation, info: $info)';
  }
}

/// @nodoc
abstract mixin class _$TransactionsListCopyWith<$Res>
    implements $TransactionsListCopyWith<$Res> {
  factory _$TransactionsListCopyWith(
          _TransactionsList value, $Res Function(_TransactionsList) _then) =
      __$TransactionsListCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Transaction> transactions,
      @JsonKey(includeIfNull: false) TransactionId? continuation,
      TransactionsBatchInfo? info});

  @override
  $TransactionIdCopyWith<$Res>? get continuation;
  @override
  $TransactionsBatchInfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$TransactionsListCopyWithImpl<$Res>
    implements _$TransactionsListCopyWith<$Res> {
  __$TransactionsListCopyWithImpl(this._self, this._then);

  final _TransactionsList _self;
  final $Res Function(_TransactionsList) _then;

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? transactions = null,
    Object? continuation = freezed,
    Object? info = freezed,
  }) {
    return _then(_TransactionsList(
      transactions: null == transactions
          ? _self._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      continuation: freezed == continuation
          ? _self.continuation
          : continuation // ignore: cast_nullable_to_non_nullable
              as TransactionId?,
      info: freezed == info
          ? _self.info
          : info // ignore: cast_nullable_to_non_nullable
              as TransactionsBatchInfo?,
    ));
  }

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionIdCopyWith<$Res>? get continuation {
    if (_self.continuation == null) {
      return null;
    }

    return $TransactionIdCopyWith<$Res>(_self.continuation!, (value) {
      return _then(_self.copyWith(continuation: value));
    });
  }

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionsBatchInfoCopyWith<$Res>? get info {
    if (_self.info == null) {
      return null;
    }

    return $TransactionsBatchInfoCopyWith<$Res>(_self.info!, (value) {
      return _then(_self.copyWith(info: value));
    });
  }
}

// dart format on
