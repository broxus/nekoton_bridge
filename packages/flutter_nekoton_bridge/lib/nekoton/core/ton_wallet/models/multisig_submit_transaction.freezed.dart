// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$MultisigSubmitTransactionCopyWithImpl<$Res>;
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
class _$MultisigSubmitTransactionCopyWithImpl<$Res>
    implements $MultisigSubmitTransactionCopyWith<$Res> {
  _$MultisigSubmitTransactionCopyWithImpl(this._value, this._then);

  final MultisigSubmitTransaction _value;
  // ignore: unused_field
  final $Res Function(MultisigSubmitTransaction) _then;

  @override
  $Res call({
    Object? custodian = freezed,
    Object? dest = freezed,
    Object? value = freezed,
    Object? bounce = freezed,
    Object? allBalance = freezed,
    Object? payload = freezed,
    Object? transId = freezed,
  }) {
    return _then(_value.copyWith(
      custodian: custodian == freezed
          ? _value.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as String,
      dest: dest == freezed
          ? _value.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      bounce: bounce == freezed
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      allBalance: allBalance == freezed
          ? _value.allBalance
          : allBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      transId: transId == freezed
          ? _value.transId
          : transId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
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
    extends _$MultisigSubmitTransactionCopyWithImpl<$Res>
    implements _$$_MultisigSubmitTransactionCopyWith<$Res> {
  __$$_MultisigSubmitTransactionCopyWithImpl(
      _$_MultisigSubmitTransaction _value,
      $Res Function(_$_MultisigSubmitTransaction) _then)
      : super(_value, (v) => _then(v as _$_MultisigSubmitTransaction));

  @override
  _$_MultisigSubmitTransaction get _value =>
      super._value as _$_MultisigSubmitTransaction;

  @override
  $Res call({
    Object? custodian = freezed,
    Object? dest = freezed,
    Object? value = freezed,
    Object? bounce = freezed,
    Object? allBalance = freezed,
    Object? payload = freezed,
    Object? transId = freezed,
  }) {
    return _then(_$_MultisigSubmitTransaction(
      custodian: custodian == freezed
          ? _value.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as String,
      dest: dest == freezed
          ? _value.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      bounce: bounce == freezed
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      allBalance: allBalance == freezed
          ? _value.allBalance
          : allBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      transId: transId == freezed
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
            const DeepCollectionEquality().equals(other.custodian, custodian) &&
            const DeepCollectionEquality().equals(other.dest, dest) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.bounce, bounce) &&
            const DeepCollectionEquality()
                .equals(other.allBalance, allBalance) &&
            const DeepCollectionEquality().equals(other.payload, payload) &&
            const DeepCollectionEquality().equals(other.transId, transId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(custodian),
      const DeepCollectionEquality().hash(dest),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(bounce),
      const DeepCollectionEquality().hash(allBalance),
      const DeepCollectionEquality().hash(payload),
      const DeepCollectionEquality().hash(transId));

  @JsonKey(ignore: true)
  @override
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
