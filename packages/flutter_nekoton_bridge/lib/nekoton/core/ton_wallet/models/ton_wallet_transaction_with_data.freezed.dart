// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ton_wallet_transaction_with_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TonWalletTransactionWithData _$TonWalletTransactionWithDataFromJson(
    Map<String, dynamic> json) {
  return _TonWalletTransactionWithData.fromJson(json);
}

/// @nodoc
mixin _$TonWalletTransactionWithData {
  Transaction get transaction => throw _privateConstructorUsedError;
  TransactionAdditionalInfo? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TonWalletTransactionWithDataCopyWith<TonWalletTransactionWithData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TonWalletTransactionWithDataCopyWith<$Res> {
  factory $TonWalletTransactionWithDataCopyWith(
          TonWalletTransactionWithData value,
          $Res Function(TonWalletTransactionWithData) then) =
      _$TonWalletTransactionWithDataCopyWithImpl<$Res,
          TonWalletTransactionWithData>;
  @useResult
  $Res call({Transaction transaction, TransactionAdditionalInfo? data});

  $TransactionCopyWith<$Res> get transaction;
  $TransactionAdditionalInfoCopyWith<$Res>? get data;
}

/// @nodoc
class _$TonWalletTransactionWithDataCopyWithImpl<$Res,
        $Val extends TonWalletTransactionWithData>
    implements $TonWalletTransactionWithDataCopyWith<$Res> {
  _$TonWalletTransactionWithDataCopyWithImpl(this._value, this._then);

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
              as TransactionAdditionalInfo?,
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
  $TransactionAdditionalInfoCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TransactionAdditionalInfoCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TonWalletTransactionWithDataCopyWith<$Res>
    implements $TonWalletTransactionWithDataCopyWith<$Res> {
  factory _$$_TonWalletTransactionWithDataCopyWith(
          _$_TonWalletTransactionWithData value,
          $Res Function(_$_TonWalletTransactionWithData) then) =
      __$$_TonWalletTransactionWithDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Transaction transaction, TransactionAdditionalInfo? data});

  @override
  $TransactionCopyWith<$Res> get transaction;
  @override
  $TransactionAdditionalInfoCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_TonWalletTransactionWithDataCopyWithImpl<$Res>
    extends _$TonWalletTransactionWithDataCopyWithImpl<$Res,
        _$_TonWalletTransactionWithData>
    implements _$$_TonWalletTransactionWithDataCopyWith<$Res> {
  __$$_TonWalletTransactionWithDataCopyWithImpl(
      _$_TonWalletTransactionWithData _value,
      $Res Function(_$_TonWalletTransactionWithData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? data = freezed,
  }) {
    return _then(_$_TonWalletTransactionWithData(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionAdditionalInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TonWalletTransactionWithData extends _TonWalletTransactionWithData {
  const _$_TonWalletTransactionWithData({required this.transaction, this.data})
      : super._();

  factory _$_TonWalletTransactionWithData.fromJson(Map<String, dynamic> json) =>
      _$$_TonWalletTransactionWithDataFromJson(json);

  @override
  final Transaction transaction;
  @override
  final TransactionAdditionalInfo? data;

  @override
  String toString() {
    return 'TonWalletTransactionWithData(transaction: $transaction, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TonWalletTransactionWithData &&
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
  _$$_TonWalletTransactionWithDataCopyWith<_$_TonWalletTransactionWithData>
      get copyWith => __$$_TonWalletTransactionWithDataCopyWithImpl<
          _$_TonWalletTransactionWithData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TonWalletTransactionWithDataToJson(
      this,
    );
  }
}

abstract class _TonWalletTransactionWithData
    extends TonWalletTransactionWithData {
  const factory _TonWalletTransactionWithData(
      {required final Transaction transaction,
      final TransactionAdditionalInfo? data}) = _$_TonWalletTransactionWithData;
  const _TonWalletTransactionWithData._() : super._();

  factory _TonWalletTransactionWithData.fromJson(Map<String, dynamic> json) =
      _$_TonWalletTransactionWithData.fromJson;

  @override
  Transaction get transaction;
  @override
  TransactionAdditionalInfo? get data;
  @override
  @JsonKey(ignore: true)
  _$$_TonWalletTransactionWithDataCopyWith<_$_TonWalletTransactionWithData>
      get copyWith => throw _privateConstructorUsedError;
}
