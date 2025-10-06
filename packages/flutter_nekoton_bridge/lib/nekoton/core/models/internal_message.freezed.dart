// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internal_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InternalMessage {

 Address? get source; Address get destination; BigInt get amount; bool get bounce; String get body;
/// Create a copy of InternalMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InternalMessageCopyWith<InternalMessage> get copyWith => _$InternalMessageCopyWithImpl<InternalMessage>(this as InternalMessage, _$identity);

  /// Serializes this InternalMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternalMessage&&(identical(other.source, source) || other.source == source)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.bounce, bounce) || other.bounce == bounce)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,destination,amount,bounce,body);

@override
String toString() {
  return 'InternalMessage(source: $source, destination: $destination, amount: $amount, bounce: $bounce, body: $body)';
}


}

/// @nodoc
abstract mixin class $InternalMessageCopyWith<$Res>  {
  factory $InternalMessageCopyWith(InternalMessage value, $Res Function(InternalMessage) _then) = _$InternalMessageCopyWithImpl;
@useResult
$Res call({
 Address? source, Address destination, BigInt amount, bool bounce, String body
});


$AddressCopyWith<$Res>? get source;$AddressCopyWith<$Res> get destination;

}
/// @nodoc
class _$InternalMessageCopyWithImpl<$Res>
    implements $InternalMessageCopyWith<$Res> {
  _$InternalMessageCopyWithImpl(this._self, this._then);

  final InternalMessage _self;
  final $Res Function(InternalMessage) _then;

/// Create a copy of InternalMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = freezed,Object? destination = null,Object? amount = null,Object? bounce = null,Object? body = null,}) {
  return _then(_self.copyWith(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as Address?,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as Address,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,bounce: null == bounce ? _self.bounce : bounce // ignore: cast_nullable_to_non_nullable
as bool,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of InternalMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get source {
    if (_self.source == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.source!, (value) {
    return _then(_self.copyWith(source: value));
  });
}/// Create a copy of InternalMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get destination {
  
  return $AddressCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}
}


/// Adds pattern-matching-related methods to [InternalMessage].
extension InternalMessagePatterns on InternalMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InternalMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InternalMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InternalMessage value)  $default,){
final _that = this;
switch (_that) {
case _InternalMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InternalMessage value)?  $default,){
final _that = this;
switch (_that) {
case _InternalMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Address? source,  Address destination,  BigInt amount,  bool bounce,  String body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InternalMessage() when $default != null:
return $default(_that.source,_that.destination,_that.amount,_that.bounce,_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Address? source,  Address destination,  BigInt amount,  bool bounce,  String body)  $default,) {final _that = this;
switch (_that) {
case _InternalMessage():
return $default(_that.source,_that.destination,_that.amount,_that.bounce,_that.body);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Address? source,  Address destination,  BigInt amount,  bool bounce,  String body)?  $default,) {final _that = this;
switch (_that) {
case _InternalMessage() when $default != null:
return $default(_that.source,_that.destination,_that.amount,_that.bounce,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InternalMessage implements InternalMessage {
   _InternalMessage({this.source, required this.destination, required this.amount, required this.bounce, required this.body});
  factory _InternalMessage.fromJson(Map<String, dynamic> json) => _$InternalMessageFromJson(json);

@override final  Address? source;
@override final  Address destination;
@override final  BigInt amount;
@override final  bool bounce;
@override final  String body;

/// Create a copy of InternalMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InternalMessageCopyWith<_InternalMessage> get copyWith => __$InternalMessageCopyWithImpl<_InternalMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InternalMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InternalMessage&&(identical(other.source, source) || other.source == source)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.bounce, bounce) || other.bounce == bounce)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,destination,amount,bounce,body);

@override
String toString() {
  return 'InternalMessage(source: $source, destination: $destination, amount: $amount, bounce: $bounce, body: $body)';
}


}

/// @nodoc
abstract mixin class _$InternalMessageCopyWith<$Res> implements $InternalMessageCopyWith<$Res> {
  factory _$InternalMessageCopyWith(_InternalMessage value, $Res Function(_InternalMessage) _then) = __$InternalMessageCopyWithImpl;
@override @useResult
$Res call({
 Address? source, Address destination, BigInt amount, bool bounce, String body
});


@override $AddressCopyWith<$Res>? get source;@override $AddressCopyWith<$Res> get destination;

}
/// @nodoc
class __$InternalMessageCopyWithImpl<$Res>
    implements _$InternalMessageCopyWith<$Res> {
  __$InternalMessageCopyWithImpl(this._self, this._then);

  final _InternalMessage _self;
  final $Res Function(_InternalMessage) _then;

/// Create a copy of InternalMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = freezed,Object? destination = null,Object? amount = null,Object? bounce = null,Object? body = null,}) {
  return _then(_InternalMessage(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as Address?,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as Address,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,bounce: null == bounce ? _self.bounce : bounce // ignore: cast_nullable_to_non_nullable
as bool,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of InternalMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get source {
    if (_self.source == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.source!, (value) {
    return _then(_self.copyWith(source: value));
  });
}/// Create a copy of InternalMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get destination {
  
  return $AddressCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}
}

// dart format on
