// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_outgoing_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenOutgoingTransfer {

 TransferRecipient get to;@amountJsonConverter BigInt get tokens;
/// Create a copy of TokenOutgoingTransfer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenOutgoingTransferCopyWith<TokenOutgoingTransfer> get copyWith => _$TokenOutgoingTransferCopyWithImpl<TokenOutgoingTransfer>(this as TokenOutgoingTransfer, _$identity);

  /// Serializes this TokenOutgoingTransfer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenOutgoingTransfer&&(identical(other.to, to) || other.to == to)&&(identical(other.tokens, tokens) || other.tokens == tokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,to,tokens);

@override
String toString() {
  return 'TokenOutgoingTransfer(to: $to, tokens: $tokens)';
}


}

/// @nodoc
abstract mixin class $TokenOutgoingTransferCopyWith<$Res>  {
  factory $TokenOutgoingTransferCopyWith(TokenOutgoingTransfer value, $Res Function(TokenOutgoingTransfer) _then) = _$TokenOutgoingTransferCopyWithImpl;
@useResult
$Res call({
 TransferRecipient to,@amountJsonConverter BigInt tokens
});


$TransferRecipientCopyWith<$Res> get to;

}
/// @nodoc
class _$TokenOutgoingTransferCopyWithImpl<$Res>
    implements $TokenOutgoingTransferCopyWith<$Res> {
  _$TokenOutgoingTransferCopyWithImpl(this._self, this._then);

  final TokenOutgoingTransfer _self;
  final $Res Function(TokenOutgoingTransfer) _then;

/// Create a copy of TokenOutgoingTransfer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? to = null,Object? tokens = null,}) {
  return _then(_self.copyWith(
to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as TransferRecipient,tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}
/// Create a copy of TokenOutgoingTransfer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransferRecipientCopyWith<$Res> get to {
  
  return $TransferRecipientCopyWith<$Res>(_self.to, (value) {
    return _then(_self.copyWith(to: value));
  });
}
}


/// Adds pattern-matching-related methods to [TokenOutgoingTransfer].
extension TokenOutgoingTransferPatterns on TokenOutgoingTransfer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokenOutgoingTransfer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokenOutgoingTransfer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokenOutgoingTransfer value)  $default,){
final _that = this;
switch (_that) {
case _TokenOutgoingTransfer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokenOutgoingTransfer value)?  $default,){
final _that = this;
switch (_that) {
case _TokenOutgoingTransfer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransferRecipient to, @amountJsonConverter  BigInt tokens)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokenOutgoingTransfer() when $default != null:
return $default(_that.to,_that.tokens);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransferRecipient to, @amountJsonConverter  BigInt tokens)  $default,) {final _that = this;
switch (_that) {
case _TokenOutgoingTransfer():
return $default(_that.to,_that.tokens);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransferRecipient to, @amountJsonConverter  BigInt tokens)?  $default,) {final _that = this;
switch (_that) {
case _TokenOutgoingTransfer() when $default != null:
return $default(_that.to,_that.tokens);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TokenOutgoingTransfer implements TokenOutgoingTransfer {
  const _TokenOutgoingTransfer({required this.to, @amountJsonConverter required this.tokens});
  factory _TokenOutgoingTransfer.fromJson(Map<String, dynamic> json) => _$TokenOutgoingTransferFromJson(json);

@override final  TransferRecipient to;
@override@amountJsonConverter final  BigInt tokens;

/// Create a copy of TokenOutgoingTransfer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenOutgoingTransferCopyWith<_TokenOutgoingTransfer> get copyWith => __$TokenOutgoingTransferCopyWithImpl<_TokenOutgoingTransfer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenOutgoingTransferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenOutgoingTransfer&&(identical(other.to, to) || other.to == to)&&(identical(other.tokens, tokens) || other.tokens == tokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,to,tokens);

@override
String toString() {
  return 'TokenOutgoingTransfer(to: $to, tokens: $tokens)';
}


}

/// @nodoc
abstract mixin class _$TokenOutgoingTransferCopyWith<$Res> implements $TokenOutgoingTransferCopyWith<$Res> {
  factory _$TokenOutgoingTransferCopyWith(_TokenOutgoingTransfer value, $Res Function(_TokenOutgoingTransfer) _then) = __$TokenOutgoingTransferCopyWithImpl;
@override @useResult
$Res call({
 TransferRecipient to,@amountJsonConverter BigInt tokens
});


@override $TransferRecipientCopyWith<$Res> get to;

}
/// @nodoc
class __$TokenOutgoingTransferCopyWithImpl<$Res>
    implements _$TokenOutgoingTransferCopyWith<$Res> {
  __$TokenOutgoingTransferCopyWithImpl(this._self, this._then);

  final _TokenOutgoingTransfer _self;
  final $Res Function(_TokenOutgoingTransfer) _then;

/// Create a copy of TokenOutgoingTransfer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? to = null,Object? tokens = null,}) {
  return _then(_TokenOutgoingTransfer(
to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as TransferRecipient,tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

/// Create a copy of TokenOutgoingTransfer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransferRecipientCopyWith<$Res> get to {
  
  return $TransferRecipientCopyWith<$Res>(_self.to, (value) {
    return _then(_self.copyWith(to: value));
  });
}
}

// dart format on
