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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$RawTransactionImplCopyWith<$Res>
    implements $RawTransactionCopyWith<$Res> {
  factory _$$RawTransactionImplCopyWith(_$RawTransactionImpl value,
          $Res Function(_$RawTransactionImpl) then) =
      __$$RawTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hash, Transaction data});

  @override
  $TransactionCopyWith<$Res> get data;
}

/// @nodoc
class __$$RawTransactionImplCopyWithImpl<$Res>
    extends _$RawTransactionCopyWithImpl<$Res, _$RawTransactionImpl>
    implements _$$RawTransactionImplCopyWith<$Res> {
  __$$RawTransactionImplCopyWithImpl(
      _$RawTransactionImpl _value, $Res Function(_$RawTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? data = null,
  }) {
    return _then(_$RawTransactionImpl(
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
class _$RawTransactionImpl implements _RawTransaction {
  const _$RawTransactionImpl({required this.hash, required this.data});

  factory _$RawTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawTransactionImplFromJson(json);

  @override
  final String hash;
  @override
  final Transaction data;

  @override
  String toString() {
    return 'RawTransaction(hash: $hash, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawTransactionImpl &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hash, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RawTransactionImplCopyWith<_$RawTransactionImpl> get copyWith =>
      __$$RawTransactionImplCopyWithImpl<_$RawTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RawTransactionImplToJson(
      this,
    );
  }
}

abstract class _RawTransaction implements RawTransaction {
  const factory _RawTransaction(
      {required final String hash,
      required final Transaction data}) = _$RawTransactionImpl;

  factory _RawTransaction.fromJson(Map<String, dynamic> json) =
      _$RawTransactionImpl.fromJson;

  @override
  String get hash;
  @override
  Transaction get data;
  @override
  @JsonKey(ignore: true)
  _$$RawTransactionImplCopyWith<_$RawTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
