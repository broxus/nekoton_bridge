// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internal_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InternalMessage _$InternalMessageFromJson(Map<String, dynamic> json) {
  return _InternalMessage.fromJson(json);
}

/// @nodoc
mixin _$InternalMessage {
  String? get source => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  bool get bounce => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InternalMessageCopyWith<InternalMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternalMessageCopyWith<$Res> {
  factory $InternalMessageCopyWith(
          InternalMessage value, $Res Function(InternalMessage) then) =
      _$InternalMessageCopyWithImpl<$Res, InternalMessage>;
  @useResult
  $Res call(
      {String? source,
      String destination,
      String amount,
      bool bounce,
      String body});
}

/// @nodoc
class _$InternalMessageCopyWithImpl<$Res, $Val extends InternalMessage>
    implements $InternalMessageCopyWith<$Res> {
  _$InternalMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? destination = null,
    Object? amount = null,
    Object? bounce = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      bounce: null == bounce
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InternalMessageCopyWith<$Res>
    implements $InternalMessageCopyWith<$Res> {
  factory _$$_InternalMessageCopyWith(
          _$_InternalMessage value, $Res Function(_$_InternalMessage) then) =
      __$$_InternalMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? source,
      String destination,
      String amount,
      bool bounce,
      String body});
}

/// @nodoc
class __$$_InternalMessageCopyWithImpl<$Res>
    extends _$InternalMessageCopyWithImpl<$Res, _$_InternalMessage>
    implements _$$_InternalMessageCopyWith<$Res> {
  __$$_InternalMessageCopyWithImpl(
      _$_InternalMessage _value, $Res Function(_$_InternalMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? destination = null,
    Object? amount = null,
    Object? bounce = null,
    Object? body = null,
  }) {
    return _then(_$_InternalMessage(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      bounce: null == bounce
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InternalMessage implements _InternalMessage {
  const _$_InternalMessage(
      {this.source,
      required this.destination,
      required this.amount,
      required this.bounce,
      required this.body});

  factory _$_InternalMessage.fromJson(Map<String, dynamic> json) =>
      _$$_InternalMessageFromJson(json);

  @override
  final String? source;
  @override
  final String destination;
  @override
  final String amount;
  @override
  final bool bounce;
  @override
  final String body;

  @override
  String toString() {
    return 'InternalMessage(source: $source, destination: $destination, amount: $amount, bounce: $bounce, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InternalMessage &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.bounce, bounce) || other.bounce == bounce) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, source, destination, amount, bounce, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InternalMessageCopyWith<_$_InternalMessage> get copyWith =>
      __$$_InternalMessageCopyWithImpl<_$_InternalMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InternalMessageToJson(
      this,
    );
  }
}

abstract class _InternalMessage implements InternalMessage {
  const factory _InternalMessage(
      {final String? source,
      required final String destination,
      required final String amount,
      required final bool bounce,
      required final String body}) = _$_InternalMessage;

  factory _InternalMessage.fromJson(Map<String, dynamic> json) =
      _$_InternalMessage.fromJson;

  @override
  String? get source;
  @override
  String get destination;
  @override
  String get amount;
  @override
  bool get bounce;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_InternalMessageCopyWith<_$_InternalMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
