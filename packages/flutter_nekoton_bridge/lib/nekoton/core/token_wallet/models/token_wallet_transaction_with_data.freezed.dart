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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenWalletTransactionWithData _$TokenWalletTransactionWithDataFromJson(
    Map<String, dynamic> json) {
  return _TokenWalletTransactionWithData.fromJson(json);
}

/// @nodoc
mixin _$TokenWalletTransactionWithData {
  Transaction get transaction => throw _privateConstructorUsedError;
  TokenWalletTransaction? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }

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
abstract class _$$_TokenWalletTransactionWithDataCopyWith<$Res>
    implements $TokenWalletTransactionWithDataCopyWith<$Res> {
  factory _$$_TokenWalletTransactionWithDataCopyWith(
          _$_TokenWalletTransactionWithData value,
          $Res Function(_$_TokenWalletTransactionWithData) then) =
      __$$_TokenWalletTransactionWithDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Transaction transaction, TokenWalletTransaction? data});

  @override
  $TransactionCopyWith<$Res> get transaction;
  @override
  $TokenWalletTransactionCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_TokenWalletTransactionWithDataCopyWithImpl<$Res>
    extends _$TokenWalletTransactionWithDataCopyWithImpl<$Res,
        _$_TokenWalletTransactionWithData>
    implements _$$_TokenWalletTransactionWithDataCopyWith<$Res> {
  __$$_TokenWalletTransactionWithDataCopyWithImpl(
      _$_TokenWalletTransactionWithData _value,
      $Res Function(_$_TokenWalletTransactionWithData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? data = freezed,
  }) {
    return _then(_$_TokenWalletTransactionWithData(
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
class _$_TokenWalletTransactionWithData
    extends _TokenWalletTransactionWithData {
  const _$_TokenWalletTransactionWithData(
      {required this.transaction, this.data})
      : super._();

  factory _$_TokenWalletTransactionWithData.fromJson(
          Map<String, dynamic> json) =>
      _$$_TokenWalletTransactionWithDataFromJson(json);

  @override
  final Transaction transaction;
  @override
  final TokenWalletTransaction? data;

  @override
  String toString() {
    return 'TokenWalletTransactionWithData(transaction: $transaction, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenWalletTransactionWithData &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transaction, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenWalletTransactionWithDataCopyWith<_$_TokenWalletTransactionWithData>
      get copyWith => __$$_TokenWalletTransactionWithDataCopyWithImpl<
          _$_TokenWalletTransactionWithData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenWalletTransactionWithDataToJson(
      this,
    );
  }
}

abstract class _TokenWalletTransactionWithData
    extends TokenWalletTransactionWithData {
  const factory _TokenWalletTransactionWithData(
      {required final Transaction transaction,
      final TokenWalletTransaction? data}) = _$_TokenWalletTransactionWithData;
  const _TokenWalletTransactionWithData._() : super._();

  factory _TokenWalletTransactionWithData.fromJson(Map<String, dynamic> json) =
      _$_TokenWalletTransactionWithData.fromJson;

  @override
  Transaction get transaction;
  @override
  TokenWalletTransaction? get data;
  @override
  @JsonKey(ignore: true)
  _$$_TokenWalletTransactionWithDataCopyWith<_$_TokenWalletTransactionWithData>
      get copyWith => throw _privateConstructorUsedError;
}
