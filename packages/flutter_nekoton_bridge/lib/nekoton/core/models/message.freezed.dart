// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Message {
  String get hash;
  Address? get src;
  Address? get dst;
  BigInt get value;
  bool get bounce;
  bool get bounced;
  String? get body;
  String? get bodyHash;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageCopyWith<Message> get copyWith =>
      _$MessageCopyWithImpl<Message>(this as Message, _$identity);

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Message &&
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

  @override
  String toString() {
    return 'Message(hash: $hash, src: $src, dst: $dst, value: $value, bounce: $bounce, bounced: $bounced, body: $body, bodyHash: $bodyHash)';
  }
}

/// @nodoc
abstract mixin class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) _then) =
      _$MessageCopyWithImpl;
  @useResult
  $Res call(
      {String hash,
      Address? src,
      Address? dst,
      BigInt value,
      bool bounce,
      bool bounced,
      String? body,
      String? bodyHash});

  $AddressCopyWith<$Res>? get src;
  $AddressCopyWith<$Res>? get dst;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._self, this._then);

  final Message _self;
  final $Res Function(Message) _then;

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
    return _then(_self.copyWith(
      hash: null == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      src: freezed == src
          ? _self.src
          : src // ignore: cast_nullable_to_non_nullable
              as Address?,
      dst: freezed == dst
          ? _self.dst
          : dst // ignore: cast_nullable_to_non_nullable
              as Address?,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bounce: null == bounce
          ? _self.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      bounced: null == bounced
          ? _self.bounced
          : bounced // ignore: cast_nullable_to_non_nullable
              as bool,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyHash: freezed == bodyHash
          ? _self.bodyHash
          : bodyHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get src {
    if (_self.src == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.src!, (value) {
      return _then(_self.copyWith(src: value));
    });
  }

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get dst {
    if (_self.dst == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.dst!, (value) {
      return _then(_self.copyWith(dst: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Message implements Message {
  const _Message(
      {required this.hash,
      this.src,
      this.dst,
      required this.value,
      required this.bounce,
      required this.bounced,
      this.body,
      this.bodyHash});
  factory _Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  @override
  final String hash;
  @override
  final Address? src;
  @override
  final Address? dst;
  @override
  final BigInt value;
  @override
  final bool bounce;
  @override
  final bool bounced;
  @override
  final String? body;
  @override
  final String? bodyHash;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Message &&
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

  @override
  String toString() {
    return 'Message(hash: $hash, src: $src, dst: $dst, value: $value, bounce: $bounce, bounced: $bounced, body: $body, bodyHash: $bodyHash)';
  }
}

/// @nodoc
abstract mixin class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) _then) =
      __$MessageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String hash,
      Address? src,
      Address? dst,
      BigInt value,
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
class __$MessageCopyWithImpl<$Res> implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(this._self, this._then);

  final _Message _self;
  final $Res Function(_Message) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_Message(
      hash: null == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      src: freezed == src
          ? _self.src
          : src // ignore: cast_nullable_to_non_nullable
              as Address?,
      dst: freezed == dst
          ? _self.dst
          : dst // ignore: cast_nullable_to_non_nullable
              as Address?,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bounce: null == bounce
          ? _self.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      bounced: null == bounced
          ? _self.bounced
          : bounced // ignore: cast_nullable_to_non_nullable
              as bool,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyHash: freezed == bodyHash
          ? _self.bodyHash
          : bodyHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get src {
    if (_self.src == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.src!, (value) {
      return _then(_self.copyWith(src: value));
    });
  }

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get dst {
    if (_self.dst == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.dst!, (value) {
      return _then(_self.copyWith(dst: value));
    });
  }
}

// dart format on
