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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PendingTransaction _$PendingTransactionFromJson(Map<String, dynamic> json) {
  return _PendingTransaction.fromJson(json);
}

/// @nodoc
mixin _$PendingTransaction {
  String get messageHash => throw _privateConstructorUsedError;
  String? get src => throw _privateConstructorUsedError;
  int get expireAt => throw _privateConstructorUsedError;

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
  $Res call({String messageHash, String? src, int expireAt});
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
              as String?,
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PendingTransactionCopyWith<$Res>
    implements $PendingTransactionCopyWith<$Res> {
  factory _$$_PendingTransactionCopyWith(_$_PendingTransaction value,
          $Res Function(_$_PendingTransaction) then) =
      __$$_PendingTransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String messageHash, String? src, int expireAt});
}

/// @nodoc
class __$$_PendingTransactionCopyWithImpl<$Res>
    extends _$PendingTransactionCopyWithImpl<$Res, _$_PendingTransaction>
    implements _$$_PendingTransactionCopyWith<$Res> {
  __$$_PendingTransactionCopyWithImpl(
      _$_PendingTransaction _value, $Res Function(_$_PendingTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageHash = null,
    Object? src = freezed,
    Object? expireAt = null,
  }) {
    return _then(_$_PendingTransaction(
      messageHash: null == messageHash
          ? _value.messageHash
          : messageHash // ignore: cast_nullable_to_non_nullable
              as String,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PendingTransaction extends _PendingTransaction {
  const _$_PendingTransaction(
      {required this.messageHash, this.src, required this.expireAt})
      : super._();

  factory _$_PendingTransaction.fromJson(Map<String, dynamic> json) =>
      _$$_PendingTransactionFromJson(json);

  @override
  final String messageHash;
  @override
  final String? src;
  @override
  final int expireAt;

  @override
  String toString() {
    return 'PendingTransaction(messageHash: $messageHash, src: $src, expireAt: $expireAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PendingTransaction &&
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
  _$$_PendingTransactionCopyWith<_$_PendingTransaction> get copyWith =>
      __$$_PendingTransactionCopyWithImpl<_$_PendingTransaction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PendingTransactionToJson(
      this,
    );
  }
}

abstract class _PendingTransaction extends PendingTransaction {
  const factory _PendingTransaction(
      {required final String messageHash,
      final String? src,
      required final int expireAt}) = _$_PendingTransaction;
  const _PendingTransaction._() : super._();

  factory _PendingTransaction.fromJson(Map<String, dynamic> json) =
      _$_PendingTransaction.fromJson;

  @override
  String get messageHash;
  @override
  String? get src;
  @override
  int get expireAt;
  @override
  @JsonKey(ignore: true)
  _$$_PendingTransactionCopyWith<_$_PendingTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}
