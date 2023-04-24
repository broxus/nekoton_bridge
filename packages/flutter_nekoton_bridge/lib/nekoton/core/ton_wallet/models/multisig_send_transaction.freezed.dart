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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultisigSendTransaction _$MultisigSendTransactionFromJson(
    Map<String, dynamic> json) {
  return _MultisigSendTransaction.fromJson(json);
}

/// @nodoc
mixin _$MultisigSendTransaction {
  String get dest => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
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
      {String dest, String value, bool bounce, int flags, String payload});
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
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$_MultisigSendTransactionCopyWith<$Res>
    implements $MultisigSendTransactionCopyWith<$Res> {
  factory _$$_MultisigSendTransactionCopyWith(_$_MultisigSendTransaction value,
          $Res Function(_$_MultisigSendTransaction) then) =
      __$$_MultisigSendTransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dest, String value, bool bounce, int flags, String payload});
}

/// @nodoc
class __$$_MultisigSendTransactionCopyWithImpl<$Res>
    extends _$MultisigSendTransactionCopyWithImpl<$Res,
        _$_MultisigSendTransaction>
    implements _$$_MultisigSendTransactionCopyWith<$Res> {
  __$$_MultisigSendTransactionCopyWithImpl(_$_MultisigSendTransaction _value,
      $Res Function(_$_MultisigSendTransaction) _then)
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
    return _then(_$_MultisigSendTransaction(
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
class _$_MultisigSendTransaction implements _MultisigSendTransaction {
  const _$_MultisigSendTransaction(
      {required this.dest,
      required this.value,
      required this.bounce,
      required this.flags,
      required this.payload});

  factory _$_MultisigSendTransaction.fromJson(Map<String, dynamic> json) =>
      _$$_MultisigSendTransactionFromJson(json);

  @override
  final String dest;
  @override
  final String value;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultisigSendTransaction &&
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
  _$$_MultisigSendTransactionCopyWith<_$_MultisigSendTransaction>
      get copyWith =>
          __$$_MultisigSendTransactionCopyWithImpl<_$_MultisigSendTransaction>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultisigSendTransactionToJson(
      this,
    );
  }
}

abstract class _MultisigSendTransaction implements MultisigSendTransaction {
  const factory _MultisigSendTransaction(
      {required final String dest,
      required final String value,
      required final bool bounce,
      required final int flags,
      required final String payload}) = _$_MultisigSendTransaction;

  factory _MultisigSendTransaction.fromJson(Map<String, dynamic> json) =
      _$_MultisigSendTransaction.fromJson;

  @override
  String get dest;
  @override
  String get value;
  @override
  bool get bounce;
  @override
  int get flags;
  @override
  String get payload;
  @override
  @JsonKey(ignore: true)
  _$$_MultisigSendTransactionCopyWith<_$_MultisigSendTransaction>
      get copyWith => throw _privateConstructorUsedError;
}
