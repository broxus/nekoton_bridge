// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_transaction_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LastTransactionId {

 bool get isExact; String get lt;@JsonKey(includeIfNull: false) String? get hash;
/// Create a copy of LastTransactionId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastTransactionIdCopyWith<LastTransactionId> get copyWith => _$LastTransactionIdCopyWithImpl<LastTransactionId>(this as LastTransactionId, _$identity);

  /// Serializes this LastTransactionId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastTransactionId&&(identical(other.isExact, isExact) || other.isExact == isExact)&&(identical(other.lt, lt) || other.lt == lt)&&(identical(other.hash, hash) || other.hash == hash));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isExact,lt,hash);

@override
String toString() {
  return 'LastTransactionId(isExact: $isExact, lt: $lt, hash: $hash)';
}


}

/// @nodoc
abstract mixin class $LastTransactionIdCopyWith<$Res>  {
  factory $LastTransactionIdCopyWith(LastTransactionId value, $Res Function(LastTransactionId) _then) = _$LastTransactionIdCopyWithImpl;
@useResult
$Res call({
 bool isExact, String lt,@JsonKey(includeIfNull: false) String? hash
});




}
/// @nodoc
class _$LastTransactionIdCopyWithImpl<$Res>
    implements $LastTransactionIdCopyWith<$Res> {
  _$LastTransactionIdCopyWithImpl(this._self, this._then);

  final LastTransactionId _self;
  final $Res Function(LastTransactionId) _then;

/// Create a copy of LastTransactionId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isExact = null,Object? lt = null,Object? hash = freezed,}) {
  return _then(_self.copyWith(
isExact: null == isExact ? _self.isExact : isExact // ignore: cast_nullable_to_non_nullable
as bool,lt: null == lt ? _self.lt : lt // ignore: cast_nullable_to_non_nullable
as String,hash: freezed == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LastTransactionId].
extension LastTransactionIdPatterns on LastTransactionId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LastTransactionId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LastTransactionId() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LastTransactionId value)  $default,){
final _that = this;
switch (_that) {
case _LastTransactionId():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LastTransactionId value)?  $default,){
final _that = this;
switch (_that) {
case _LastTransactionId() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isExact,  String lt, @JsonKey(includeIfNull: false)  String? hash)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LastTransactionId() when $default != null:
return $default(_that.isExact,_that.lt,_that.hash);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isExact,  String lt, @JsonKey(includeIfNull: false)  String? hash)  $default,) {final _that = this;
switch (_that) {
case _LastTransactionId():
return $default(_that.isExact,_that.lt,_that.hash);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isExact,  String lt, @JsonKey(includeIfNull: false)  String? hash)?  $default,) {final _that = this;
switch (_that) {
case _LastTransactionId() when $default != null:
return $default(_that.isExact,_that.lt,_that.hash);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LastTransactionId implements LastTransactionId {
  const _LastTransactionId({required this.isExact, required this.lt, @JsonKey(includeIfNull: false) this.hash});
  factory _LastTransactionId.fromJson(Map<String, dynamic> json) => _$LastTransactionIdFromJson(json);

@override final  bool isExact;
@override final  String lt;
@override@JsonKey(includeIfNull: false) final  String? hash;

/// Create a copy of LastTransactionId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastTransactionIdCopyWith<_LastTransactionId> get copyWith => __$LastTransactionIdCopyWithImpl<_LastTransactionId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LastTransactionIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastTransactionId&&(identical(other.isExact, isExact) || other.isExact == isExact)&&(identical(other.lt, lt) || other.lt == lt)&&(identical(other.hash, hash) || other.hash == hash));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isExact,lt,hash);

@override
String toString() {
  return 'LastTransactionId(isExact: $isExact, lt: $lt, hash: $hash)';
}


}

/// @nodoc
abstract mixin class _$LastTransactionIdCopyWith<$Res> implements $LastTransactionIdCopyWith<$Res> {
  factory _$LastTransactionIdCopyWith(_LastTransactionId value, $Res Function(_LastTransactionId) _then) = __$LastTransactionIdCopyWithImpl;
@override @useResult
$Res call({
 bool isExact, String lt,@JsonKey(includeIfNull: false) String? hash
});




}
/// @nodoc
class __$LastTransactionIdCopyWithImpl<$Res>
    implements _$LastTransactionIdCopyWith<$Res> {
  __$LastTransactionIdCopyWithImpl(this._self, this._then);

  final _LastTransactionId _self;
  final $Res Function(_LastTransactionId) _then;

/// Create a copy of LastTransactionId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isExact = null,Object? lt = null,Object? hash = freezed,}) {
  return _then(_LastTransactionId(
isExact: null == isExact ? _self.isExact : isExact // ignore: cast_nullable_to_non_nullable
as bool,lt: null == lt ? _self.lt : lt // ignore: cast_nullable_to_non_nullable
as String,hash: freezed == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
