// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signed_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignedMessage _$SignedMessageFromJson(Map<String, dynamic> json) {
  return _SignedMessage.fromJson(json);
}

/// @nodoc
mixin _$SignedMessage {
  String get hash => throw _privateConstructorUsedError;
  int get expireAt => throw _privateConstructorUsedError;
  String get boc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignedMessageCopyWith<SignedMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignedMessageCopyWith<$Res> {
  factory $SignedMessageCopyWith(
          SignedMessage value, $Res Function(SignedMessage) then) =
      _$SignedMessageCopyWithImpl<$Res>;
  $Res call({String hash, int expireAt, String boc});
}

/// @nodoc
class _$SignedMessageCopyWithImpl<$Res>
    implements $SignedMessageCopyWith<$Res> {
  _$SignedMessageCopyWithImpl(this._value, this._then);

  final SignedMessage _value;
  // ignore: unused_field
  final $Res Function(SignedMessage) _then;

  @override
  $Res call({
    Object? hash = freezed,
    Object? expireAt = freezed,
    Object? boc = freezed,
  }) {
    return _then(_value.copyWith(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: expireAt == freezed
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as int,
      boc: boc == freezed
          ? _value.boc
          : boc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SignedMessageCopyWith<$Res>
    implements $SignedMessageCopyWith<$Res> {
  factory _$$_SignedMessageCopyWith(
          _$_SignedMessage value, $Res Function(_$_SignedMessage) then) =
      __$$_SignedMessageCopyWithImpl<$Res>;
  @override
  $Res call({String hash, int expireAt, String boc});
}

/// @nodoc
class __$$_SignedMessageCopyWithImpl<$Res>
    extends _$SignedMessageCopyWithImpl<$Res>
    implements _$$_SignedMessageCopyWith<$Res> {
  __$$_SignedMessageCopyWithImpl(
      _$_SignedMessage _value, $Res Function(_$_SignedMessage) _then)
      : super(_value, (v) => _then(v as _$_SignedMessage));

  @override
  _$_SignedMessage get _value => super._value as _$_SignedMessage;

  @override
  $Res call({
    Object? hash = freezed,
    Object? expireAt = freezed,
    Object? boc = freezed,
  }) {
    return _then(_$_SignedMessage(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: expireAt == freezed
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as int,
      boc: boc == freezed
          ? _value.boc
          : boc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignedMessage implements _SignedMessage {
  const _$_SignedMessage(
      {required this.hash, required this.expireAt, required this.boc});

  factory _$_SignedMessage.fromJson(Map<String, dynamic> json) =>
      _$$_SignedMessageFromJson(json);

  @override
  final String hash;
  @override
  final int expireAt;
  @override
  final String boc;

  @override
  String toString() {
    return 'SignedMessage(hash: $hash, expireAt: $expireAt, boc: $boc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignedMessage &&
            const DeepCollectionEquality().equals(other.hash, hash) &&
            const DeepCollectionEquality().equals(other.expireAt, expireAt) &&
            const DeepCollectionEquality().equals(other.boc, boc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hash),
      const DeepCollectionEquality().hash(expireAt),
      const DeepCollectionEquality().hash(boc));

  @JsonKey(ignore: true)
  @override
  _$$_SignedMessageCopyWith<_$_SignedMessage> get copyWith =>
      __$$_SignedMessageCopyWithImpl<_$_SignedMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignedMessageToJson(
      this,
    );
  }
}

abstract class _SignedMessage implements SignedMessage {
  const factory _SignedMessage(
      {required final String hash,
      required final int expireAt,
      required final String boc}) = _$_SignedMessage;

  factory _SignedMessage.fromJson(Map<String, dynamic> json) =
      _$_SignedMessage.fromJson;

  @override
  String get hash;
  @override
  int get expireAt;
  @override
  String get boc;
  @override
  @JsonKey(ignore: true)
  _$$_SignedMessageCopyWith<_$_SignedMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
