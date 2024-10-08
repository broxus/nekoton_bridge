// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionsList _$TransactionsListFromJson(Map<String, dynamic> json) {
  return _TransactionsList.fromJson(json);
}

/// @nodoc
mixin _$TransactionsList {
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  TransactionId? get continuation => throw _privateConstructorUsedError;
  TransactionsBatchInfo? get info => throw _privateConstructorUsedError;

  /// Serializes this TransactionsList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionsListCopyWith<TransactionsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsListCopyWith<$Res> {
  factory $TransactionsListCopyWith(
          TransactionsList value, $Res Function(TransactionsList) then) =
      _$TransactionsListCopyWithImpl<$Res, TransactionsList>;
  @useResult
  $Res call(
      {List<Transaction> transactions,
      @JsonKey(includeIfNull: false) TransactionId? continuation,
      TransactionsBatchInfo? info});

  $TransactionIdCopyWith<$Res>? get continuation;
  $TransactionsBatchInfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$TransactionsListCopyWithImpl<$Res, $Val extends TransactionsList>
    implements $TransactionsListCopyWith<$Res> {
  _$TransactionsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? continuation = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      continuation: freezed == continuation
          ? _value.continuation
          : continuation // ignore: cast_nullable_to_non_nullable
              as TransactionId?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TransactionsBatchInfo?,
    ) as $Val);
  }

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionIdCopyWith<$Res>? get continuation {
    if (_value.continuation == null) {
      return null;
    }

    return $TransactionIdCopyWith<$Res>(_value.continuation!, (value) {
      return _then(_value.copyWith(continuation: value) as $Val);
    });
  }

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionsBatchInfoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $TransactionsBatchInfoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionsListImplCopyWith<$Res>
    implements $TransactionsListCopyWith<$Res> {
  factory _$$TransactionsListImplCopyWith(_$TransactionsListImpl value,
          $Res Function(_$TransactionsListImpl) then) =
      __$$TransactionsListImplCopyWithImpl<$Res>;
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
class __$$TransactionsListImplCopyWithImpl<$Res>
    extends _$TransactionsListCopyWithImpl<$Res, _$TransactionsListImpl>
    implements _$$TransactionsListImplCopyWith<$Res> {
  __$$TransactionsListImplCopyWithImpl(_$TransactionsListImpl _value,
      $Res Function(_$TransactionsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? continuation = freezed,
    Object? info = freezed,
  }) {
    return _then(_$TransactionsListImpl(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      continuation: freezed == continuation
          ? _value.continuation
          : continuation // ignore: cast_nullable_to_non_nullable
              as TransactionId?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TransactionsBatchInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionsListImpl implements _TransactionsList {
  const _$TransactionsListImpl(
      {required final List<Transaction> transactions,
      @JsonKey(includeIfNull: false) this.continuation,
      this.info})
      : _transactions = transactions;

  factory _$TransactionsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionsListImplFromJson(json);

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

  @override
  String toString() {
    return 'TransactionsList(transactions: $transactions, continuation: $continuation, info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsListImpl &&
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

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsListImplCopyWith<_$TransactionsListImpl> get copyWith =>
      __$$TransactionsListImplCopyWithImpl<_$TransactionsListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionsListImplToJson(
      this,
    );
  }
}

abstract class _TransactionsList implements TransactionsList {
  const factory _TransactionsList(
      {required final List<Transaction> transactions,
      @JsonKey(includeIfNull: false) final TransactionId? continuation,
      final TransactionsBatchInfo? info}) = _$TransactionsListImpl;

  factory _TransactionsList.fromJson(Map<String, dynamic> json) =
      _$TransactionsListImpl.fromJson;

  @override
  List<Transaction> get transactions;
  @override
  @JsonKey(includeIfNull: false)
  TransactionId? get continuation;
  @override
  TransactionsBatchInfo? get info;

  /// Create a copy of TransactionsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionsListImplCopyWith<_$TransactionsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
