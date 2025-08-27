// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Transaction {
  TransactionId get id;
  TransactionId? get prevTransactionId;
  @dateSecondsSinceEpochJsonConverter
  DateTime get createdAt;
  bool get aborted;
  @JsonKey(includeIfNull: false)
  int? get exitCode;
  @JsonKey(includeIfNull: false)
  int? get resultCode;
  AccountStatus get origStatus;
  AccountStatus get endStatus;
  @amountJsonConverter
  BigInt get totalFees;
  Message get inMessage;
  List<Message> get outMessages;
  String? get boc;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<Transaction> get copyWith =>
      _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Transaction &&
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
                .equals(other.outMessages, outMessages) &&
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
      const DeepCollectionEquality().hash(outMessages),
      boc);

  @override
  String toString() {
    return 'Transaction(id: $id, prevTransactionId: $prevTransactionId, createdAt: $createdAt, aborted: $aborted, exitCode: $exitCode, resultCode: $resultCode, origStatus: $origStatus, endStatus: $endStatus, totalFees: $totalFees, inMessage: $inMessage, outMessages: $outMessages, boc: $boc)';
  }
}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) _then) =
      _$TransactionCopyWithImpl;
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
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      prevTransactionId: freezed == prevTransactionId
          ? _self.prevTransactionId
          : prevTransactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      aborted: null == aborted
          ? _self.aborted
          : aborted // ignore: cast_nullable_to_non_nullable
              as bool,
      exitCode: freezed == exitCode
          ? _self.exitCode
          : exitCode // ignore: cast_nullable_to_non_nullable
              as int?,
      resultCode: freezed == resultCode
          ? _self.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as int?,
      origStatus: null == origStatus
          ? _self.origStatus
          : origStatus // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      endStatus: null == endStatus
          ? _self.endStatus
          : endStatus // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      totalFees: null == totalFees
          ? _self.totalFees
          : totalFees // ignore: cast_nullable_to_non_nullable
              as BigInt,
      inMessage: null == inMessage
          ? _self.inMessage
          : inMessage // ignore: cast_nullable_to_non_nullable
              as Message,
      outMessages: null == outMessages
          ? _self.outMessages
          : outMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      boc: freezed == boc
          ? _self.boc
          : boc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionIdCopyWith<$Res> get id {
    return $TransactionIdCopyWith<$Res>(_self.id, (value) {
      return _then(_self.copyWith(id: value));
    });
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionIdCopyWith<$Res>? get prevTransactionId {
    if (_self.prevTransactionId == null) {
      return null;
    }

    return $TransactionIdCopyWith<$Res>(_self.prevTransactionId!, (value) {
      return _then(_self.copyWith(prevTransactionId: value));
    });
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get inMessage {
    return $MessageCopyWith<$Res>(_self.inMessage, (value) {
      return _then(_self.copyWith(inMessage: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Transaction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Transaction() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Transaction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Transaction():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Transaction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Transaction() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            TransactionId id,
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
            String? boc)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Transaction() when $default != null:
        return $default(
            _that.id,
            _that.prevTransactionId,
            _that.createdAt,
            _that.aborted,
            _that.exitCode,
            _that.resultCode,
            _that.origStatus,
            _that.endStatus,
            _that.totalFees,
            _that.inMessage,
            _that.outMessages,
            _that.boc);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            TransactionId id,
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
            String? boc)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Transaction():
        return $default(
            _that.id,
            _that.prevTransactionId,
            _that.createdAt,
            _that.aborted,
            _that.exitCode,
            _that.resultCode,
            _that.origStatus,
            _that.endStatus,
            _that.totalFees,
            _that.inMessage,
            _that.outMessages,
            _that.boc);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            TransactionId id,
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
            String? boc)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Transaction() when $default != null:
        return $default(
            _that.id,
            _that.prevTransactionId,
            _that.createdAt,
            _that.aborted,
            _that.exitCode,
            _that.resultCode,
            _that.origStatus,
            _that.endStatus,
            _that.totalFees,
            _that.inMessage,
            _that.outMessages,
            _that.boc);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Transaction extends Transaction {
  const _Transaction(
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
  factory _Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

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

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Transaction &&
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

  @override
  String toString() {
    return 'Transaction(id: $id, prevTransactionId: $prevTransactionId, createdAt: $createdAt, aborted: $aborted, exitCode: $exitCode, resultCode: $resultCode, origStatus: $origStatus, endStatus: $endStatus, totalFees: $totalFees, inMessage: $inMessage, outMessages: $outMessages, boc: $boc)';
  }
}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) _then) =
      __$TransactionCopyWithImpl;
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
class __$TransactionCopyWithImpl<$Res> implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_Transaction(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      prevTransactionId: freezed == prevTransactionId
          ? _self.prevTransactionId
          : prevTransactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      aborted: null == aborted
          ? _self.aborted
          : aborted // ignore: cast_nullable_to_non_nullable
              as bool,
      exitCode: freezed == exitCode
          ? _self.exitCode
          : exitCode // ignore: cast_nullable_to_non_nullable
              as int?,
      resultCode: freezed == resultCode
          ? _self.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as int?,
      origStatus: null == origStatus
          ? _self.origStatus
          : origStatus // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      endStatus: null == endStatus
          ? _self.endStatus
          : endStatus // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      totalFees: null == totalFees
          ? _self.totalFees
          : totalFees // ignore: cast_nullable_to_non_nullable
              as BigInt,
      inMessage: null == inMessage
          ? _self.inMessage
          : inMessage // ignore: cast_nullable_to_non_nullable
              as Message,
      outMessages: null == outMessages
          ? _self._outMessages
          : outMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      boc: freezed == boc
          ? _self.boc
          : boc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionIdCopyWith<$Res> get id {
    return $TransactionIdCopyWith<$Res>(_self.id, (value) {
      return _then(_self.copyWith(id: value));
    });
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionIdCopyWith<$Res>? get prevTransactionId {
    if (_self.prevTransactionId == null) {
      return null;
    }

    return $TransactionIdCopyWith<$Res>(_self.prevTransactionId!, (value) {
      return _then(_self.copyWith(prevTransactionId: value));
    });
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get inMessage {
    return $MessageCopyWith<$Res>(_self.inMessage, (value) {
      return _then(_self.copyWith(inMessage: value));
    });
  }
}

// dart format on
