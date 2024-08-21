// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  TransactionId get id => throw _privateConstructorUsedError;
  TransactionId? get prevTransactionId => throw _privateConstructorUsedError;
  @dateSecondsSinceEpochJsonConverter
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get aborted => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get exitCode => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get resultCode => throw _privateConstructorUsedError;
  AccountStatus get origStatus => throw _privateConstructorUsedError;
  AccountStatus get endStatus => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get totalFees => throw _privateConstructorUsedError;
  Message get inMessage => throw _privateConstructorUsedError;
  List<Message> get outMessages => throw _privateConstructorUsedError;
  String? get boc => throw _privateConstructorUsedError;

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {TransactionId id,
      TransactionId? prevTransactionId,
      @dateSecondsSinceEpochJsonConverter DateTime createdAt,
      bool aborted,
      @JsonKey(includeIfNull: false) int? exitCode,
      @JsonKey(includeIfNull: false) int? resultCode,
      AccountStatus origStatus,
      AccountStatus endStatus,
      @amountJsonConverter BigInt totalFees,
      Message inMessage,
      List<Message> outMessages,
      String? boc});

  $TransactionIdCopyWith<$Res> get id;
  $TransactionIdCopyWith<$Res>? get prevTransactionId;
  $MessageCopyWith<$Res> get inMessage;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? prevTransactionId = freezed,
    Object? createdAt = null,
    Object? aborted = null,
    Object? exitCode = freezed,
    Object? resultCode = freezed,
    Object? origStatus = null,
    Object? endStatus = null,
    Object? totalFees = null,
    Object? inMessage = null,
    Object? outMessages = null,
    Object? boc = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      prevTransactionId: freezed == prevTransactionId
          ? _value.prevTransactionId
          : prevTransactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      aborted: null == aborted
          ? _value.aborted
          : aborted // ignore: cast_nullable_to_non_nullable
              as bool,
      exitCode: freezed == exitCode
          ? _value.exitCode
          : exitCode // ignore: cast_nullable_to_non_nullable
              as int?,
      resultCode: freezed == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as int?,
      origStatus: null == origStatus
          ? _value.origStatus
          : origStatus // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      endStatus: null == endStatus
          ? _value.endStatus
          : endStatus // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      totalFees: null == totalFees
          ? _value.totalFees
          : totalFees // ignore: cast_nullable_to_non_nullable
              as BigInt,
      inMessage: null == inMessage
          ? _value.inMessage
          : inMessage // ignore: cast_nullable_to_non_nullable
              as Message,
      outMessages: null == outMessages
          ? _value.outMessages
          : outMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      boc: freezed == boc
          ? _value.boc
          : boc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionIdCopyWith<$Res> get id {
    return $TransactionIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionIdCopyWith<$Res>? get prevTransactionId {
    if (_value.prevTransactionId == null) {
      return null;
    }

    return $TransactionIdCopyWith<$Res>(_value.prevTransactionId!, (value) {
      return _then(_value.copyWith(prevTransactionId: value) as $Val);
    });
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get inMessage {
    return $MessageCopyWith<$Res>(_value.inMessage, (value) {
      return _then(_value.copyWith(inMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TransactionId id,
      TransactionId? prevTransactionId,
      @dateSecondsSinceEpochJsonConverter DateTime createdAt,
      bool aborted,
      @JsonKey(includeIfNull: false) int? exitCode,
      @JsonKey(includeIfNull: false) int? resultCode,
      AccountStatus origStatus,
      AccountStatus endStatus,
      @amountJsonConverter BigInt totalFees,
      Message inMessage,
      List<Message> outMessages,
      String? boc});

  @override
  $TransactionIdCopyWith<$Res> get id;
  @override
  $TransactionIdCopyWith<$Res>? get prevTransactionId;
  @override
  $MessageCopyWith<$Res> get inMessage;
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? prevTransactionId = freezed,
    Object? createdAt = null,
    Object? aborted = null,
    Object? exitCode = freezed,
    Object? resultCode = freezed,
    Object? origStatus = null,
    Object? endStatus = null,
    Object? totalFees = null,
    Object? inMessage = null,
    Object? outMessages = null,
    Object? boc = freezed,
  }) {
    return _then(_$TransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      prevTransactionId: freezed == prevTransactionId
          ? _value.prevTransactionId
          : prevTransactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      aborted: null == aborted
          ? _value.aborted
          : aborted // ignore: cast_nullable_to_non_nullable
              as bool,
      exitCode: freezed == exitCode
          ? _value.exitCode
          : exitCode // ignore: cast_nullable_to_non_nullable
              as int?,
      resultCode: freezed == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as int?,
      origStatus: null == origStatus
          ? _value.origStatus
          : origStatus // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      endStatus: null == endStatus
          ? _value.endStatus
          : endStatus // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      totalFees: null == totalFees
          ? _value.totalFees
          : totalFees // ignore: cast_nullable_to_non_nullable
              as BigInt,
      inMessage: null == inMessage
          ? _value.inMessage
          : inMessage // ignore: cast_nullable_to_non_nullable
              as Message,
      outMessages: null == outMessages
          ? _value._outMessages
          : outMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      boc: freezed == boc
          ? _value.boc
          : boc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionImpl extends _Transaction {
  const _$TransactionImpl(
      {required this.id,
      this.prevTransactionId,
      @dateSecondsSinceEpochJsonConverter required this.createdAt,
      required this.aborted,
      @JsonKey(includeIfNull: false) this.exitCode,
      @JsonKey(includeIfNull: false) this.resultCode,
      required this.origStatus,
      required this.endStatus,
      @amountJsonConverter required this.totalFees,
      required this.inMessage,
      required final List<Message> outMessages,
      required this.boc})
      : _outMessages = outMessages,
        super._();

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  final TransactionId id;
  @override
  final TransactionId? prevTransactionId;
  @override
  @dateSecondsSinceEpochJsonConverter
  final DateTime createdAt;
  @override
  final bool aborted;
  @override
  @JsonKey(includeIfNull: false)
  final int? exitCode;
  @override
  @JsonKey(includeIfNull: false)
  final int? resultCode;
  @override
  final AccountStatus origStatus;
  @override
  final AccountStatus endStatus;
  @override
  @amountJsonConverter
  final BigInt totalFees;
  @override
  final Message inMessage;
  final List<Message> _outMessages;
  @override
  List<Message> get outMessages {
    if (_outMessages is EqualUnmodifiableListView) return _outMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outMessages);
  }

  @override
  final String? boc;

  @override
  String toString() {
    return 'Transaction(id: $id, prevTransactionId: $prevTransactionId, createdAt: $createdAt, aborted: $aborted, exitCode: $exitCode, resultCode: $resultCode, origStatus: $origStatus, endStatus: $endStatus, totalFees: $totalFees, inMessage: $inMessage, outMessages: $outMessages, boc: $boc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.prevTransactionId, prevTransactionId) ||
                other.prevTransactionId == prevTransactionId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.aborted, aborted) || other.aborted == aborted) &&
            (identical(other.exitCode, exitCode) ||
                other.exitCode == exitCode) &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode) &&
            (identical(other.origStatus, origStatus) ||
                other.origStatus == origStatus) &&
            (identical(other.endStatus, endStatus) ||
                other.endStatus == endStatus) &&
            (identical(other.totalFees, totalFees) ||
                other.totalFees == totalFees) &&
            (identical(other.inMessage, inMessage) ||
                other.inMessage == inMessage) &&
            const DeepCollectionEquality()
                .equals(other._outMessages, _outMessages) &&
            (identical(other.boc, boc) || other.boc == boc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      prevTransactionId,
      createdAt,
      aborted,
      exitCode,
      resultCode,
      origStatus,
      endStatus,
      totalFees,
      inMessage,
      const DeepCollectionEquality().hash(_outMessages),
      boc);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionImplToJson(
      this,
    );
  }
}

abstract class _Transaction extends Transaction {
  const factory _Transaction(
      {required final TransactionId id,
      final TransactionId? prevTransactionId,
      @dateSecondsSinceEpochJsonConverter required final DateTime createdAt,
      required final bool aborted,
      @JsonKey(includeIfNull: false) final int? exitCode,
      @JsonKey(includeIfNull: false) final int? resultCode,
      required final AccountStatus origStatus,
      required final AccountStatus endStatus,
      @amountJsonConverter required final BigInt totalFees,
      required final Message inMessage,
      required final List<Message> outMessages,
      required final String? boc}) = _$TransactionImpl;
  const _Transaction._() : super._();

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  TransactionId get id;
  @override
  TransactionId? get prevTransactionId;
  @override
  @dateSecondsSinceEpochJsonConverter
  DateTime get createdAt;
  @override
  bool get aborted;
  @override
  @JsonKey(includeIfNull: false)
  int? get exitCode;
  @override
  @JsonKey(includeIfNull: false)
  int? get resultCode;
  @override
  AccountStatus get origStatus;
  @override
  AccountStatus get endStatus;
  @override
  @amountJsonConverter
  BigInt get totalFees;
  @override
  Message get inMessage;
  @override
  List<Message> get outMessages;
  @override
  String? get boc;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
