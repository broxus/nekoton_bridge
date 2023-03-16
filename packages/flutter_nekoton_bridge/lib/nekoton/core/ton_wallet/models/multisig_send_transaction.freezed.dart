// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$MultisigSendTransactionCopyWithImpl<$Res>;
  $Res call(
      {String dest, String value, bool bounce, int flags, String payload});
}

/// @nodoc
class _$MultisigSendTransactionCopyWithImpl<$Res>
    implements $MultisigSendTransactionCopyWith<$Res> {
  _$MultisigSendTransactionCopyWithImpl(this._value, this._then);

  final MultisigSendTransaction _value;
  // ignore: unused_field
  final $Res Function(MultisigSendTransaction) _then;

  @override
  $Res call({
    Object? dest = freezed,
    Object? value = freezed,
    Object? bounce = freezed,
    Object? flags = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
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
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as int,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MultisigSendTransactionCopyWith<$Res>
    implements $MultisigSendTransactionCopyWith<$Res> {
  factory _$$_MultisigSendTransactionCopyWith(_$_MultisigSendTransaction value,
          $Res Function(_$_MultisigSendTransaction) then) =
      __$$_MultisigSendTransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String dest, String value, bool bounce, int flags, String payload});
}

/// @nodoc
class __$$_MultisigSendTransactionCopyWithImpl<$Res>
    extends _$MultisigSendTransactionCopyWithImpl<$Res>
    implements _$$_MultisigSendTransactionCopyWith<$Res> {
  __$$_MultisigSendTransactionCopyWithImpl(_$_MultisigSendTransaction _value,
      $Res Function(_$_MultisigSendTransaction) _then)
      : super(_value, (v) => _then(v as _$_MultisigSendTransaction));

  @override
  _$_MultisigSendTransaction get _value =>
      super._value as _$_MultisigSendTransaction;

  @override
  $Res call({
    Object? dest = freezed,
    Object? value = freezed,
    Object? bounce = freezed,
    Object? flags = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_MultisigSendTransaction(
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
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as int,
      payload: payload == freezed
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
            const DeepCollectionEquality().equals(other.dest, dest) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.bounce, bounce) &&
            const DeepCollectionEquality().equals(other.flags, flags) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dest),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(bounce),
      const DeepCollectionEquality().hash(flags),
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
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
