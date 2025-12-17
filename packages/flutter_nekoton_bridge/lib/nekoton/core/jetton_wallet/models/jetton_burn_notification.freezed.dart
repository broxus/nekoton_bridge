// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jetton_burn_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JettonBurnNotification {

 BigInt get tokens; Address get from;
/// Create a copy of JettonBurnNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JettonBurnNotificationCopyWith<JettonBurnNotification> get copyWith => _$JettonBurnNotificationCopyWithImpl<JettonBurnNotification>(this as JettonBurnNotification, _$identity);

  /// Serializes this JettonBurnNotification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JettonBurnNotification&&(identical(other.tokens, tokens) || other.tokens == tokens)&&(identical(other.from, from) || other.from == from));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tokens,from);

@override
String toString() {
  return 'JettonBurnNotification(tokens: $tokens, from: $from)';
}


}

/// @nodoc
abstract mixin class $JettonBurnNotificationCopyWith<$Res>  {
  factory $JettonBurnNotificationCopyWith(JettonBurnNotification value, $Res Function(JettonBurnNotification) _then) = _$JettonBurnNotificationCopyWithImpl;
@useResult
$Res call({
 BigInt tokens, Address from
});


$AddressCopyWith<$Res> get from;

}
/// @nodoc
class _$JettonBurnNotificationCopyWithImpl<$Res>
    implements $JettonBurnNotificationCopyWith<$Res> {
  _$JettonBurnNotificationCopyWithImpl(this._self, this._then);

  final JettonBurnNotification _self;
  final $Res Function(JettonBurnNotification) _then;

/// Create a copy of JettonBurnNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tokens = null,Object? from = null,}) {
  return _then(_self.copyWith(
tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as BigInt,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as Address,
  ));
}
/// Create a copy of JettonBurnNotification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get from {
  
  return $AddressCopyWith<$Res>(_self.from, (value) {
    return _then(_self.copyWith(from: value));
  });
}
}


/// Adds pattern-matching-related methods to [JettonBurnNotification].
extension JettonBurnNotificationPatterns on JettonBurnNotification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JettonBurnNotification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JettonBurnNotification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JettonBurnNotification value)  $default,){
final _that = this;
switch (_that) {
case _JettonBurnNotification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JettonBurnNotification value)?  $default,){
final _that = this;
switch (_that) {
case _JettonBurnNotification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BigInt tokens,  Address from)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JettonBurnNotification() when $default != null:
return $default(_that.tokens,_that.from);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BigInt tokens,  Address from)  $default,) {final _that = this;
switch (_that) {
case _JettonBurnNotification():
return $default(_that.tokens,_that.from);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BigInt tokens,  Address from)?  $default,) {final _that = this;
switch (_that) {
case _JettonBurnNotification() when $default != null:
return $default(_that.tokens,_that.from);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JettonBurnNotification implements JettonBurnNotification {
  const _JettonBurnNotification({required this.tokens, required this.from});
  factory _JettonBurnNotification.fromJson(Map<String, dynamic> json) => _$JettonBurnNotificationFromJson(json);

@override final  BigInt tokens;
@override final  Address from;

/// Create a copy of JettonBurnNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JettonBurnNotificationCopyWith<_JettonBurnNotification> get copyWith => __$JettonBurnNotificationCopyWithImpl<_JettonBurnNotification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JettonBurnNotificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JettonBurnNotification&&(identical(other.tokens, tokens) || other.tokens == tokens)&&(identical(other.from, from) || other.from == from));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tokens,from);

@override
String toString() {
  return 'JettonBurnNotification(tokens: $tokens, from: $from)';
}


}

/// @nodoc
abstract mixin class _$JettonBurnNotificationCopyWith<$Res> implements $JettonBurnNotificationCopyWith<$Res> {
  factory _$JettonBurnNotificationCopyWith(_JettonBurnNotification value, $Res Function(_JettonBurnNotification) _then) = __$JettonBurnNotificationCopyWithImpl;
@override @useResult
$Res call({
 BigInt tokens, Address from
});


@override $AddressCopyWith<$Res> get from;

}
/// @nodoc
class __$JettonBurnNotificationCopyWithImpl<$Res>
    implements _$JettonBurnNotificationCopyWith<$Res> {
  __$JettonBurnNotificationCopyWithImpl(this._self, this._then);

  final _JettonBurnNotification _self;
  final $Res Function(_JettonBurnNotification) _then;

/// Create a copy of JettonBurnNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tokens = null,Object? from = null,}) {
  return _then(_JettonBurnNotification(
tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as BigInt,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as Address,
  ));
}

/// Create a copy of JettonBurnNotification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get from {
  
  return $AddressCopyWith<$Res>(_self.from, (value) {
    return _then(_self.copyWith(from: value));
  });
}
}

// dart format on
