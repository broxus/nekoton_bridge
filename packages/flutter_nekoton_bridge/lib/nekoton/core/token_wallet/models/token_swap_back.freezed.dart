// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_swap_back.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenSwapBack {

@amountJsonConverter BigInt get tokens; Address get callbackAddress; String get callbackPayload;
/// Create a copy of TokenSwapBack
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenSwapBackCopyWith<TokenSwapBack> get copyWith => _$TokenSwapBackCopyWithImpl<TokenSwapBack>(this as TokenSwapBack, _$identity);

  /// Serializes this TokenSwapBack to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenSwapBack&&(identical(other.tokens, tokens) || other.tokens == tokens)&&(identical(other.callbackAddress, callbackAddress) || other.callbackAddress == callbackAddress)&&(identical(other.callbackPayload, callbackPayload) || other.callbackPayload == callbackPayload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tokens,callbackAddress,callbackPayload);

@override
String toString() {
  return 'TokenSwapBack(tokens: $tokens, callbackAddress: $callbackAddress, callbackPayload: $callbackPayload)';
}


}

/// @nodoc
abstract mixin class $TokenSwapBackCopyWith<$Res>  {
  factory $TokenSwapBackCopyWith(TokenSwapBack value, $Res Function(TokenSwapBack) _then) = _$TokenSwapBackCopyWithImpl;
@useResult
$Res call({
@amountJsonConverter BigInt tokens, Address callbackAddress, String callbackPayload
});


$AddressCopyWith<$Res> get callbackAddress;

}
/// @nodoc
class _$TokenSwapBackCopyWithImpl<$Res>
    implements $TokenSwapBackCopyWith<$Res> {
  _$TokenSwapBackCopyWithImpl(this._self, this._then);

  final TokenSwapBack _self;
  final $Res Function(TokenSwapBack) _then;

/// Create a copy of TokenSwapBack
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tokens = null,Object? callbackAddress = null,Object? callbackPayload = null,}) {
  return _then(_self.copyWith(
tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as BigInt,callbackAddress: null == callbackAddress ? _self.callbackAddress : callbackAddress // ignore: cast_nullable_to_non_nullable
as Address,callbackPayload: null == callbackPayload ? _self.callbackPayload : callbackPayload // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of TokenSwapBack
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get callbackAddress {
  
  return $AddressCopyWith<$Res>(_self.callbackAddress, (value) {
    return _then(_self.copyWith(callbackAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [TokenSwapBack].
extension TokenSwapBackPatterns on TokenSwapBack {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokenSwapBack value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokenSwapBack() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokenSwapBack value)  $default,){
final _that = this;
switch (_that) {
case _TokenSwapBack():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokenSwapBack value)?  $default,){
final _that = this;
switch (_that) {
case _TokenSwapBack() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@amountJsonConverter  BigInt tokens,  Address callbackAddress,  String callbackPayload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokenSwapBack() when $default != null:
return $default(_that.tokens,_that.callbackAddress,_that.callbackPayload);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@amountJsonConverter  BigInt tokens,  Address callbackAddress,  String callbackPayload)  $default,) {final _that = this;
switch (_that) {
case _TokenSwapBack():
return $default(_that.tokens,_that.callbackAddress,_that.callbackPayload);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@amountJsonConverter  BigInt tokens,  Address callbackAddress,  String callbackPayload)?  $default,) {final _that = this;
switch (_that) {
case _TokenSwapBack() when $default != null:
return $default(_that.tokens,_that.callbackAddress,_that.callbackPayload);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _TokenSwapBack implements TokenSwapBack {
  const _TokenSwapBack({@amountJsonConverter required this.tokens, required this.callbackAddress, required this.callbackPayload});
  factory _TokenSwapBack.fromJson(Map<String, dynamic> json) => _$TokenSwapBackFromJson(json);

@override@amountJsonConverter final  BigInt tokens;
@override final  Address callbackAddress;
@override final  String callbackPayload;

/// Create a copy of TokenSwapBack
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenSwapBackCopyWith<_TokenSwapBack> get copyWith => __$TokenSwapBackCopyWithImpl<_TokenSwapBack>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenSwapBackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenSwapBack&&(identical(other.tokens, tokens) || other.tokens == tokens)&&(identical(other.callbackAddress, callbackAddress) || other.callbackAddress == callbackAddress)&&(identical(other.callbackPayload, callbackPayload) || other.callbackPayload == callbackPayload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tokens,callbackAddress,callbackPayload);

@override
String toString() {
  return 'TokenSwapBack(tokens: $tokens, callbackAddress: $callbackAddress, callbackPayload: $callbackPayload)';
}


}

/// @nodoc
abstract mixin class _$TokenSwapBackCopyWith<$Res> implements $TokenSwapBackCopyWith<$Res> {
  factory _$TokenSwapBackCopyWith(_TokenSwapBack value, $Res Function(_TokenSwapBack) _then) = __$TokenSwapBackCopyWithImpl;
@override @useResult
$Res call({
@amountJsonConverter BigInt tokens, Address callbackAddress, String callbackPayload
});


@override $AddressCopyWith<$Res> get callbackAddress;

}
/// @nodoc
class __$TokenSwapBackCopyWithImpl<$Res>
    implements _$TokenSwapBackCopyWith<$Res> {
  __$TokenSwapBackCopyWithImpl(this._self, this._then);

  final _TokenSwapBack _self;
  final $Res Function(_TokenSwapBack) _then;

/// Create a copy of TokenSwapBack
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tokens = null,Object? callbackAddress = null,Object? callbackPayload = null,}) {
  return _then(_TokenSwapBack(
tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as BigInt,callbackAddress: null == callbackAddress ? _self.callbackAddress : callbackAddress // ignore: cast_nullable_to_non_nullable
as Address,callbackPayload: null == callbackPayload ? _self.callbackPayload : callbackPayload // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of TokenSwapBack
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get callbackAddress {
  
  return $AddressCopyWith<$Res>(_self.callbackAddress, (value) {
    return _then(_self.copyWith(callbackAddress: value));
  });
}
}

// dart format on
