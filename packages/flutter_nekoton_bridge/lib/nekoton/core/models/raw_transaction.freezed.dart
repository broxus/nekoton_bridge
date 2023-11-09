// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'raw_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RawTransaction _$RawTransactionFromJson(Map<String, dynamic> json) {
  return _RawTransaction.fromJson(json);
}

/// @nodoc
mixin _$RawTransaction {
  String get hash => throw _privateConstructorUsedError;
  Transaction get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RawTransactionCopyWith<RawTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawTransactionCopyWith<$Res> {
  factory $RawTransactionCopyWith(
          RawTransaction value, $Res Function(RawTransaction) then) =
      _$RawTransactionCopyWithImpl<$Res, RawTransaction>;
  @useResult
  $Res call({String hash, Transaction data});

  $TransactionCopyWith<$Res> get data;
}

/// @nodoc
class _$RawTransactionCopyWithImpl<$Res, $Val extends RawTransaction>
    implements $RawTransactionCopyWith<$Res> {
  _$RawTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get data {
    return $TransactionCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RawTransactionCopyWith<$Res>
    implements $RawTransactionCopyWith<$Res> {
  factory _$$_RawTransactionCopyWith(
          _$_RawTransaction value, $Res Function(_$_RawTransaction) then) =
      __$$_RawTransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hash, Transaction data});

  @override
  $TransactionCopyWith<$Res> get data;
}

/// @nodoc
class __$$_RawTransactionCopyWithImpl<$Res>
    extends _$RawTransactionCopyWithImpl<$Res, _$_RawTransaction>
    implements _$$_RawTransactionCopyWith<$Res> {
  __$$_RawTransactionCopyWithImpl(
      _$_RawTransaction _value, $Res Function(_$_RawTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? data = null,
  }) {
    return _then(_$_RawTransaction(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RawTransaction implements _RawTransaction {
  const _$_RawTransaction({required this.hash, required this.data});

  factory _$_RawTransaction.fromJson(Map<String, dynamic> json) =>
      _$$_RawTransactionFromJson(json);

  @override
  final String hash;
  @override
  final Transaction data;

  @override
  String toString() {
    return 'RawTransaction(hash: $hash, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RawTransaction &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hash, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RawTransactionCopyWith<_$_RawTransaction> get copyWith =>
      __$$_RawTransactionCopyWithImpl<_$_RawTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RawTransactionToJson(
      this,
    );
  }
}

abstract class _RawTransaction implements RawTransaction {
  const factory _RawTransaction(
      {required final String hash,
      required final Transaction data}) = _$_RawTransaction;

  factory _RawTransaction.fromJson(Map<String, dynamic> json) =
      _$_RawTransaction.fromJson;

  @override
  String get hash;
  @override
  Transaction get data;
  @override
  @JsonKey(ignore: true)
  _$$_RawTransactionCopyWith<_$_RawTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}
