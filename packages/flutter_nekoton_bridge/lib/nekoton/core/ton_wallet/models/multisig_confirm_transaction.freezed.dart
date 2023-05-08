// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multisig_confirm_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultisigConfirmTransaction _$MultisigConfirmTransactionFromJson(
    Map<String, dynamic> json) {
  return _MultisigConfirmTransaction.fromJson(json);
}

/// @nodoc
mixin _$MultisigConfirmTransaction {
  String get custodian => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultisigConfirmTransactionCopyWith<MultisigConfirmTransaction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultisigConfirmTransactionCopyWith<$Res> {
  factory $MultisigConfirmTransactionCopyWith(MultisigConfirmTransaction value,
          $Res Function(MultisigConfirmTransaction) then) =
      _$MultisigConfirmTransactionCopyWithImpl<$Res,
          MultisigConfirmTransaction>;
  @useResult
  $Res call({String custodian, String transactionId});
}

/// @nodoc
class _$MultisigConfirmTransactionCopyWithImpl<$Res,
        $Val extends MultisigConfirmTransaction>
    implements $MultisigConfirmTransactionCopyWith<$Res> {
  _$MultisigConfirmTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custodian = null,
    Object? transactionId = null,
  }) {
    return _then(_value.copyWith(
      custodian: null == custodian
          ? _value.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MultisigConfirmTransactionCopyWith<$Res>
    implements $MultisigConfirmTransactionCopyWith<$Res> {
  factory _$$_MultisigConfirmTransactionCopyWith(
          _$_MultisigConfirmTransaction value,
          $Res Function(_$_MultisigConfirmTransaction) then) =
      __$$_MultisigConfirmTransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String custodian, String transactionId});
}

/// @nodoc
class __$$_MultisigConfirmTransactionCopyWithImpl<$Res>
    extends _$MultisigConfirmTransactionCopyWithImpl<$Res,
        _$_MultisigConfirmTransaction>
    implements _$$_MultisigConfirmTransactionCopyWith<$Res> {
  __$$_MultisigConfirmTransactionCopyWithImpl(
      _$_MultisigConfirmTransaction _value,
      $Res Function(_$_MultisigConfirmTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custodian = null,
    Object? transactionId = null,
  }) {
    return _then(_$_MultisigConfirmTransaction(
      custodian: null == custodian
          ? _value.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MultisigConfirmTransaction implements _MultisigConfirmTransaction {
  const _$_MultisigConfirmTransaction(
      {required this.custodian, required this.transactionId});

  factory _$_MultisigConfirmTransaction.fromJson(Map<String, dynamic> json) =>
      _$$_MultisigConfirmTransactionFromJson(json);

  @override
  final String custodian;
  @override
  final String transactionId;

  @override
  String toString() {
    return 'MultisigConfirmTransaction(custodian: $custodian, transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultisigConfirmTransaction &&
            (identical(other.custodian, custodian) ||
                other.custodian == custodian) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, custodian, transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultisigConfirmTransactionCopyWith<_$_MultisigConfirmTransaction>
      get copyWith => __$$_MultisigConfirmTransactionCopyWithImpl<
          _$_MultisigConfirmTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultisigConfirmTransactionToJson(
      this,
    );
  }
}

abstract class _MultisigConfirmTransaction
    implements MultisigConfirmTransaction {
  const factory _MultisigConfirmTransaction(
      {required final String custodian,
      required final String transactionId}) = _$_MultisigConfirmTransaction;

  factory _MultisigConfirmTransaction.fromJson(Map<String, dynamic> json) =
      _$_MultisigConfirmTransaction.fromJson;

  @override
  String get custodian;
  @override
  String get transactionId;
  @override
  @JsonKey(ignore: true)
  _$$_MultisigConfirmTransactionCopyWith<_$_MultisigConfirmTransaction>
      get copyWith => throw _privateConstructorUsedError;
}
