// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$MessageCopyWithImpl<$Res>;
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
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object? hash = freezed,
    Object? src = freezed,
    Object? dst = freezed,
    Object? value = freezed,
    Object? bounce = freezed,
    Object? bounced = freezed,
    Object? body = freezed,
    Object? bodyHash = freezed,
  }) {
    return _then(_value.copyWith(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
      dst: dst == freezed
          ? _value.dst
          : dst // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      bounce: bounce == freezed
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      bounced: bounced == freezed
          ? _value.bounced
          : bounced // ignore: cast_nullable_to_non_nullable
              as bool,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyHash: bodyHash == freezed
          ? _value.bodyHash
          : bodyHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
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
class __$$_MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, (v) => _then(v as _$_Message));

  @override
  _$_Message get _value => super._value as _$_Message;

  @override
  $Res call({
    Object? hash = freezed,
    Object? src = freezed,
    Object? dst = freezed,
    Object? value = freezed,
    Object? bounce = freezed,
    Object? bounced = freezed,
    Object? body = freezed,
    Object? bodyHash = freezed,
  }) {
    return _then(_$_Message(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
      dst: dst == freezed
          ? _value.dst
          : dst // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      bounce: bounce == freezed
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      bounced: bounced == freezed
          ? _value.bounced
          : bounced // ignore: cast_nullable_to_non_nullable
              as bool,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyHash: bodyHash == freezed
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
            const DeepCollectionEquality().equals(other.hash, hash) &&
            const DeepCollectionEquality().equals(other.src, src) &&
            const DeepCollectionEquality().equals(other.dst, dst) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.bounce, bounce) &&
            const DeepCollectionEquality().equals(other.bounced, bounced) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.bodyHash, bodyHash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hash),
      const DeepCollectionEquality().hash(src),
      const DeepCollectionEquality().hash(dst),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(bounce),
      const DeepCollectionEquality().hash(bounced),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(bodyHash));

  @JsonKey(ignore: true)
  @override
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
