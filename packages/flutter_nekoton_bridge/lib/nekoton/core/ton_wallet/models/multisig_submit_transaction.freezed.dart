// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multisig_submit_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MultisigSubmitTransaction _$MultisigSubmitTransactionFromJson(
    Map<String, dynamic> json) {
  return _MultisigSubmitTransaction.fromJson(json);
}

/// @nodoc
mixin _$MultisigSubmitTransaction {
  PublicKey get custodian => throw _privateConstructorUsedError;
  Address get dest => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get value => throw _privateConstructorUsedError;
  bool get bounce => throw _privateConstructorUsedError;
  bool get allBalance => throw _privateConstructorUsedError;
  String get payload => throw _privateConstructorUsedError;
  String get transId => throw _privateConstructorUsedError;

  /// Serializes this MultisigSubmitTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MultisigSubmitTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MultisigSubmitTransactionCopyWith<MultisigSubmitTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultisigSubmitTransactionCopyWith<$Res> {
  factory $MultisigSubmitTransactionCopyWith(MultisigSubmitTransaction value,
          $Res Function(MultisigSubmitTransaction) then) =
      _$MultisigSubmitTransactionCopyWithImpl<$Res, MultisigSubmitTransaction>;
  @useResult
  $Res call(
      {PublicKey custodian,
      Address dest,
      @amountJsonConverter BigInt value,
      bool bounce,
      bool allBalance,
      String payload,
      String transId});

  $PublicKeyCopyWith<$Res> get custodian;
  $AddressCopyWith<$Res> get dest;
}

/// @nodoc
class _$MultisigSubmitTransactionCopyWithImpl<$Res,
        $Val extends MultisigSubmitTransaction>
    implements $MultisigSubmitTransactionCopyWith<$Res> {
  _$MultisigSubmitTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultisigSubmitTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custodian = null,
    Object? dest = null,
    Object? value = null,
    Object? bounce = null,
    Object? allBalance = null,
    Object? payload = null,
    Object? transId = null,
  }) {
    return _then(_value.copyWith(
      custodian: null == custodian
          ? _value.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      dest: null == dest
          ? _value.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as Address,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bounce: null == bounce
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      allBalance: null == allBalance
          ? _value.allBalance
          : allBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      transId: null == transId
          ? _value.transId
          : transId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of MultisigSubmitTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get custodian {
    return $PublicKeyCopyWith<$Res>(_value.custodian, (value) {
      return _then(_value.copyWith(custodian: value) as $Val);
    });
  }

  /// Create a copy of MultisigSubmitTransaction
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
abstract class _$$MultisigSubmitTransactionImplCopyWith<$Res>
    implements $MultisigSubmitTransactionCopyWith<$Res> {
  factory _$$MultisigSubmitTransactionImplCopyWith(
          _$MultisigSubmitTransactionImpl value,
          $Res Function(_$MultisigSubmitTransactionImpl) then) =
      __$$MultisigSubmitTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PublicKey custodian,
      Address dest,
      @amountJsonConverter BigInt value,
      bool bounce,
      bool allBalance,
      String payload,
      String transId});

  @override
  $PublicKeyCopyWith<$Res> get custodian;
  @override
  $AddressCopyWith<$Res> get dest;
}

/// @nodoc
class __$$MultisigSubmitTransactionImplCopyWithImpl<$Res>
    extends _$MultisigSubmitTransactionCopyWithImpl<$Res,
        _$MultisigSubmitTransactionImpl>
    implements _$$MultisigSubmitTransactionImplCopyWith<$Res> {
  __$$MultisigSubmitTransactionImplCopyWithImpl(
      _$MultisigSubmitTransactionImpl _value,
      $Res Function(_$MultisigSubmitTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultisigSubmitTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custodian = null,
    Object? dest = null,
    Object? value = null,
    Object? bounce = null,
    Object? allBalance = null,
    Object? payload = null,
    Object? transId = null,
  }) {
    return _then(_$MultisigSubmitTransactionImpl(
      custodian: null == custodian
          ? _value.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      dest: null == dest
          ? _value.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as Address,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bounce: null == bounce
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      allBalance: null == allBalance
          ? _value.allBalance
          : allBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      transId: null == transId
          ? _value.transId
          : transId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultisigSubmitTransactionImpl implements _MultisigSubmitTransaction {
  const _$MultisigSubmitTransactionImpl(
      {required this.custodian,
      required this.dest,
      @amountJsonConverter required this.value,
      required this.bounce,
      required this.allBalance,
      required this.payload,
      required this.transId});

  factory _$MultisigSubmitTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultisigSubmitTransactionImplFromJson(json);

  @override
  final PublicKey custodian;
  @override
  final Address dest;
  @override
  @amountJsonConverter
  final BigInt value;
  @override
  final bool bounce;
  @override
  final bool allBalance;
  @override
  final String payload;
  @override
  final String transId;

  @override
  String toString() {
    return 'MultisigSubmitTransaction(custodian: $custodian, dest: $dest, value: $value, bounce: $bounce, allBalance: $allBalance, payload: $payload, transId: $transId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultisigSubmitTransactionImpl &&
            (identical(other.custodian, custodian) ||
                other.custodian == custodian) &&
            (identical(other.dest, dest) || other.dest == dest) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.bounce, bounce) || other.bounce == bounce) &&
            (identical(other.allBalance, allBalance) ||
                other.allBalance == allBalance) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.transId, transId) || other.transId == transId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, custodian, dest, value, bounce,
      allBalance, payload, transId);

  /// Create a copy of MultisigSubmitTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultisigSubmitTransactionImplCopyWith<_$MultisigSubmitTransactionImpl>
      get copyWith => __$$MultisigSubmitTransactionImplCopyWithImpl<
          _$MultisigSubmitTransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultisigSubmitTransactionImplToJson(
      this,
    );
  }
}

abstract class _MultisigSubmitTransaction implements MultisigSubmitTransaction {
  const factory _MultisigSubmitTransaction(
      {required final PublicKey custodian,
      required final Address dest,
      @amountJsonConverter required final BigInt value,
      required final bool bounce,
      required final bool allBalance,
      required final String payload,
      required final String transId}) = _$MultisigSubmitTransactionImpl;

  factory _MultisigSubmitTransaction.fromJson(Map<String, dynamic> json) =
      _$MultisigSubmitTransactionImpl.fromJson;

  @override
  PublicKey get custodian;
  @override
  Address get dest;
  @override
  @amountJsonConverter
  BigInt get value;
  @override
  bool get bounce;
  @override
  bool get allBalance;
  @override
  String get payload;
  @override
  String get transId;

  /// Create a copy of MultisigSubmitTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultisigSubmitTransactionImplCopyWith<_$MultisigSubmitTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
