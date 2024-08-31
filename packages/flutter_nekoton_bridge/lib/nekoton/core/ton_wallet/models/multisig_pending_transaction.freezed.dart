// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multisig_pending_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MultisigPendingTransaction _$MultisigPendingTransactionFromJson(
    Map<String, dynamic> json) {
  return _MultisigPendingTransaction.fromJson(json);
}

/// @nodoc
mixin _$MultisigPendingTransaction {
  String get id => throw _privateConstructorUsedError;
  List<PublicKey> get confirmations => throw _privateConstructorUsedError;
  int get signsRequired => throw _privateConstructorUsedError;
  int get signsReceived => throw _privateConstructorUsedError;
  PublicKey get creator => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  Address get dest => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get value => throw _privateConstructorUsedError;
  int get sendFlags => throw _privateConstructorUsedError;
  String get payload => throw _privateConstructorUsedError;
  bool get bounce => throw _privateConstructorUsedError;

  /// Serializes this MultisigPendingTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MultisigPendingTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MultisigPendingTransactionCopyWith<MultisigPendingTransaction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultisigPendingTransactionCopyWith<$Res> {
  factory $MultisigPendingTransactionCopyWith(MultisigPendingTransaction value,
          $Res Function(MultisigPendingTransaction) then) =
      _$MultisigPendingTransactionCopyWithImpl<$Res,
          MultisigPendingTransaction>;
  @useResult
  $Res call(
      {String id,
      List<PublicKey> confirmations,
      int signsRequired,
      int signsReceived,
      PublicKey creator,
      int index,
      Address dest,
      @amountJsonConverter BigInt value,
      int sendFlags,
      String payload,
      bool bounce});

  $PublicKeyCopyWith<$Res> get creator;
  $AddressCopyWith<$Res> get dest;
}

