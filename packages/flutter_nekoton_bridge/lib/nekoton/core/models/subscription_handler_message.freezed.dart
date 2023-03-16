// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subscription_handler_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubscriptionHandlerMessage _$SubscriptionHandlerMessageFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionHandlerMessage.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionHandlerMessage {
  String get event => throw _privateConstructorUsedError;
  String get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionHandlerMessageCopyWith<SubscriptionHandlerMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionHandlerMessageCopyWith<$Res> {
  factory $SubscriptionHandlerMessageCopyWith(SubscriptionHandlerMessage value,
          $Res Function(SubscriptionHandlerMessage) then) =
      _$SubscriptionHandlerMessageCopyWithImpl<$Res>;
  $Res call({String event, String payload});
}

/// @nodoc
class _$SubscriptionHandlerMessageCopyWithImpl<$Res>
    implements $SubscriptionHandlerMessageCopyWith<$Res> {
  _$SubscriptionHandlerMessageCopyWithImpl(this._value, this._then);

  final SubscriptionHandlerMessage _value;
  // ignore: unused_field
  final $Res Function(SubscriptionHandlerMessage) _then;

  @override
  $Res call({
    Object? event = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SubscriptionHandlerMessageCopyWith<$Res>
    implements $SubscriptionHandlerMessageCopyWith<$Res> {
  factory _$$_SubscriptionHandlerMessageCopyWith(
          _$_SubscriptionHandlerMessage value,
          $Res Function(_$_SubscriptionHandlerMessage) then) =
      __$$_SubscriptionHandlerMessageCopyWithImpl<$Res>;
  @override
  $Res call({String event, String payload});
}

/// @nodoc
class __$$_SubscriptionHandlerMessageCopyWithImpl<$Res>
    extends _$SubscriptionHandlerMessageCopyWithImpl<$Res>
    implements _$$_SubscriptionHandlerMessageCopyWith<$Res> {
  __$$_SubscriptionHandlerMessageCopyWithImpl(
      _$_SubscriptionHandlerMessage _value,
      $Res Function(_$_SubscriptionHandlerMessage) _then)
      : super(_value, (v) => _then(v as _$_SubscriptionHandlerMessage));

  @override
  _$_SubscriptionHandlerMessage get _value =>
      super._value as _$_SubscriptionHandlerMessage;

  @override
  $Res call({
    Object? event = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_SubscriptionHandlerMessage(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubscriptionHandlerMessage implements _SubscriptionHandlerMessage {
  const _$_SubscriptionHandlerMessage(
      {required this.event, required this.payload});

  factory _$_SubscriptionHandlerMessage.fromJson(Map<String, dynamic> json) =>
      _$$_SubscriptionHandlerMessageFromJson(json);

  @override
  final String event;
  @override
  final String payload;

  @override
  String toString() {
    return 'SubscriptionHandlerMessage(event: $event, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionHandlerMessage &&
            const DeepCollectionEquality().equals(other.event, event) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(event),
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$$_SubscriptionHandlerMessageCopyWith<_$_SubscriptionHandlerMessage>
      get copyWith => __$$_SubscriptionHandlerMessageCopyWithImpl<
          _$_SubscriptionHandlerMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscriptionHandlerMessageToJson(
      this,
    );
  }
}

abstract class _SubscriptionHandlerMessage
    implements SubscriptionHandlerMessage {
  const factory _SubscriptionHandlerMessage(
      {required final String event,
      required final String payload}) = _$_SubscriptionHandlerMessage;

  factory _SubscriptionHandlerMessage.fromJson(Map<String, dynamic> json) =
      _$_SubscriptionHandlerMessage.fromJson;

  @override
  String get event;
  @override
  String get payload;
  @override
  @JsonKey(ignore: true)
  _$$_SubscriptionHandlerMessageCopyWith<_$_SubscriptionHandlerMessage>
      get copyWith => throw _privateConstructorUsedError;
}
