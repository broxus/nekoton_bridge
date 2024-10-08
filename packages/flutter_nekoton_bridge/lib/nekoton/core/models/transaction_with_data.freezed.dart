// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_with_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionWithData<T> {
  Transaction get transaction => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;

  /// Create a copy of TransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionWithDataCopyWith<T, TransactionWithData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionWithDataCopyWith<T, $Res> {
  factory $TransactionWithDataCopyWith(TransactionWithData<T> value,
          $Res Function(TransactionWithData<T>) then) =
      _$TransactionWithDataCopyWithImpl<T, $Res, TransactionWithData<T>>;
  @useResult
  $Res call({Transaction transaction, T? data});

  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class _$TransactionWithDataCopyWithImpl<T, $Res,
        $Val extends TransactionWithData<T>>
    implements $TransactionWithDataCopyWith<T, $Res> {
  _$TransactionWithDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionWithData
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
              as T?,
    ) as $Val);
  }

  /// Create a copy of TransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionWithDataImplCopyWith<T, $Res>
    implements $TransactionWithDataCopyWith<T, $Res> {
  factory _$$TransactionWithDataImplCopyWith(_$TransactionWithDataImpl<T> value,
          $Res Function(_$TransactionWithDataImpl<T>) then) =
      __$$TransactionWithDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Transaction transaction, T? data});

  @override
  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$TransactionWithDataImplCopyWithImpl<T, $Res>
    extends _$TransactionWithDataCopyWithImpl<T, $Res,
        _$TransactionWithDataImpl<T>>
    implements _$$TransactionWithDataImplCopyWith<T, $Res> {
  __$$TransactionWithDataImplCopyWithImpl(_$TransactionWithDataImpl<T> _value,
      $Res Function(_$TransactionWithDataImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? data = freezed,
  }) {
    return _then(_$TransactionWithDataImpl<T>(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$TransactionWithDataImpl<T> extends _TransactionWithData<T> {
  const _$TransactionWithDataImpl({required this.transaction, this.data})
      : super._();

  @override
  final Transaction transaction;
  @override
  final T? data;

  @override
  String toString() {
    return 'TransactionWithData<$T>(transaction: $transaction, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionWithDataImpl<T> &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, transaction, const DeepCollectionEquality().hash(data));

  /// Create a copy of TransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionWithDataImplCopyWith<T, _$TransactionWithDataImpl<T>>
      get copyWith => __$$TransactionWithDataImplCopyWithImpl<T,
          _$TransactionWithDataImpl<T>>(this, _$identity);
}

abstract class _TransactionWithData<T> extends TransactionWithData<T> {
  const factory _TransactionWithData(
      {required final Transaction transaction,
      final T? data}) = _$TransactionWithDataImpl<T>;
  const _TransactionWithData._() : super._();

  @override
  Transaction get transaction;
  @override
  T? get data;

  /// Create a copy of TransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionWithDataImplCopyWith<T, _$TransactionWithDataImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
