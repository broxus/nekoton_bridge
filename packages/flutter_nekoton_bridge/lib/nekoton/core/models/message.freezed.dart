// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String get hash => throw _privateConstructorUsedError;
  Address? get src => throw _privateConstructorUsedError;
  Address? get dst => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get value => throw _privateConstructorUsedError;
  bool get bounce => throw _privateConstructorUsedError;
  bool get bounced => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get bodyHash => throw _privateConstructorUsedError;

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {String hash,
      Address? src,
      Address? dst,
      @amountJsonConverter BigInt value,
      bool bounce,
      bool bounced,
      String? body,
      String? bodyHash});

  $AddressCopyWith<$Res>? get src;
  $AddressCopyWith<$Res>? get dst;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? src = freezed,
    Object? dst = freezed,
    Object? value = null,
    Object? bounce = null,
    Object? bounced = null,
    Object? body = freezed,
    Object? bodyHash = freezed,
  }) {
    return _then(_value.copyWith(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Address?,
      dst: freezed == dst
          ? _value.dst
          : dst // ignore: cast_nullable_to_non_nullable
              as Address?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bounce: null == bounce
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      bounced: null == bounced
          ? _value.bounced
          : bounced // ignore: cast_nullable_to_non_nullable
              as bool,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyHash: freezed == bodyHash
          ? _value.bodyHash
          : bodyHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get src {
    if (_value.src == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.src!, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get dst {
    if (_value.dst == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.dst!, (value) {
      return _then(_value.copyWith(dst: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hash,
      Address? src,
      Address? dst,
      @amountJsonConverter BigInt value,
      bool bounce,
      bool bounced,
      String? body,
      String? bodyHash});

  @override
  $AddressCopyWith<$Res>? get src;
  @override
  $AddressCopyWith<$Res>? get dst;
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? src = freezed,
    Object? dst = freezed,
    Object? value = null,
    Object? bounce = null,
    Object? bounced = null,
    Object? body = freezed,
    Object? bodyHash = freezed,
  }) {
    return _then(_$MessageImpl(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Address?,
      dst: freezed == dst
          ? _value.dst
          : dst // ignore: cast_nullable_to_non_nullable
              as Address?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bounce: null == bounce
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      bounced: null == bounced
          ? _value.bounced
          : bounced // ignore: cast_nullable_to_non_nullable
              as bool,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyHash: freezed == bodyHash
          ? _value.bodyHash
          : bodyHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  const _$MessageImpl(
      {required this.hash,
      this.src,
      this.dst,
      @amountJsonConverter required this.value,
      required this.bounce,
      required this.bounced,
      this.body,
      this.bodyHash});

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final String hash;
  @override
  final Address? src;
  @override
  final Address? dst;
  @override
  @amountJsonConverter
  final BigInt value;
  @override
  final bool bounce;
  @override
  final bool bounced;
  @override
  final String? body;
  @override
  final String? bodyHash;

  @override
  String toString() {
    return 'Message(hash: $hash, src: $src, dst: $dst, value: $value, bounce: $bounce, bounced: $bounced, body: $body, bodyHash: $bodyHash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.dst, dst) || other.dst == dst) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.bounce, bounce) || other.bounce == bounce) &&
            (identical(other.bounced, bounced) || other.bounced == bounced) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.bodyHash, bodyHash) ||
                other.bodyHash == bodyHash));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, hash, src, dst, value, bounce, bounced, body, bodyHash);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required final String hash,
      final Address? src,
      final Address? dst,
      @amountJsonConverter required final BigInt value,
      required final bool bounce,
      required final bool bounced,
      final String? body,
      final String? bodyHash}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  String get hash;
  @override
  Address? get src;
  @override
  Address? get dst;
  @override
  @amountJsonConverter
  BigInt get value;
  @override
  bool get bounce;
  @override
  bool get bounced;
  @override
  String? get body;
  @override
  String? get bodyHash;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
