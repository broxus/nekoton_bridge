// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_incoming_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenIncomingTransfer {

 BigInt get tokens; Address get senderAddress;
/// Create a copy of TokenIncomingTransfer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenIncomingTransferCopyWith<TokenIncomingTransfer> get copyWith => _$TokenIncomingTransferCopyWithImpl<TokenIncomingTransfer>(this as TokenIncomingTransfer, _$identity);

  /// Serializes this TokenIncomingTransfer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenIncomingTransfer&&(identical(other.tokens, tokens) || other.tokens == tokens)&&(identical(other.senderAddress, senderAddress) || other.senderAddress == senderAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tokens,senderAddress);

@override
String toString() {
  return 'TokenIncomingTransfer(tokens: $tokens, senderAddress: $senderAddress)';
}


}

/// @nodoc
abstract mixin class $TokenIncomingTransferCopyWith<$Res>  {
  factory $TokenIncomingTransferCopyWith(TokenIncomingTransfer value, $Res Function(TokenIncomingTransfer) _then) = _$TokenIncomingTransferCopyWithImpl;
@useResult
$Res call({
 BigInt tokens, Address senderAddress
});


$AddressCopyWith<$Res> get senderAddress;

}
/// @nodoc
class _$TokenIncomingTransferCopyWithImpl<$Res>
    implements $TokenIncomingTransferCopyWith<$Res> {
  _$TokenIncomingTransferCopyWithImpl(this._self, this._then);

  final TokenIncomingTransfer _self;
  final $Res Function(TokenIncomingTransfer) _then;

/// Create a copy of TokenIncomingTransfer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tokens = null,Object? senderAddress = null,}) {
  return _then(_self.copyWith(
tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as BigInt,senderAddress: null == senderAddress ? _self.senderAddress : senderAddress // ignore: cast_nullable_to_non_nullable
as Address,
  ));
}
/// Create a copy of TokenIncomingTransfer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get senderAddress {
  
  return $AddressCopyWith<$Res>(_self.senderAddress, (value) {
    return _then(_self.copyWith(senderAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [TokenIncomingTransfer].
extension TokenIncomingTransferPatterns on TokenIncomingTransfer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokenIncomingTransfer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokenIncomingTransfer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokenIncomingTransfer value)  $default,){
final _that = this;
switch (_that) {
case _TokenIncomingTransfer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokenIncomingTransfer value)?  $default,){
final _that = this;
switch (_that) {
case _TokenIncomingTransfer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BigInt tokens,  Address senderAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokenIncomingTransfer() when $default != null:
return $default(_that.tokens,_that.senderAddress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BigInt tokens,  Address senderAddress)  $default,) {final _that = this;
switch (_that) {
case _TokenIncomingTransfer():
return $default(_that.tokens,_that.senderAddress);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BigInt tokens,  Address senderAddress)?  $default,) {final _that = this;
switch (_that) {
case _TokenIncomingTransfer() when $default != null:
return $default(_that.tokens,_that.senderAddress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TokenIncomingTransfer implements TokenIncomingTransfer {
  const _TokenIncomingTransfer({required this.tokens, required this.senderAddress});
  factory _TokenIncomingTransfer.fromJson(Map<String, dynamic> json) => _$TokenIncomingTransferFromJson(json);

@override final  BigInt tokens;
@override final  Address senderAddress;

/// Create a copy of TokenIncomingTransfer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenIncomingTransferCopyWith<_TokenIncomingTransfer> get copyWith => __$TokenIncomingTransferCopyWithImpl<_TokenIncomingTransfer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenIncomingTransferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenIncomingTransfer&&(identical(other.tokens, tokens) || other.tokens == tokens)&&(identical(other.senderAddress, senderAddress) || other.senderAddress == senderAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tokens,senderAddress);

@override
String toString() {
  return 'TokenIncomingTransfer(tokens: $tokens, senderAddress: $senderAddress)';
}


}

/// @nodoc
abstract mixin class _$TokenIncomingTransferCopyWith<$Res> implements $TokenIncomingTransferCopyWith<$Res> {
  factory _$TokenIncomingTransferCopyWith(_TokenIncomingTransfer value, $Res Function(_TokenIncomingTransfer) _then) = __$TokenIncomingTransferCopyWithImpl;
@override @useResult
$Res call({
 BigInt tokens, Address senderAddress
});


@override $AddressCopyWith<$Res> get senderAddress;

}
/// @nodoc
class __$TokenIncomingTransferCopyWithImpl<$Res>
    implements _$TokenIncomingTransferCopyWith<$Res> {
  __$TokenIncomingTransferCopyWithImpl(this._self, this._then);

  final _TokenIncomingTransfer _self;
  final $Res Function(_TokenIncomingTransfer) _then;

/// Create a copy of TokenIncomingTransfer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tokens = null,Object? senderAddress = null,}) {
  return _then(_TokenIncomingTransfer(
tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as BigInt,senderAddress: null == senderAddress ? _self.senderAddress : senderAddress // ignore: cast_nullable_to_non_nullable
as Address,
  ));
}

/// Create a copy of TokenIncomingTransfer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get senderAddress {
  
  return $AddressCopyWith<$Res>(_self.senderAddress, (value) {
    return _then(_self.copyWith(senderAddress: value));
  });
}
}

// dart format on
