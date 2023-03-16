// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$InternalMessageCopyWithImpl<$Res>;
  $Res call(
      {String? source,
      String destination,
      String amount,
      bool bounce,
      String body});
}

/// @nodoc
class _$InternalMessageCopyWithImpl<$Res>
    implements $InternalMessageCopyWith<$Res> {
  _$InternalMessageCopyWithImpl(this._value, this._then);

  final InternalMessage _value;
  // ignore: unused_field
  final $Res Function(InternalMessage) _then;

  @override
  $Res call({
    Object? source = freezed,
    Object? destination = freezed,
    Object? amount = freezed,
    Object? bounce = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      bounce: bounce == freezed
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_InternalMessageCopyWith<$Res>
    implements $InternalMessageCopyWith<$Res> {
  factory _$$_InternalMessageCopyWith(
          _$_InternalMessage value, $Res Function(_$_InternalMessage) then) =
      __$$_InternalMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? source,
      String destination,
      String amount,
      bool bounce,
      String body});
}

/// @nodoc
class __$$_InternalMessageCopyWithImpl<$Res>
    extends _$InternalMessageCopyWithImpl<$Res>
    implements _$$_InternalMessageCopyWith<$Res> {
  __$$_InternalMessageCopyWithImpl(
      _$_InternalMessage _value, $Res Function(_$_InternalMessage) _then)
      : super(_value, (v) => _then(v as _$_InternalMessage));

  @override
  _$_InternalMessage get _value => super._value as _$_InternalMessage;

  @override
  $Res call({
    Object? source = freezed,
    Object? destination = freezed,
    Object? amount = freezed,
    Object? bounce = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_InternalMessage(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      bounce: bounce == freezed
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      body: body == freezed
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
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.bounce, bounce) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(bounce),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
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
