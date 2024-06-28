// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PendingTransaction _$PendingTransactionFromJson(Map<String, dynamic> json) {
  return _PendingTransaction.fromJson(json);
}

/// @nodoc
mixin _$PendingTransaction {
  String get messageHash => throw _privateConstructorUsedError;
  Address? get src => throw _privateConstructorUsedError;
  @dateSecondsSinceEpochJsonConverter
  DateTime get expireAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PendingTransactionCopyWith<PendingTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingTransactionCopyWith<$Res> {
  factory $PendingTransactionCopyWith(
          PendingTransaction value, $Res Function(PendingTransaction) then) =
      _$PendingTransactionCopyWithImpl<$Res, PendingTransaction>;
  @useResult
  $Res call(
      {String messageHash,
      Address? src,
      @dateSecondsSinceEpochJsonConverter DateTime expireAt});

  $AddressCopyWith<$Res>? get src;
}

/// @nodoc
class _$PendingTransactionCopyWithImpl<$Res, $Val extends PendingTransaction>
    implements $PendingTransactionCopyWith<$Res> {
  _$PendingTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageHash = null,
    Object? src = freezed,
    Object? expireAt = null,
  }) {
    return _then(_value.copyWith(
      messageHash: null == messageHash
          ? _value.messageHash
          : messageHash // ignore: cast_nullable_to_non_nullable
              as String,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Address?,
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get src {
    if (_value.src == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.src!, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PendingTransactionImplCopyWith<$Res>
    implements $PendingTransactionCopyWith<$Res> {
  factory _$$PendingTransactionImplCopyWith(_$PendingTransactionImpl value,
          $Res Function(_$PendingTransactionImpl) then) =
      __$$PendingTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String messageHash,
      Address? src,
      @dateSecondsSinceEpochJsonConverter DateTime expireAt});

  @override
  $AddressCopyWith<$Res>? get src;
}

/// @nodoc
class __$$PendingTransactionImplCopyWithImpl<$Res>
    extends _$PendingTransactionCopyWithImpl<$Res, _$PendingTransactionImpl>
    implements _$$PendingTransactionImplCopyWith<$Res> {
  __$$PendingTransactionImplCopyWithImpl(_$PendingTransactionImpl _value,
      $Res Function(_$PendingTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageHash = null,
    Object? src = freezed,
    Object? expireAt = null,
  }) {
    return _then(_$PendingTransactionImpl(
      messageHash: null == messageHash
          ? _value.messageHash
          : messageHash // ignore: cast_nullable_to_non_nullable
              as String,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Address?,
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PendingTransactionImpl extends _PendingTransaction {
  const _$PendingTransactionImpl(
      {required this.messageHash,
      this.src,
      @dateSecondsSinceEpochJsonConverter required this.expireAt})
      : super._();

  factory _$PendingTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PendingTransactionImplFromJson(json);

  @override
  final String messageHash;
  @override
  final Address? src;
  @override
  @dateSecondsSinceEpochJsonConverter
  final DateTime expireAt;

  @override
  String toString() {
    return 'PendingTransaction(messageHash: $messageHash, src: $src, expireAt: $expireAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingTransactionImpl &&
            (identical(other.messageHash, messageHash) ||
                other.messageHash == messageHash) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, messageHash, src, expireAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PendingTransactionImplCopyWith<_$PendingTransactionImpl> get copyWith =>
      __$$PendingTransactionImplCopyWithImpl<_$PendingTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PendingTransactionImplToJson(
      this,
    );
  }
}

abstract class _PendingTransaction extends PendingTransaction {
  const factory _PendingTransaction(
      {required final String messageHash,
      final Address? src,
      @dateSecondsSinceEpochJsonConverter
      required final DateTime expireAt}) = _$PendingTransactionImpl;
  const _PendingTransaction._() : super._();

  factory _PendingTransaction.fromJson(Map<String, dynamic> json) =
      _$PendingTransactionImpl.fromJson;

  @override
  String get messageHash;
  @override
  Address? get src;
  @override
  @dateSecondsSinceEpochJsonConverter
  DateTime get expireAt;
  @override
  @JsonKey(ignore: true)
  _$$PendingTransactionImplCopyWith<_$PendingTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
