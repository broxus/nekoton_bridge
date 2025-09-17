// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signed_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignedMessage {

 String get hash;@dateSecondsSinceEpochJsonConverter DateTime get expireAt; String get boc;
/// Create a copy of SignedMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignedMessageCopyWith<SignedMessage> get copyWith => _$SignedMessageCopyWithImpl<SignedMessage>(this as SignedMessage, _$identity);

  /// Serializes this SignedMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignedMessage&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.expireAt, expireAt) || other.expireAt == expireAt)&&(identical(other.boc, boc) || other.boc == boc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hash,expireAt,boc);

@override
String toString() {
  return 'SignedMessage(hash: $hash, expireAt: $expireAt, boc: $boc)';
}


}

/// @nodoc
abstract mixin class $SignedMessageCopyWith<$Res>  {
  factory $SignedMessageCopyWith(SignedMessage value, $Res Function(SignedMessage) _then) = _$SignedMessageCopyWithImpl;
@useResult
$Res call({
 String hash,@dateSecondsSinceEpochJsonConverter DateTime expireAt, String boc
});




}
/// @nodoc
class _$SignedMessageCopyWithImpl<$Res>
    implements $SignedMessageCopyWith<$Res> {
  _$SignedMessageCopyWithImpl(this._self, this._then);

  final SignedMessage _self;
  final $Res Function(SignedMessage) _then;

/// Create a copy of SignedMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hash = null,Object? expireAt = null,Object? boc = null,}) {
  return _then(_self.copyWith(
hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,expireAt: null == expireAt ? _self.expireAt : expireAt // ignore: cast_nullable_to_non_nullable
as DateTime,boc: null == boc ? _self.boc : boc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignedMessage].
extension SignedMessagePatterns on SignedMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignedMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignedMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignedMessage value)  $default,){
final _that = this;
switch (_that) {
case _SignedMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignedMessage value)?  $default,){
final _that = this;
switch (_that) {
case _SignedMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String hash, @dateSecondsSinceEpochJsonConverter  DateTime expireAt,  String boc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignedMessage() when $default != null:
return $default(_that.hash,_that.expireAt,_that.boc);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String hash, @dateSecondsSinceEpochJsonConverter  DateTime expireAt,  String boc)  $default,) {final _that = this;
switch (_that) {
case _SignedMessage():
return $default(_that.hash,_that.expireAt,_that.boc);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String hash, @dateSecondsSinceEpochJsonConverter  DateTime expireAt,  String boc)?  $default,) {final _that = this;
switch (_that) {
case _SignedMessage() when $default != null:
return $default(_that.hash,_that.expireAt,_that.boc);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignedMessage implements SignedMessage {
  const _SignedMessage({required this.hash, @dateSecondsSinceEpochJsonConverter required this.expireAt, required this.boc});
  factory _SignedMessage.fromJson(Map<String, dynamic> json) => _$SignedMessageFromJson(json);

@override final  String hash;
@override@dateSecondsSinceEpochJsonConverter final  DateTime expireAt;
@override final  String boc;

/// Create a copy of SignedMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignedMessageCopyWith<_SignedMessage> get copyWith => __$SignedMessageCopyWithImpl<_SignedMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignedMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignedMessage&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.expireAt, expireAt) || other.expireAt == expireAt)&&(identical(other.boc, boc) || other.boc == boc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hash,expireAt,boc);

@override
String toString() {
  return 'SignedMessage(hash: $hash, expireAt: $expireAt, boc: $boc)';
}


}

/// @nodoc
abstract mixin class _$SignedMessageCopyWith<$Res> implements $SignedMessageCopyWith<$Res> {
  factory _$SignedMessageCopyWith(_SignedMessage value, $Res Function(_SignedMessage) _then) = __$SignedMessageCopyWithImpl;
@override @useResult
$Res call({
 String hash,@dateSecondsSinceEpochJsonConverter DateTime expireAt, String boc
});




}
/// @nodoc
class __$SignedMessageCopyWithImpl<$Res>
    implements _$SignedMessageCopyWith<$Res> {
  __$SignedMessageCopyWithImpl(this._self, this._then);

  final _SignedMessage _self;
  final $Res Function(_SignedMessage) _then;

/// Create a copy of SignedMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hash = null,Object? expireAt = null,Object? boc = null,}) {
  return _then(_SignedMessage(
hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,expireAt: null == expireAt ? _self.expireAt : expireAt // ignore: cast_nullable_to_non_nullable
as DateTime,boc: null == boc ? _self.boc : boc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
