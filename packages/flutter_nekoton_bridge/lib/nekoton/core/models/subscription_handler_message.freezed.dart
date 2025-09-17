// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_handler_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionHandlerMessage {

 String get event; String get payload;
/// Create a copy of SubscriptionHandlerMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionHandlerMessageCopyWith<SubscriptionHandlerMessage> get copyWith => _$SubscriptionHandlerMessageCopyWithImpl<SubscriptionHandlerMessage>(this as SubscriptionHandlerMessage, _$identity);

  /// Serializes this SubscriptionHandlerMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionHandlerMessage&&(identical(other.event, event) || other.event == event)&&(identical(other.payload, payload) || other.payload == payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,event,payload);

@override
String toString() {
  return 'SubscriptionHandlerMessage(event: $event, payload: $payload)';
}


}

/// @nodoc
abstract mixin class $SubscriptionHandlerMessageCopyWith<$Res>  {
  factory $SubscriptionHandlerMessageCopyWith(SubscriptionHandlerMessage value, $Res Function(SubscriptionHandlerMessage) _then) = _$SubscriptionHandlerMessageCopyWithImpl;
@useResult
$Res call({
 String event, String payload
});




}
/// @nodoc
class _$SubscriptionHandlerMessageCopyWithImpl<$Res>
    implements $SubscriptionHandlerMessageCopyWith<$Res> {
  _$SubscriptionHandlerMessageCopyWithImpl(this._self, this._then);

  final SubscriptionHandlerMessage _self;
  final $Res Function(SubscriptionHandlerMessage) _then;

/// Create a copy of SubscriptionHandlerMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? event = null,Object? payload = null,}) {
  return _then(_self.copyWith(
event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionHandlerMessage].
extension SubscriptionHandlerMessagePatterns on SubscriptionHandlerMessage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionHandlerMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionHandlerMessage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionHandlerMessage value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionHandlerMessage():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionHandlerMessage value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionHandlerMessage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String event,  String payload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionHandlerMessage() when $default != null:
return $default(_that.event,_that.payload);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String event,  String payload)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionHandlerMessage():
return $default(_that.event,_that.payload);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String event,  String payload)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionHandlerMessage() when $default != null:
return $default(_that.event,_that.payload);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionHandlerMessage implements SubscriptionHandlerMessage {
  const _SubscriptionHandlerMessage({required this.event, required this.payload});
  factory _SubscriptionHandlerMessage.fromJson(Map<String, dynamic> json) => _$SubscriptionHandlerMessageFromJson(json);

@override final  String event;
@override final  String payload;

/// Create a copy of SubscriptionHandlerMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionHandlerMessageCopyWith<_SubscriptionHandlerMessage> get copyWith => __$SubscriptionHandlerMessageCopyWithImpl<_SubscriptionHandlerMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionHandlerMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionHandlerMessage&&(identical(other.event, event) || other.event == event)&&(identical(other.payload, payload) || other.payload == payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,event,payload);

@override
String toString() {
  return 'SubscriptionHandlerMessage(event: $event, payload: $payload)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionHandlerMessageCopyWith<$Res> implements $SubscriptionHandlerMessageCopyWith<$Res> {
  factory _$SubscriptionHandlerMessageCopyWith(_SubscriptionHandlerMessage value, $Res Function(_SubscriptionHandlerMessage) _then) = __$SubscriptionHandlerMessageCopyWithImpl;
@override @useResult
$Res call({
 String event, String payload
});




}
/// @nodoc
class __$SubscriptionHandlerMessageCopyWithImpl<$Res>
    implements _$SubscriptionHandlerMessageCopyWith<$Res> {
  __$SubscriptionHandlerMessageCopyWithImpl(this._self, this._then);

  final _SubscriptionHandlerMessage _self;
  final $Res Function(_SubscriptionHandlerMessage) _then;

/// Create a copy of SubscriptionHandlerMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? event = null,Object? payload = null,}) {
  return _then(_SubscriptionHandlerMessage(
event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
