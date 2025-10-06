// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_balance_changed_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnBalanceChangedPayload {

 BigInt get balance;
/// Create a copy of OnBalanceChangedPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnBalanceChangedPayloadCopyWith<OnBalanceChangedPayload> get copyWith => _$OnBalanceChangedPayloadCopyWithImpl<OnBalanceChangedPayload>(this as OnBalanceChangedPayload, _$identity);

  /// Serializes this OnBalanceChangedPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnBalanceChangedPayload&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,balance);

@override
String toString() {
  return 'OnBalanceChangedPayload(balance: $balance)';
}


}

/// @nodoc
abstract mixin class $OnBalanceChangedPayloadCopyWith<$Res>  {
  factory $OnBalanceChangedPayloadCopyWith(OnBalanceChangedPayload value, $Res Function(OnBalanceChangedPayload) _then) = _$OnBalanceChangedPayloadCopyWithImpl;
@useResult
$Res call({
 BigInt balance
});




}
/// @nodoc
class _$OnBalanceChangedPayloadCopyWithImpl<$Res>
    implements $OnBalanceChangedPayloadCopyWith<$Res> {
  _$OnBalanceChangedPayloadCopyWithImpl(this._self, this._then);

  final OnBalanceChangedPayload _self;
  final $Res Function(OnBalanceChangedPayload) _then;

/// Create a copy of OnBalanceChangedPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? balance = null,}) {
  return _then(_self.copyWith(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

}


/// Adds pattern-matching-related methods to [OnBalanceChangedPayload].
extension OnBalanceChangedPayloadPatterns on OnBalanceChangedPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnBalanceChangedPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnBalanceChangedPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnBalanceChangedPayload value)  $default,){
final _that = this;
switch (_that) {
case _OnBalanceChangedPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnBalanceChangedPayload value)?  $default,){
final _that = this;
switch (_that) {
case _OnBalanceChangedPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BigInt balance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnBalanceChangedPayload() when $default != null:
return $default(_that.balance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BigInt balance)  $default,) {final _that = this;
switch (_that) {
case _OnBalanceChangedPayload():
return $default(_that.balance);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BigInt balance)?  $default,) {final _that = this;
switch (_that) {
case _OnBalanceChangedPayload() when $default != null:
return $default(_that.balance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OnBalanceChangedPayload implements OnBalanceChangedPayload {
  const _OnBalanceChangedPayload({required this.balance});
  factory _OnBalanceChangedPayload.fromJson(Map<String, dynamic> json) => _$OnBalanceChangedPayloadFromJson(json);

@override final  BigInt balance;

/// Create a copy of OnBalanceChangedPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnBalanceChangedPayloadCopyWith<_OnBalanceChangedPayload> get copyWith => __$OnBalanceChangedPayloadCopyWithImpl<_OnBalanceChangedPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnBalanceChangedPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnBalanceChangedPayload&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,balance);

@override
String toString() {
  return 'OnBalanceChangedPayload(balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$OnBalanceChangedPayloadCopyWith<$Res> implements $OnBalanceChangedPayloadCopyWith<$Res> {
  factory _$OnBalanceChangedPayloadCopyWith(_OnBalanceChangedPayload value, $Res Function(_OnBalanceChangedPayload) _then) = __$OnBalanceChangedPayloadCopyWithImpl;
@override @useResult
$Res call({
 BigInt balance
});




}
/// @nodoc
class __$OnBalanceChangedPayloadCopyWithImpl<$Res>
    implements _$OnBalanceChangedPayloadCopyWith<$Res> {
  __$OnBalanceChangedPayloadCopyWithImpl(this._self, this._then);

  final _OnBalanceChangedPayload _self;
  final $Res Function(_OnBalanceChangedPayload) _then;

/// Create a copy of OnBalanceChangedPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? balance = null,}) {
  return _then(_OnBalanceChangedPayload(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

// dart format on
