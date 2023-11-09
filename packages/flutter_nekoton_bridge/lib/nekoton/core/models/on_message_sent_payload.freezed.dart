// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_message_sent_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnMessageSentPayload _$OnMessageSentPayloadFromJson(Map<String, dynamic> json) {
  return _OnMessageSentPayload.fromJson(json);
}

/// @nodoc
mixin _$OnMessageSentPayload {
  PendingTransaction get pendingTransaction =>
      throw _privateConstructorUsedError;
  Transaction? get transaction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnMessageSentPayloadCopyWith<OnMessageSentPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnMessageSentPayloadCopyWith<$Res> {
  factory $OnMessageSentPayloadCopyWith(OnMessageSentPayload value,
          $Res Function(OnMessageSentPayload) then) =
      _$OnMessageSentPayloadCopyWithImpl<$Res, OnMessageSentPayload>;
  @useResult
  $Res call({PendingTransaction pendingTransaction, Transaction? transaction});

  $PendingTransactionCopyWith<$Res> get pendingTransaction;
  $TransactionCopyWith<$Res>? get transaction;
}

/// @nodoc
class _$OnMessageSentPayloadCopyWithImpl<$Res,
        $Val extends OnMessageSentPayload>
    implements $OnMessageSentPayloadCopyWith<$Res> {
  _$OnMessageSentPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingTransaction = null,
    Object? transaction = freezed,
  }) {
    return _then(_value.copyWith(
      pendingTransaction: null == pendingTransaction
          ? _value.pendingTransaction
          : pendingTransaction // ignore: cast_nullable_to_non_nullable
              as PendingTransaction,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PendingTransactionCopyWith<$Res> get pendingTransaction {
    return $PendingTransactionCopyWith<$Res>(_value.pendingTransaction,
        (value) {
      return _then(_value.copyWith(pendingTransaction: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res>? get transaction {
    if (_value.transaction == null) {
      return null;
    }

    return $TransactionCopyWith<$Res>(_value.transaction!, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OnMessageSentPayloadCopyWith<$Res>
    implements $OnMessageSentPayloadCopyWith<$Res> {
  factory _$$_OnMessageSentPayloadCopyWith(_$_OnMessageSentPayload value,
          $Res Function(_$_OnMessageSentPayload) then) =
      __$$_OnMessageSentPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PendingTransaction pendingTransaction, Transaction? transaction});

  @override
  $PendingTransactionCopyWith<$Res> get pendingTransaction;
  @override
  $TransactionCopyWith<$Res>? get transaction;
}

/// @nodoc
class __$$_OnMessageSentPayloadCopyWithImpl<$Res>
    extends _$OnMessageSentPayloadCopyWithImpl<$Res, _$_OnMessageSentPayload>
    implements _$$_OnMessageSentPayloadCopyWith<$Res> {
  __$$_OnMessageSentPayloadCopyWithImpl(_$_OnMessageSentPayload _value,
      $Res Function(_$_OnMessageSentPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingTransaction = null,
    Object? transaction = freezed,
  }) {
    return _then(_$_OnMessageSentPayload(
      pendingTransaction: null == pendingTransaction
          ? _value.pendingTransaction
          : pendingTransaction // ignore: cast_nullable_to_non_nullable
              as PendingTransaction,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_OnMessageSentPayload implements _OnMessageSentPayload {
  const _$_OnMessageSentPayload(
      {required this.pendingTransaction, this.transaction});

  factory _$_OnMessageSentPayload.fromJson(Map<String, dynamic> json) =>
      _$$_OnMessageSentPayloadFromJson(json);

  @override
  final PendingTransaction pendingTransaction;
  @override
  final Transaction? transaction;

  @override
  String toString() {
    return 'OnMessageSentPayload(pendingTransaction: $pendingTransaction, transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnMessageSentPayload &&
            (identical(other.pendingTransaction, pendingTransaction) ||
                other.pendingTransaction == pendingTransaction) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pendingTransaction, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnMessageSentPayloadCopyWith<_$_OnMessageSentPayload> get copyWith =>
      __$$_OnMessageSentPayloadCopyWithImpl<_$_OnMessageSentPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnMessageSentPayloadToJson(
      this,
    );
  }
}

abstract class _OnMessageSentPayload implements OnMessageSentPayload {
  const factory _OnMessageSentPayload(
      {required final PendingTransaction pendingTransaction,
      final Transaction? transaction}) = _$_OnMessageSentPayload;

  factory _OnMessageSentPayload.fromJson(Map<String, dynamic> json) =
      _$_OnMessageSentPayload.fromJson;

  @override
  PendingTransaction get pendingTransaction;
  @override
  Transaction? get transaction;
  @override
  @JsonKey(ignore: true)
  _$$_OnMessageSentPayloadCopyWith<_$_OnMessageSentPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
