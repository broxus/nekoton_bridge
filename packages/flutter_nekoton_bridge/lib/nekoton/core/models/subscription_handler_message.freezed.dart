// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$SubscriptionHandlerMessageCopyWithImpl<$Res,
          SubscriptionHandlerMessage>;
  @useResult
  $Res call({String event, String payload});
}

/// @nodoc
class _$SubscriptionHandlerMessageCopyWithImpl<$Res,
        $Val extends SubscriptionHandlerMessage>
    implements $SubscriptionHandlerMessageCopyWith<$Res> {
  _$SubscriptionHandlerMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionHandlerMessageImplCopyWith<$Res>
    implements $SubscriptionHandlerMessageCopyWith<$Res> {
  factory _$$SubscriptionHandlerMessageImplCopyWith(
          _$SubscriptionHandlerMessageImpl value,
          $Res Function(_$SubscriptionHandlerMessageImpl) then) =
      __$$SubscriptionHandlerMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String event, String payload});
}

/// @nodoc
class __$$SubscriptionHandlerMessageImplCopyWithImpl<$Res>
    extends _$SubscriptionHandlerMessageCopyWithImpl<$Res,
        _$SubscriptionHandlerMessageImpl>
    implements _$$SubscriptionHandlerMessageImplCopyWith<$Res> {
  __$$SubscriptionHandlerMessageImplCopyWithImpl(
      _$SubscriptionHandlerMessageImpl _value,
      $Res Function(_$SubscriptionHandlerMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? payload = null,
  }) {
    return _then(_$SubscriptionHandlerMessageImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionHandlerMessageImpl implements _SubscriptionHandlerMessage {
  const _$SubscriptionHandlerMessageImpl(
      {required this.event, required this.payload});

  factory _$SubscriptionHandlerMessageImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionHandlerMessageImplFromJson(json);

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
            other is _$SubscriptionHandlerMessageImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, event, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionHandlerMessageImplCopyWith<_$SubscriptionHandlerMessageImpl>
      get copyWith => __$$SubscriptionHandlerMessageImplCopyWithImpl<
          _$SubscriptionHandlerMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionHandlerMessageImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionHandlerMessage
    implements SubscriptionHandlerMessage {
  const factory _SubscriptionHandlerMessage(
      {required final String event,
      required final String payload}) = _$SubscriptionHandlerMessageImpl;

  factory _SubscriptionHandlerMessage.fromJson(Map<String, dynamic> json) =
      _$SubscriptionHandlerMessageImpl.fromJson;

  @override
  String get event;
  @override
  String get payload;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionHandlerMessageImplCopyWith<_$SubscriptionHandlerMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
