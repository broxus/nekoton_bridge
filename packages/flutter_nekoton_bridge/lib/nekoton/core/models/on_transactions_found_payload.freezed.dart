// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_transactions_found_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnTransactionsFoundPayload _$OnTransactionsFoundPayloadFromJson(
    Map<String, dynamic> json) {
  return _OnTransactionsFoundPayload.fromJson(json);
}

/// @nodoc
mixin _$OnTransactionsFoundPayload {
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  TransactionsBatchInfo get batchInfo => throw _privateConstructorUsedError;

  /// Serializes this OnTransactionsFoundPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnTransactionsFoundPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnTransactionsFoundPayloadCopyWith<OnTransactionsFoundPayload>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnTransactionsFoundPayloadCopyWith<$Res> {
  factory $OnTransactionsFoundPayloadCopyWith(OnTransactionsFoundPayload value,
          $Res Function(OnTransactionsFoundPayload) then) =
      _$OnTransactionsFoundPayloadCopyWithImpl<$Res,
          OnTransactionsFoundPayload>;
  @useResult
  $Res call({List<Transaction> transactions, TransactionsBatchInfo batchInfo});

  $TransactionsBatchInfoCopyWith<$Res> get batchInfo;
}

/// @nodoc
class _$OnTransactionsFoundPayloadCopyWithImpl<$Res,
        $Val extends OnTransactionsFoundPayload>
    implements $OnTransactionsFoundPayloadCopyWith<$Res> {
  _$OnTransactionsFoundPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnTransactionsFoundPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? batchInfo = null,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      batchInfo: null == batchInfo
          ? _value.batchInfo
          : batchInfo // ignore: cast_nullable_to_non_nullable
              as TransactionsBatchInfo,
    ) as $Val);
  }

  /// Create a copy of OnTransactionsFoundPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionsBatchInfoCopyWith<$Res> get batchInfo {
    return $TransactionsBatchInfoCopyWith<$Res>(_value.batchInfo, (value) {
      return _then(_value.copyWith(batchInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OnTransactionsFoundPayloadImplCopyWith<$Res>
    implements $OnTransactionsFoundPayloadCopyWith<$Res> {
  factory _$$OnTransactionsFoundPayloadImplCopyWith(
          _$OnTransactionsFoundPayloadImpl value,
          $Res Function(_$OnTransactionsFoundPayloadImpl) then) =
      __$$OnTransactionsFoundPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Transaction> transactions, TransactionsBatchInfo batchInfo});

  @override
  $TransactionsBatchInfoCopyWith<$Res> get batchInfo;
}

/// @nodoc
class __$$OnTransactionsFoundPayloadImplCopyWithImpl<$Res>
    extends _$OnTransactionsFoundPayloadCopyWithImpl<$Res,
        _$OnTransactionsFoundPayloadImpl>
    implements _$$OnTransactionsFoundPayloadImplCopyWith<$Res> {
  __$$OnTransactionsFoundPayloadImplCopyWithImpl(
      _$OnTransactionsFoundPayloadImpl _value,
      $Res Function(_$OnTransactionsFoundPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnTransactionsFoundPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? batchInfo = null,
  }) {
    return _then(_$OnTransactionsFoundPayloadImpl(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      batchInfo: null == batchInfo
          ? _value.batchInfo
          : batchInfo // ignore: cast_nullable_to_non_nullable
              as TransactionsBatchInfo,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$OnTransactionsFoundPayloadImpl implements _OnTransactionsFoundPayload {
  const _$OnTransactionsFoundPayloadImpl(
      {required final List<Transaction> transactions, required this.batchInfo})
      : _transactions = transactions;

  factory _$OnTransactionsFoundPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnTransactionsFoundPayloadImplFromJson(json);

  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final TransactionsBatchInfo batchInfo;

  @override
  String toString() {
    return 'OnTransactionsFoundPayload(transactions: $transactions, batchInfo: $batchInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTransactionsFoundPayloadImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.batchInfo, batchInfo) ||
                other.batchInfo == batchInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_transactions), batchInfo);

  /// Create a copy of OnTransactionsFoundPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTransactionsFoundPayloadImplCopyWith<_$OnTransactionsFoundPayloadImpl>
      get copyWith => __$$OnTransactionsFoundPayloadImplCopyWithImpl<
          _$OnTransactionsFoundPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnTransactionsFoundPayloadImplToJson(
      this,
    );
  }
}

abstract class _OnTransactionsFoundPayload
    implements OnTransactionsFoundPayload {
  const factory _OnTransactionsFoundPayload(
          {required final List<Transaction> transactions,
          required final TransactionsBatchInfo batchInfo}) =
      _$OnTransactionsFoundPayloadImpl;

  factory _OnTransactionsFoundPayload.fromJson(Map<String, dynamic> json) =
      _$OnTransactionsFoundPayloadImpl.fromJson;

  @override
  List<Transaction> get transactions;
  @override
  TransactionsBatchInfo get batchInfo;

  /// Create a copy of OnTransactionsFoundPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnTransactionsFoundPayloadImplCopyWith<_$OnTransactionsFoundPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}
