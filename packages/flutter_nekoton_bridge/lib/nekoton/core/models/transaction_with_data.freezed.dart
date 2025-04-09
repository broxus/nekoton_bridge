// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_with_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionWithData<T> {
  Transaction get transaction;
  T? get data;

  /// Create a copy of TransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionWithDataCopyWith<T, TransactionWithData<T>> get copyWith =>
      _$TransactionWithDataCopyWithImpl<T, TransactionWithData<T>>(
          this as TransactionWithData<T>, _$identity);

  /// Serializes this TransactionWithData to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionWithData<T> &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, transaction, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'TransactionWithData<$T>(transaction: $transaction, data: $data)';
  }
}

/// @nodoc
abstract mixin class $TransactionWithDataCopyWith<T, $Res> {
  factory $TransactionWithDataCopyWith(TransactionWithData<T> value,
          $Res Function(TransactionWithData<T>) _then) =
      _$TransactionWithDataCopyWithImpl;
  @useResult
  $Res call({Transaction transaction, T? data});

  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class _$TransactionWithDataCopyWithImpl<T, $Res>
    implements $TransactionWithDataCopyWith<T, $Res> {
  _$TransactionWithDataCopyWithImpl(this._self, this._then);

  final TransactionWithData<T> _self;
  final $Res Function(TransactionWithData<T>) _then;

  /// Create a copy of TransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      transaction: null == transaction
          ? _self.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }

  /// Create a copy of TransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_self.transaction, (value) {
      return _then(_self.copyWith(transaction: value));
    });
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _TransactionWithData<T> extends TransactionWithData<T> {
  const _TransactionWithData({required this.transaction, this.data})
      : super._();
  factory _TransactionWithData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$TransactionWithDataFromJson(json, fromJsonT);

  @override
  final Transaction transaction;
  @override
  final T? data;

  /// Create a copy of TransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TransactionWithDataCopyWith<T, _TransactionWithData<T>> get copyWith =>
      __$TransactionWithDataCopyWithImpl<T, _TransactionWithData<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$TransactionWithDataToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionWithData<T> &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, transaction, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'TransactionWithData<$T>(transaction: $transaction, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$TransactionWithDataCopyWith<T, $Res>
    implements $TransactionWithDataCopyWith<T, $Res> {
  factory _$TransactionWithDataCopyWith(_TransactionWithData<T> value,
          $Res Function(_TransactionWithData<T>) _then) =
      __$TransactionWithDataCopyWithImpl;
  @override
  @useResult
  $Res call({Transaction transaction, T? data});

  @override
  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class __$TransactionWithDataCopyWithImpl<T, $Res>
    implements _$TransactionWithDataCopyWith<T, $Res> {
  __$TransactionWithDataCopyWithImpl(this._self, this._then);

  final _TransactionWithData<T> _self;
  final $Res Function(_TransactionWithData<T>) _then;

  /// Create a copy of TransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? transaction = null,
    Object? data = freezed,
  }) {
    return _then(_TransactionWithData<T>(
      transaction: null == transaction
          ? _self.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }

  /// Create a copy of TransactionWithData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_self.transaction, (value) {
      return _then(_self.copyWith(transaction: value));
    });
  }
}

// dart format on
