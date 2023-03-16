// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$MultisigConfirmTransactionCopyWithImpl<$Res>;
  $Res call({String custodian, String transactionId});
}

/// @nodoc
class _$MultisigConfirmTransactionCopyWithImpl<$Res>
    implements $MultisigConfirmTransactionCopyWith<$Res> {
  _$MultisigConfirmTransactionCopyWithImpl(this._value, this._then);

  final MultisigConfirmTransaction _value;
  // ignore: unused_field
  final $Res Function(MultisigConfirmTransaction) _then;

  @override
  $Res call({
    Object? custodian = freezed,
    Object? transactionId = freezed,
  }) {
    return _then(_value.copyWith(
      custodian: custodian == freezed
          ? _value.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
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
  $Res call({String custodian, String transactionId});
}

/// @nodoc
class __$$_MultisigConfirmTransactionCopyWithImpl<$Res>
    extends _$MultisigConfirmTransactionCopyWithImpl<$Res>
    implements _$$_MultisigConfirmTransactionCopyWith<$Res> {
  __$$_MultisigConfirmTransactionCopyWithImpl(
      _$_MultisigConfirmTransaction _value,
      $Res Function(_$_MultisigConfirmTransaction) _then)
      : super(_value, (v) => _then(v as _$_MultisigConfirmTransaction));

  @override
  _$_MultisigConfirmTransaction get _value =>
      super._value as _$_MultisigConfirmTransaction;

  @override
  $Res call({
    Object? custodian = freezed,
    Object? transactionId = freezed,
  }) {
    return _then(_$_MultisigConfirmTransaction(
      custodian: custodian == freezed
          ? _value.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: transactionId == freezed
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
            const DeepCollectionEquality().equals(other.custodian, custodian) &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(custodian),
      const DeepCollectionEquality().hash(transactionId));

  @JsonKey(ignore: true)
  @override
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
