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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultisigSubmitTransaction _$MultisigSubmitTransactionFromJson(
    Map<String, dynamic> json) {
  return _MultisigSubmitTransaction.fromJson(json);
}

/// @nodoc
mixin _$MultisigSubmitTransaction {
  String get custodian => throw _privateConstructorUsedError;
  String get dest => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  bool get bounce => throw _privateConstructorUsedError;
  bool get allBalance => throw _privateConstructorUsedError;
  String get payload => throw _privateConstructorUsedError;
  String get transId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      {String custodian,
      String dest,
      String value,
      bool bounce,
      bool allBalance,
      String payload,
      String transId});
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
              as String,
      dest: null == dest
          ? _value.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$_MultisigSubmitTransactionCopyWith<$Res>
    implements $MultisigSubmitTransactionCopyWith<$Res> {
  factory _$$_MultisigSubmitTransactionCopyWith(
          _$_MultisigSubmitTransaction value,
          $Res Function(_$_MultisigSubmitTransaction) then) =
      __$$_MultisigSubmitTransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String custodian,
      String dest,
      String value,
      bool bounce,
      bool allBalance,
      String payload,
      String transId});
}

/// @nodoc
class __$$_MultisigSubmitTransactionCopyWithImpl<$Res>
    extends _$MultisigSubmitTransactionCopyWithImpl<$Res,
        _$_MultisigSubmitTransaction>
    implements _$$_MultisigSubmitTransactionCopyWith<$Res> {
  __$$_MultisigSubmitTransactionCopyWithImpl(
      _$_MultisigSubmitTransaction _value,
      $Res Function(_$_MultisigSubmitTransaction) _then)
      : super(_value, _then);

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
    return _then(_$_MultisigSubmitTransaction(
      custodian: null == custodian
          ? _value.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as String,
      dest: null == dest
          ? _value.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_MultisigSubmitTransaction implements _MultisigSubmitTransaction {
  const _$_MultisigSubmitTransaction(
      {required this.custodian,
      required this.dest,
      required this.value,
      required this.bounce,
      required this.allBalance,
      required this.payload,
      required this.transId});

  factory _$_MultisigSubmitTransaction.fromJson(Map<String, dynamic> json) =>
      _$$_MultisigSubmitTransactionFromJson(json);

  @override
  final String custodian;
  @override
  final String dest;
  @override
  final String value;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultisigSubmitTransaction &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, custodian, dest, value, bounce,
      allBalance, payload, transId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultisigSubmitTransactionCopyWith<_$_MultisigSubmitTransaction>
      get copyWith => __$$_MultisigSubmitTransactionCopyWithImpl<
          _$_MultisigSubmitTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultisigSubmitTransactionToJson(
      this,
    );
  }
}

abstract class _MultisigSubmitTransaction implements MultisigSubmitTransaction {
  const factory _MultisigSubmitTransaction(
      {required final String custodian,
      required final String dest,
      required final String value,
      required final bool bounce,
      required final bool allBalance,
      required final String payload,
      required final String transId}) = _$_MultisigSubmitTransaction;

  factory _MultisigSubmitTransaction.fromJson(Map<String, dynamic> json) =
      _$_MultisigSubmitTransaction.fromJson;

  @override
  String get custodian;
  @override
  String get dest;
  @override
  String get value;
  @override
  bool get bounce;
  @override
  bool get allBalance;
  @override
  String get payload;
  @override
  String get transId;
  @override
  @JsonKey(ignore: true)
  _$$_MultisigSubmitTransactionCopyWith<_$_MultisigSubmitTransaction>
      get copyWith => throw _privateConstructorUsedError;
}
