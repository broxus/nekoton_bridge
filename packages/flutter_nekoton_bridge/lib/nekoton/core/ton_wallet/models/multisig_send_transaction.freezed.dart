// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multisig_send_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MultisigSendTransaction _$MultisigSendTransactionFromJson(
    Map<String, dynamic> json) {
  return _MultisigSendTransaction.fromJson(json);
}

/// @nodoc
mixin _$MultisigSendTransaction {
  Address get dest => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get value => throw _privateConstructorUsedError;
  bool get bounce => throw _privateConstructorUsedError;
  int get flags => throw _privateConstructorUsedError;
  String get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultisigSendTransactionCopyWith<MultisigSendTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultisigSendTransactionCopyWith<$Res> {
  factory $MultisigSendTransactionCopyWith(MultisigSendTransaction value,
          $Res Function(MultisigSendTransaction) then) =
      _$MultisigSendTransactionCopyWithImpl<$Res, MultisigSendTransaction>;
  @useResult
  $Res call(
      {Address dest,
      @amountJsonConverter BigInt value,
      bool bounce,
      int flags,
      String payload});

  $AddressCopyWith<$Res> get dest;
}

/// @nodoc
class _$MultisigSendTransactionCopyWithImpl<$Res,
        $Val extends MultisigSendTransaction>
    implements $MultisigSendTransactionCopyWith<$Res> {
  _$MultisigSendTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dest = null,
    Object? value = null,
    Object? bounce = null,
    Object? flags = null,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
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
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as int,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get dest {
    return $AddressCopyWith<$Res>(_value.dest, (value) {
      return _then(_value.copyWith(dest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MultisigSendTransactionImplCopyWith<$Res>
    implements $MultisigSendTransactionCopyWith<$Res> {
  factory _$$MultisigSendTransactionImplCopyWith(
          _$MultisigSendTransactionImpl value,
          $Res Function(_$MultisigSendTransactionImpl) then) =
      __$$MultisigSendTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address dest,
      @amountJsonConverter BigInt value,
      bool bounce,
      int flags,
      String payload});

  @override
  $AddressCopyWith<$Res> get dest;
}

/// @nodoc
class __$$MultisigSendTransactionImplCopyWithImpl<$Res>
    extends _$MultisigSendTransactionCopyWithImpl<$Res,
        _$MultisigSendTransactionImpl>
    implements _$$MultisigSendTransactionImplCopyWith<$Res> {
  __$$MultisigSendTransactionImplCopyWithImpl(
      _$MultisigSendTransactionImpl _value,
      $Res Function(_$MultisigSendTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dest = null,
    Object? value = null,
    Object? bounce = null,
    Object? flags = null,
    Object? payload = null,
  }) {
    return _then(_$MultisigSendTransactionImpl(
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
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as int,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultisigSendTransactionImpl implements _MultisigSendTransaction {
  const _$MultisigSendTransactionImpl(
      {required this.dest,
      @amountJsonConverter required this.value,
      required this.bounce,
      required this.flags,
      required this.payload});

  factory _$MultisigSendTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultisigSendTransactionImplFromJson(json);

  @override
  final Address dest;
  @override
  @amountJsonConverter
  final BigInt value;
  @override
  final bool bounce;
  @override
  final int flags;
  @override
  final String payload;

  @override
  String toString() {
    return 'MultisigSendTransaction(dest: $dest, value: $value, bounce: $bounce, flags: $flags, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultisigSendTransactionImpl &&
            (identical(other.dest, dest) || other.dest == dest) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.bounce, bounce) || other.bounce == bounce) &&
            (identical(other.flags, flags) || other.flags == flags) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dest, value, bounce, flags, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultisigSendTransactionImplCopyWith<_$MultisigSendTransactionImpl>
      get copyWith => __$$MultisigSendTransactionImplCopyWithImpl<
          _$MultisigSendTransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultisigSendTransactionImplToJson(
      this,
    );
  }
}

abstract class _MultisigSendTransaction implements MultisigSendTransaction {
  const factory _MultisigSendTransaction(
      {required final Address dest,
      @amountJsonConverter required final BigInt value,
      required final bool bounce,
      required final int flags,
      required final String payload}) = _$MultisigSendTransactionImpl;

  factory _MultisigSendTransaction.fromJson(Map<String, dynamic> json) =
      _$MultisigSendTransactionImpl.fromJson;

  @override
  Address get dest;
  @override
  @amountJsonConverter
  BigInt get value;
  @override
  bool get bounce;
  @override
  int get flags;
  @override
  String get payload;
  @override
  @JsonKey(ignore: true)
  _$$MultisigSendTransactionImplCopyWith<_$MultisigSendTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