/// @nodoc
class _$MultisigPendingTransactionCopyWithImpl<$Res,
        $Val extends MultisigPendingTransaction>
    implements $MultisigPendingTransactionCopyWith<$Res> {
  _$MultisigPendingTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultisigPendingTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? confirmations = null,
    Object? signsRequired = null,
    Object? signsReceived = null,
    Object? creator = null,
    Object? index = null,
    Object? dest = null,
    Object? value = null,
    Object? sendFlags = null,
    Object? payload = null,
    Object? bounce = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      confirmations: null == confirmations
          ? _value.confirmations
          : confirmations // ignore: cast_nullable_to_non_nullable
              as List<PublicKey>,
      signsRequired: null == signsRequired
          ? _value.signsRequired
          : signsRequired // ignore: cast_nullable_to_non_nullable
              as int,
      signsReceived: null == signsReceived
          ? _value.signsReceived
          : signsReceived // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      dest: null == dest
          ? _value.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as Address,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      sendFlags: null == sendFlags
          ? _value.sendFlags
          : sendFlags // ignore: cast_nullable_to_non_nullable
              as int,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      bounce: null == bounce
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of MultisigPendingTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get creator {
    return $PublicKeyCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }

  /// Create a copy of MultisigPendingTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get dest {
    return $AddressCopyWith<$Res>(_value.dest, (value) {
      return _then(_value.copyWith(dest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MultisigPendingTransactionImplCopyWith<$Res>
    implements $MultisigPendingTransactionCopyWith<$Res> {
  factory _$$MultisigPendingTransactionImplCopyWith(
          _$MultisigPendingTransactionImpl value,
          $Res Function(_$MultisigPendingTransactionImpl) then) =
      __$$MultisigPendingTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<PublicKey> confirmations,
      int signsRequired,
      int signsReceived,
      PublicKey creator,
      int index,
      Address dest,
      @amountJsonConverter BigInt value,
      int sendFlags,
      String payload,
      bool bounce});

  @override
  $PublicKeyCopyWith<$Res> get creator;
  @override
  $AddressCopyWith<$Res> get dest;
}

/// @nodoc
class __$$MultisigPendingTransactionImplCopyWithImpl<$Res>
    extends _$MultisigPendingTransactionCopyWithImpl<$Res,
        _$MultisigPendingTransactionImpl>
    implements _$$MultisigPendingTransactionImplCopyWith<$Res> {
  __$$MultisigPendingTransactionImplCopyWithImpl(
      _$MultisigPendingTransactionImpl _value,
      $Res Function(_$MultisigPendingTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultisigPendingTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? confirmations = null,
    Object? signsRequired = null,
    Object? signsReceived = null,
    Object? creator = null,
    Object? index = null,
    Object? dest = null,
    Object? value = null,
    Object? sendFlags = null,
    Object? payload = null,
    Object? bounce = null,
  }) {
    return _then(_$MultisigPendingTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      confirmations: null == confirmations
          ? _value._confirmations
          : confirmations // ignore: cast_nullable_to_non_nullable
              as List<PublicKey>,
      signsRequired: null == signsRequired
          ? _value.signsRequired
          : signsRequired // ignore: cast_nullable_to_non_nullable
              as int,
      signsReceived: null == signsReceived
          ? _value.signsReceived
          : signsReceived // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      dest: null == dest
          ? _value.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as Address,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      sendFlags: null == sendFlags
          ? _value.sendFlags
          : sendFlags // ignore: cast_nullable_to_non_nullable
              as int,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      bounce: null == bounce
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MultisigPendingTransactionImpl implements _MultisigPendingTransaction {
  const _$MultisigPendingTransactionImpl(
      {required this.id,
      required final List<PublicKey> confirmations,
      required this.signsRequired,
      required this.signsReceived,
      required this.creator,
      required this.index,
      required this.dest,
      @amountJsonConverter required this.value,
      required this.sendFlags,
      required this.payload,
      required this.bounce})
      : _confirmations = confirmations;

  factory _$MultisigPendingTransactionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MultisigPendingTransactionImplFromJson(json);

  @override
  final String id;
  final List<PublicKey> _confirmations;
  @override
  List<PublicKey> get confirmations {
    if (_confirmations is EqualUnmodifiableListView) return _confirmations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_confirmations);
  }

  @override
  final int signsRequired;
  @override
  final int signsReceived;
  @override
  final PublicKey creator;
  @override
  final int index;
  @override
  final Address dest;
  @override
  @amountJsonConverter
  final BigInt value;
  @override
  final int sendFlags;
  @override
  final String payload;
  @override
  final bool bounce;

  @override
  String toString() {
    return 'MultisigPendingTransaction(id: $id, confirmations: $confirmations, signsRequired: $signsRequired, signsReceived: $signsReceived, creator: $creator, index: $index, dest: $dest, value: $value, sendFlags: $sendFlags, payload: $payload, bounce: $bounce)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultisigPendingTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._confirmations, _confirmations) &&
            (identical(other.signsRequired, signsRequired) ||
                other.signsRequired == signsRequired) &&
            (identical(other.signsReceived, signsReceived) ||
                other.signsReceived == signsReceived) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.dest, dest) || other.dest == dest) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.sendFlags, sendFlags) ||
                other.sendFlags == sendFlags) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.bounce, bounce) || other.bounce == bounce));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_confirmations),
      signsRequired,
      signsReceived,
      creator,
      index,
      dest,
      value,
      sendFlags,
      payload,
      bounce);

  /// Create a copy of MultisigPendingTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultisigPendingTransactionImplCopyWith<_$MultisigPendingTransactionImpl>
      get copyWith => __$$MultisigPendingTransactionImplCopyWithImpl<
          _$MultisigPendingTransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultisigPendingTransactionImplToJson(
      this,
    );
  }
}

abstract class _MultisigPendingTransaction
    implements MultisigPendingTransaction {
  const factory _MultisigPendingTransaction(
      {required final String id,
      required final List<PublicKey> confirmations,
      required final int signsRequired,
      required final int signsReceived,
      required final PublicKey creator,
      required final int index,
      required final Address dest,
      @amountJsonConverter required final BigInt value,
      required final int sendFlags,
      required final String payload,
      required final bool bounce}) = _$MultisigPendingTransactionImpl;

  factory _MultisigPendingTransaction.fromJson(Map<String, dynamic> json) =
      _$MultisigPendingTransactionImpl.fromJson;

  @override
  String get id;
  @override
  List<PublicKey> get confirmations;
  @override
  int get signsRequired;
  @override
  int get signsReceived;
  @override
  PublicKey get creator;
  @override
  int get index;
  @override
  Address get dest;
  @override
  @amountJsonConverter
  BigInt get value;
  @override
  int get sendFlags;
  @override
  String get payload;
  @override
  bool get bounce;

  /// Create a copy of MultisigPendingTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultisigPendingTransactionImplCopyWith<_$MultisigPendingTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
