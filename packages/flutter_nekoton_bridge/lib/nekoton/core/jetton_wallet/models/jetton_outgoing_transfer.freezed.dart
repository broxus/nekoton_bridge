// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jetton_outgoing_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JettonOutgoingTransfer {

@amountJsonConverter BigInt get tokens; Address get to;
/// Create a copy of JettonOutgoingTransfer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JettonOutgoingTransferCopyWith<JettonOutgoingTransfer> get copyWith => _$JettonOutgoingTransferCopyWithImpl<JettonOutgoingTransfer>(this as JettonOutgoingTransfer, _$identity);

  /// Serializes this JettonOutgoingTransfer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JettonOutgoingTransfer&&(identical(other.tokens, tokens) || other.tokens == tokens)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tokens,to);

@override
String toString() {
  return 'JettonOutgoingTransfer(tokens: $tokens, to: $to)';
}


}

/// @nodoc
abstract mixin class $JettonOutgoingTransferCopyWith<$Res>  {
  factory $JettonOutgoingTransferCopyWith(JettonOutgoingTransfer value, $Res Function(JettonOutgoingTransfer) _then) = _$JettonOutgoingTransferCopyWithImpl;
@useResult
$Res call({
@amountJsonConverter BigInt tokens, Address to
});


$AddressCopyWith<$Res> get to;

}
/// @nodoc
class _$JettonOutgoingTransferCopyWithImpl<$Res>
    implements $JettonOutgoingTransferCopyWith<$Res> {
  _$JettonOutgoingTransferCopyWithImpl(this._self, this._then);

  final JettonOutgoingTransfer _self;
  final $Res Function(JettonOutgoingTransfer) _then;

/// Create a copy of JettonOutgoingTransfer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tokens = null,Object? to = null,}) {
  return _then(_self.copyWith(
tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as BigInt,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as Address,
  ));
}
/// Create a copy of JettonOutgoingTransfer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get to {
  
  return $AddressCopyWith<$Res>(_self.to, (value) {
    return _then(_self.copyWith(to: value));
  });
}
}


/// Adds pattern-matching-related methods to [JettonOutgoingTransfer].
extension JettonOutgoingTransferPatterns on JettonOutgoingTransfer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JettonOutgoingTransfer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JettonOutgoingTransfer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JettonOutgoingTransfer value)  $default,){
final _that = this;
switch (_that) {
case _JettonOutgoingTransfer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JettonOutgoingTransfer value)?  $default,){
final _that = this;
switch (_that) {
case _JettonOutgoingTransfer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@amountJsonConverter  BigInt tokens,  Address to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JettonOutgoingTransfer() when $default != null:
return $default(_that.tokens,_that.to);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@amountJsonConverter  BigInt tokens,  Address to)  $default,) {final _that = this;
switch (_that) {
case _JettonOutgoingTransfer():
return $default(_that.tokens,_that.to);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@amountJsonConverter  BigInt tokens,  Address to)?  $default,) {final _that = this;
switch (_that) {
case _JettonOutgoingTransfer() when $default != null:
return $default(_that.tokens,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JettonOutgoingTransfer implements JettonOutgoingTransfer {
  const _JettonOutgoingTransfer({@amountJsonConverter required this.tokens, required this.to});
  factory _JettonOutgoingTransfer.fromJson(Map<String, dynamic> json) => _$JettonOutgoingTransferFromJson(json);

@override@amountJsonConverter final  BigInt tokens;
@override final  Address to;

/// Create a copy of JettonOutgoingTransfer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JettonOutgoingTransferCopyWith<_JettonOutgoingTransfer> get copyWith => __$JettonOutgoingTransferCopyWithImpl<_JettonOutgoingTransfer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JettonOutgoingTransferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JettonOutgoingTransfer&&(identical(other.tokens, tokens) || other.tokens == tokens)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tokens,to);

@override
String toString() {
  return 'JettonOutgoingTransfer(tokens: $tokens, to: $to)';
}


}

/// @nodoc
abstract mixin class _$JettonOutgoingTransferCopyWith<$Res> implements $JettonOutgoingTransferCopyWith<$Res> {
  factory _$JettonOutgoingTransferCopyWith(_JettonOutgoingTransfer value, $Res Function(_JettonOutgoingTransfer) _then) = __$JettonOutgoingTransferCopyWithImpl;
@override @useResult
$Res call({
@amountJsonConverter BigInt tokens, Address to
});


@override $AddressCopyWith<$Res> get to;

}
/// @nodoc
class __$JettonOutgoingTransferCopyWithImpl<$Res>
    implements _$JettonOutgoingTransferCopyWith<$Res> {
  __$JettonOutgoingTransferCopyWithImpl(this._self, this._then);

  final _JettonOutgoingTransfer _self;
  final $Res Function(_JettonOutgoingTransfer) _then;

/// Create a copy of JettonOutgoingTransfer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tokens = null,Object? to = null,}) {
  return _then(_JettonOutgoingTransfer(
tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as BigInt,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as Address,
  ));
}

/// Create a copy of JettonOutgoingTransfer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get to {
  
  return $AddressCopyWith<$Res>(_self.to, (value) {
    return _then(_self.copyWith(to: value));
  });
}
}

// dart format on
