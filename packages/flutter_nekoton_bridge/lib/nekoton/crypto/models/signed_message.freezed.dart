// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  @dateSecondsSinceEpochJsonConverter
  DateTime get expireAt => throw _privateConstructorUsedError;
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
      _$SignedMessageCopyWithImpl<$Res, SignedMessage>;
  @useResult
  $Res call(
      {String hash,
      @dateSecondsSinceEpochJsonConverter DateTime expireAt,
      String boc});
}

/// @nodoc
class _$SignedMessageCopyWithImpl<$Res, $Val extends SignedMessage>
    implements $SignedMessageCopyWith<$Res> {
  _$SignedMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? expireAt = null,
    Object? boc = null,
  }) {
    return _then(_value.copyWith(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      boc: null == boc
          ? _value.boc
          : boc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignedMessageImplCopyWith<$Res>
    implements $SignedMessageCopyWith<$Res> {
  factory _$$SignedMessageImplCopyWith(
          _$SignedMessageImpl value, $Res Function(_$SignedMessageImpl) then) =
      __$$SignedMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hash,
      @dateSecondsSinceEpochJsonConverter DateTime expireAt,
      String boc});
}

/// @nodoc
class __$$SignedMessageImplCopyWithImpl<$Res>
    extends _$SignedMessageCopyWithImpl<$Res, _$SignedMessageImpl>
    implements _$$SignedMessageImplCopyWith<$Res> {
  __$$SignedMessageImplCopyWithImpl(
      _$SignedMessageImpl _value, $Res Function(_$SignedMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? expireAt = null,
    Object? boc = null,
  }) {
    return _then(_$SignedMessageImpl(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      boc: null == boc
          ? _value.boc
          : boc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignedMessageImpl implements _SignedMessage {
  const _$SignedMessageImpl(
      {required this.hash,
      @dateSecondsSinceEpochJsonConverter required this.expireAt,
      required this.boc});

  factory _$SignedMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignedMessageImplFromJson(json);

  @override
  final String hash;
  @override
  @dateSecondsSinceEpochJsonConverter
  final DateTime expireAt;
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
            other is _$SignedMessageImpl &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt) &&
            (identical(other.boc, boc) || other.boc == boc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hash, expireAt, boc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedMessageImplCopyWith<_$SignedMessageImpl> get copyWith =>
      __$$SignedMessageImplCopyWithImpl<_$SignedMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignedMessageImplToJson(
      this,
    );
  }
}

abstract class _SignedMessage implements SignedMessage {
  const factory _SignedMessage(
      {required final String hash,
      @dateSecondsSinceEpochJsonConverter required final DateTime expireAt,
      required final String boc}) = _$SignedMessageImpl;

  factory _SignedMessage.fromJson(Map<String, dynamic> json) =
      _$SignedMessageImpl.fromJson;

  @override
  String get hash;
  @override
  @dateSecondsSinceEpochJsonConverter
  DateTime get expireAt;
  @override
  String get boc;
  @override
  @JsonKey(ignore: true)
  _$$SignedMessageImplCopyWith<_$SignedMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
