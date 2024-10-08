// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_wallet_transaction_with_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenWalletTransactionWithData _$TokenWalletTransactionWithDataFromJson(
    Map<String, dynamic> json) {
  return _TokenWalletTransactionWithData.fromJson(json);
}

/// @nodoc
mixin _$TokenWalletTransactionWithData {
  Transaction get transaction => throw _privateConstructorUsedError;
  TokenWalletTransaction? get data => throw _privateConstructorUsedError;

  /// Serializes this TokenWalletTransactionWithData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenWalletTransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenWalletTransactionWithDataCopyWith<TokenWalletTransactionWithData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenWalletTransactionWithDataCopyWith<$Res> {
  factory $TokenWalletTransactionWithDataCopyWith(
          TokenWalletTransactionWithData value,
          $Res Function(TokenWalletTransactionWithData) then) =
      _$TokenWalletTransactionWithDataCopyWithImpl<$Res,
          TokenWalletTransactionWithData>;
  @useResult
  $Res call({Transaction transaction, TokenWalletTransaction? data});

  $TransactionCopyWith<$Res> get transaction;
  $TokenWalletTransactionCopyWith<$Res>? get data;
}

/// @nodoc
class _$TokenWalletTransactionWithDataCopyWithImpl<$Res,
        $Val extends TokenWalletTransactionWithData>
    implements $TokenWalletTransactionWithDataCopyWith<$Res> {
  _$TokenWalletTransactionWithDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenWalletTransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenWalletTransaction?,
    ) as $Val);
  }

  /// Create a copy of TokenWalletTransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }

  /// Create a copy of TokenWalletTransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenWalletTransactionCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TokenWalletTransactionCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokenWalletTransactionWithDataImplCopyWith<$Res>
    implements $TokenWalletTransactionWithDataCopyWith<$Res> {
  factory _$$TokenWalletTransactionWithDataImplCopyWith(
          _$TokenWalletTransactionWithDataImpl value,
          $Res Function(_$TokenWalletTransactionWithDataImpl) then) =
      __$$TokenWalletTransactionWithDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Transaction transaction, TokenWalletTransaction? data});

  @override
  $TransactionCopyWith<$Res> get transaction;
  @override
  $TokenWalletTransactionCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TokenWalletTransactionWithDataImplCopyWithImpl<$Res>
    extends _$TokenWalletTransactionWithDataCopyWithImpl<$Res,
        _$TokenWalletTransactionWithDataImpl>
    implements _$$TokenWalletTransactionWithDataImplCopyWith<$Res> {
  __$$TokenWalletTransactionWithDataImplCopyWithImpl(
      _$TokenWalletTransactionWithDataImpl _value,
      $Res Function(_$TokenWalletTransactionWithDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenWalletTransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? data = freezed,
  }) {
    return _then(_$TokenWalletTransactionWithDataImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenWalletTransaction?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenWalletTransactionWithDataImpl
    extends _TokenWalletTransactionWithData {
  const _$TokenWalletTransactionWithDataImpl(
      {required this.transaction, this.data})
      : super._();

  factory _$TokenWalletTransactionWithDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TokenWalletTransactionWithDataImplFromJson(json);

  @override
  final Transaction transaction;
  @override
  final TokenWalletTransaction? data;

  @override
  String toString() {
    return 'TokenWalletTransactionWithData(transaction: $transaction, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenWalletTransactionWithDataImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transaction, data);

  /// Create a copy of TokenWalletTransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenWalletTransactionWithDataImplCopyWith<
          _$TokenWalletTransactionWithDataImpl>
      get copyWith => __$$TokenWalletTransactionWithDataImplCopyWithImpl<
          _$TokenWalletTransactionWithDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenWalletTransactionWithDataImplToJson(
      this,
    );
  }
}

abstract class _TokenWalletTransactionWithData
    extends TokenWalletTransactionWithData {
  const factory _TokenWalletTransactionWithData(
          {required final Transaction transaction,
          final TokenWalletTransaction? data}) =
      _$TokenWalletTransactionWithDataImpl;
  const _TokenWalletTransactionWithData._() : super._();

  factory _TokenWalletTransactionWithData.fromJson(Map<String, dynamic> json) =
      _$TokenWalletTransactionWithDataImpl.fromJson;

  @override
  Transaction get transaction;
  @override
  TokenWalletTransaction? get data;

  /// Create a copy of TokenWalletTransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenWalletTransactionWithDataImplCopyWith<
          _$TokenWalletTransactionWithDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
