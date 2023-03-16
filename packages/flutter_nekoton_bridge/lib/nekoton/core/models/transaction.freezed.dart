// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  TransactionId get id => throw _privateConstructorUsedError;
  TransactionId? get prevTransactionId => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  bool get aborted => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get exitCode => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get resultCode => throw _privateConstructorUsedError;
  AccountStatus get origStatus => throw _privateConstructorUsedError;
  AccountStatus get endStatus => throw _privateConstructorUsedError;
  String get totalFees => throw _privateConstructorUsedError;
  Message get inMessage => throw _privateConstructorUsedError;
  List<Message> get outMessages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {TransactionId id,
      TransactionId? prevTransactionId,
      int createdAt,
      bool aborted,
      @JsonKey(includeIfNull: false) int? exitCode,
      @JsonKey(includeIfNull: false) int? resultCode,
      AccountStatus origStatus,
      AccountStatus endStatus,
      String totalFees,
      Message inMessage,
      List<Message> outMessages});

  $TransactionIdCopyWith<$Res> get id;
  $TransactionIdCopyWith<$Res>? get prevTransactionId;
  $MessageCopyWith<$Res> get inMessage;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? prevTransactionId = freezed,
    Object? createdAt = freezed,
    Object? aborted = freezed,
    Object? exitCode = freezed,
    Object? resultCode = freezed,
    Object? origStatus = freezed,
    Object? endStatus = freezed,
    Object? totalFees = freezed,
    Object? inMessage = freezed,
    Object? outMessages = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      prevTransactionId: prevTransactionId == freezed
          ? _value.prevTransactionId
          : prevTransactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      aborted: aborted == freezed
          ? _value.aborted
          : aborted // ignore: cast_nullable_to_non_nullable
              as bool,
      exitCode: exitCode == freezed
          ? _value.exitCode
          : exitCode // ignore: cast_nullable_to_non_nullable
              as int?,
      resultCode: resultCode == freezed
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as int?,
      origStatus: origStatus == freezed
          ? _value.origStatus
          : origStatus // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      endStatus: endStatus == freezed
          ? _value.endStatus
          : endStatus // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      totalFees: totalFees == freezed
          ? _value.totalFees
          : totalFees // ignore: cast_nullable_to_non_nullable
              as String,
      inMessage: inMessage == freezed
          ? _value.inMessage
          : inMessage // ignore: cast_nullable_to_non_nullable
              as Message,
      outMessages: outMessages == freezed
          ? _value.outMessages
          : outMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }

  @override
  $TransactionIdCopyWith<$Res> get id {
    return $TransactionIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }

  @override
  $TransactionIdCopyWith<$Res>? get prevTransactionId {
    if (_value.prevTransactionId == null) {
      return null;
    }

    return $TransactionIdCopyWith<$Res>(_value.prevTransactionId!, (value) {
      return _then(_value.copyWith(prevTransactionId: value));
    });
  }

  @override
  $MessageCopyWith<$Res> get inMessage {
    return $MessageCopyWith<$Res>(_value.inMessage, (value) {
      return _then(_value.copyWith(inMessage: value));
    });
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {TransactionId id,
      TransactionId? prevTransactionId,
      int createdAt,
      bool aborted,
      @JsonKey(includeIfNull: false) int? exitCode,
      @JsonKey(includeIfNull: false) int? resultCode,
      AccountStatus origStatus,
      AccountStatus endStatus,
      String totalFees,
      Message inMessage,
      List<Message> outMessages});

  @override
  $TransactionIdCopyWith<$Res> get id;
  @override
  $TransactionIdCopyWith<$Res>? get prevTransactionId;
  @override
  $MessageCopyWith<$Res> get inMessage;
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, (v) => _then(v as _$_Transaction));

  @override
  _$_Transaction get _value => super._value as _$_Transaction;

  @override
  $Res call({
    Object? id = freezed,
    Object? prevTransactionId = freezed,
    Object? createdAt = freezed,
    Object? aborted = freezed,
    Object? exitCode = freezed,
    Object? resultCode = freezed,
    Object? origStatus = freezed,
    Object? endStatus = freezed,
    Object? totalFees = freezed,
    Object? inMessage = freezed,
    Object? outMessages = freezed,
  }) {
    return _then(_$_Transaction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      prevTransactionId: prevTransactionId == freezed
          ? _value.prevTransactionId
          : prevTransactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      aborted: aborted == freezed
          ? _value.aborted
          : aborted // ignore: cast_nullable_to_non_nullable
              as bool,
      exitCode: exitCode == freezed
          ? _value.exitCode
          : exitCode // ignore: cast_nullable_to_non_nullable
              as int?,
      resultCode: resultCode == freezed
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as int?,
      origStatus: origStatus == freezed
          ? _value.origStatus
          : origStatus // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      endStatus: endStatus == freezed
          ? _value.endStatus
          : endStatus // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      totalFees: totalFees == freezed
          ? _value.totalFees
          : totalFees // ignore: cast_nullable_to_non_nullable
              as String,
      inMessage: inMessage == freezed
          ? _value.inMessage
          : inMessage // ignore: cast_nullable_to_non_nullable
              as Message,
      outMessages: outMessages == freezed
          ? _value._outMessages
          : outMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction extends _Transaction {
  const _$_Transaction(
      {required this.id,
      this.prevTransactionId,
      required this.createdAt,
      required this.aborted,
      @JsonKey(includeIfNull: false) this.exitCode,
      @JsonKey(includeIfNull: false) this.resultCode,
      required this.origStatus,
      required this.endStatus,
      required this.totalFees,
      required this.inMessage,
      required final List<Message> outMessages})
      : _outMessages = outMessages,
        super._();

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  final TransactionId id;
  @override
  final TransactionId? prevTransactionId;
  @override
  final int createdAt;
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
  final String totalFees;
  @override
  final Message inMessage;
  final List<Message> _outMessages;
  @override
  List<Message> get outMessages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outMessages);
  }

  @override
  String toString() {
    return 'Transaction(id: $id, prevTransactionId: $prevTransactionId, createdAt: $createdAt, aborted: $aborted, exitCode: $exitCode, resultCode: $resultCode, origStatus: $origStatus, endStatus: $endStatus, totalFees: $totalFees, inMessage: $inMessage, outMessages: $outMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.prevTransactionId, prevTransactionId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.aborted, aborted) &&
            const DeepCollectionEquality().equals(other.exitCode, exitCode) &&
            const DeepCollectionEquality()
                .equals(other.resultCode, resultCode) &&
            const DeepCollectionEquality()
                .equals(other.origStatus, origStatus) &&
            const DeepCollectionEquality().equals(other.endStatus, endStatus) &&
            const DeepCollectionEquality().equals(other.totalFees, totalFees) &&
            const DeepCollectionEquality().equals(other.inMessage, inMessage) &&
            const DeepCollectionEquality()
                .equals(other._outMessages, _outMessages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(prevTransactionId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(aborted),
      const DeepCollectionEquality().hash(exitCode),
      const DeepCollectionEquality().hash(resultCode),
      const DeepCollectionEquality().hash(origStatus),
      const DeepCollectionEquality().hash(endStatus),
      const DeepCollectionEquality().hash(totalFees),
      const DeepCollectionEquality().hash(inMessage),
      const DeepCollectionEquality().hash(_outMessages));

  @JsonKey(ignore: true)
  @override
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(
      this,
    );
  }
}

abstract class _Transaction extends Transaction {
  const factory _Transaction(
      {required final TransactionId id,
      final TransactionId? prevTransactionId,
      required final int createdAt,
      required final bool aborted,
      @JsonKey(includeIfNull: false) final int? exitCode,
      @JsonKey(includeIfNull: false) final int? resultCode,
      required final AccountStatus origStatus,
      required final AccountStatus endStatus,
      required final String totalFees,
      required final Message inMessage,
      required final List<Message> outMessages}) = _$_Transaction;
  const _Transaction._() : super._();

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  TransactionId get id;
  @override
  TransactionId? get prevTransactionId;
  @override
  int get createdAt;
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
  String get totalFees;
  @override
  Message get inMessage;
  @override
  List<Message> get outMessages;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
