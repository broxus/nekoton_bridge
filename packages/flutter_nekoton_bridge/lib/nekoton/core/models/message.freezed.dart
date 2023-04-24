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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String get hash => throw _privateConstructorUsedError;
  String? get src => throw _privateConstructorUsedError;
  String? get dst => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  bool get bounce => throw _privateConstructorUsedError;
  bool get bounced => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get bodyHash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {String hash,
      String? src,
      String? dst,
      String value,
      bool bounce,
      bool bounced,
      String? body,
      String? bodyHash});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as String?,
      dst: freezed == dst
          ? _value.dst
          : dst // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hash,
      String? src,
      String? dst,
      String value,
      bool bounce,
      bool bounced,
      String? body,
      String? bodyHash});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

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
    return _then(_$_Message(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
      dst: freezed == dst
          ? _value.dst
          : dst // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_Message implements _Message {
  const _$_Message(
      {required this.hash,
      this.src,
      this.dst,
      required this.value,
      required this.bounce,
      required this.bounced,
      this.body,
      this.bodyHash});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final String hash;
  @override
  final String? src;
  @override
  final String? dst;
  @override
  final String value;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, hash, src, dst, value, bounce, bounced, body, bodyHash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required final String hash,
      final String? src,
      final String? dst,
      required final String value,
      required final bool bounce,
      required final bool bounced,
      final String? body,
      final String? bodyHash}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  String get hash;
  @override
  String? get src;
  @override
  String? get dst;
  @override
  String get value;
  @override
  bool get bounce;
  @override
  bool get bounced;
  @override
  String? get body;
  @override
  String? get bodyHash;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
