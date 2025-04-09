// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'raw_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RawTransaction {
  String get hash;
  Transaction get data;

  /// Create a copy of RawTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RawTransactionCopyWith<RawTransaction> get copyWith =>
      _$RawTransactionCopyWithImpl<RawTransaction>(
          this as RawTransaction, _$identity);

  /// Serializes this RawTransaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RawTransaction &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hash, data);

  @override
  String toString() {
    return 'RawTransaction(hash: $hash, data: $data)';
  }
}

/// @nodoc
abstract mixin class $RawTransactionCopyWith<$Res> {
  factory $RawTransactionCopyWith(
          RawTransaction value, $Res Function(RawTransaction) _then) =
      _$RawTransactionCopyWithImpl;
  @useResult
  $Res call({String hash, Transaction data});

  $TransactionCopyWith<$Res> get data;
}

/// @nodoc
class _$RawTransactionCopyWithImpl<$Res>
    implements $RawTransactionCopyWith<$Res> {
  _$RawTransactionCopyWithImpl(this._self, this._then);

  final RawTransaction _self;
  final $Res Function(RawTransaction) _then;

  /// Create a copy of RawTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      hash: null == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }

  /// Create a copy of RawTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get data {
    return $TransactionCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _RawTransaction implements RawTransaction {
  const _RawTransaction({required this.hash, required this.data});
  factory _RawTransaction.fromJson(Map<String, dynamic> json) =>
      _$RawTransactionFromJson(json);

  @override
  final String hash;
  @override
  final Transaction data;

  /// Create a copy of RawTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RawTransactionCopyWith<_RawTransaction> get copyWith =>
      __$RawTransactionCopyWithImpl<_RawTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RawTransactionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RawTransaction &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hash, data);

  @override
  String toString() {
    return 'RawTransaction(hash: $hash, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$RawTransactionCopyWith<$Res>
    implements $RawTransactionCopyWith<$Res> {
  factory _$RawTransactionCopyWith(
          _RawTransaction value, $Res Function(_RawTransaction) _then) =
      __$RawTransactionCopyWithImpl;
  @override
  @useResult
  $Res call({String hash, Transaction data});

  @override
  $TransactionCopyWith<$Res> get data;
}

/// @nodoc
class __$RawTransactionCopyWithImpl<$Res>
    implements _$RawTransactionCopyWith<$Res> {
  __$RawTransactionCopyWithImpl(this._self, this._then);

  final _RawTransaction _self;
  final $Res Function(_RawTransaction) _then;

  /// Create a copy of RawTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hash = null,
    Object? data = null,
  }) {
    return _then(_RawTransaction(
      hash: null == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }

  /// Create a copy of RawTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get data {
    return $TransactionCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
