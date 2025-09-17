// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_execution_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionExecutionOptions {

 bool get disableSignatureCheck;@amountJsonConverter BigInt? get overrideBalance;
/// Create a copy of TransactionExecutionOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionExecutionOptionsCopyWith<TransactionExecutionOptions> get copyWith => _$TransactionExecutionOptionsCopyWithImpl<TransactionExecutionOptions>(this as TransactionExecutionOptions, _$identity);

  /// Serializes this TransactionExecutionOptions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionExecutionOptions&&(identical(other.disableSignatureCheck, disableSignatureCheck) || other.disableSignatureCheck == disableSignatureCheck)&&(identical(other.overrideBalance, overrideBalance) || other.overrideBalance == overrideBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,disableSignatureCheck,overrideBalance);

@override
String toString() {
  return 'TransactionExecutionOptions(disableSignatureCheck: $disableSignatureCheck, overrideBalance: $overrideBalance)';
}


}

/// @nodoc
abstract mixin class $TransactionExecutionOptionsCopyWith<$Res>  {
  factory $TransactionExecutionOptionsCopyWith(TransactionExecutionOptions value, $Res Function(TransactionExecutionOptions) _then) = _$TransactionExecutionOptionsCopyWithImpl;
@useResult
$Res call({
 bool disableSignatureCheck,@amountJsonConverter BigInt? overrideBalance
});




}
/// @nodoc
class _$TransactionExecutionOptionsCopyWithImpl<$Res>
    implements $TransactionExecutionOptionsCopyWith<$Res> {
  _$TransactionExecutionOptionsCopyWithImpl(this._self, this._then);

  final TransactionExecutionOptions _self;
  final $Res Function(TransactionExecutionOptions) _then;

/// Create a copy of TransactionExecutionOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? disableSignatureCheck = null,Object? overrideBalance = freezed,}) {
  return _then(_self.copyWith(
disableSignatureCheck: null == disableSignatureCheck ? _self.disableSignatureCheck : disableSignatureCheck // ignore: cast_nullable_to_non_nullable
as bool,overrideBalance: freezed == overrideBalance ? _self.overrideBalance : overrideBalance // ignore: cast_nullable_to_non_nullable
as BigInt?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionExecutionOptions].
extension TransactionExecutionOptionsPatterns on TransactionExecutionOptions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionExecutionOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionExecutionOptions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionExecutionOptions value)  $default,){
final _that = this;
switch (_that) {
case _TransactionExecutionOptions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionExecutionOptions value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionExecutionOptions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool disableSignatureCheck, @amountJsonConverter  BigInt? overrideBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionExecutionOptions() when $default != null:
return $default(_that.disableSignatureCheck,_that.overrideBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool disableSignatureCheck, @amountJsonConverter  BigInt? overrideBalance)  $default,) {final _that = this;
switch (_that) {
case _TransactionExecutionOptions():
return $default(_that.disableSignatureCheck,_that.overrideBalance);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool disableSignatureCheck, @amountJsonConverter  BigInt? overrideBalance)?  $default,) {final _that = this;
switch (_that) {
case _TransactionExecutionOptions() when $default != null:
return $default(_that.disableSignatureCheck,_that.overrideBalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionExecutionOptions implements TransactionExecutionOptions {
  const _TransactionExecutionOptions({required this.disableSignatureCheck, @amountJsonConverter this.overrideBalance});
  factory _TransactionExecutionOptions.fromJson(Map<String, dynamic> json) => _$TransactionExecutionOptionsFromJson(json);

@override final  bool disableSignatureCheck;
@override@amountJsonConverter final  BigInt? overrideBalance;

/// Create a copy of TransactionExecutionOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionExecutionOptionsCopyWith<_TransactionExecutionOptions> get copyWith => __$TransactionExecutionOptionsCopyWithImpl<_TransactionExecutionOptions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionExecutionOptionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionExecutionOptions&&(identical(other.disableSignatureCheck, disableSignatureCheck) || other.disableSignatureCheck == disableSignatureCheck)&&(identical(other.overrideBalance, overrideBalance) || other.overrideBalance == overrideBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,disableSignatureCheck,overrideBalance);

@override
String toString() {
  return 'TransactionExecutionOptions(disableSignatureCheck: $disableSignatureCheck, overrideBalance: $overrideBalance)';
}


}

/// @nodoc
abstract mixin class _$TransactionExecutionOptionsCopyWith<$Res> implements $TransactionExecutionOptionsCopyWith<$Res> {
  factory _$TransactionExecutionOptionsCopyWith(_TransactionExecutionOptions value, $Res Function(_TransactionExecutionOptions) _then) = __$TransactionExecutionOptionsCopyWithImpl;
@override @useResult
$Res call({
 bool disableSignatureCheck,@amountJsonConverter BigInt? overrideBalance
});




}
/// @nodoc
class __$TransactionExecutionOptionsCopyWithImpl<$Res>
    implements _$TransactionExecutionOptionsCopyWith<$Res> {
  __$TransactionExecutionOptionsCopyWithImpl(this._self, this._then);

  final _TransactionExecutionOptions _self;
  final $Res Function(_TransactionExecutionOptions) _then;

/// Create a copy of TransactionExecutionOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? disableSignatureCheck = null,Object? overrideBalance = freezed,}) {
  return _then(_TransactionExecutionOptions(
disableSignatureCheck: null == disableSignatureCheck ? _self.disableSignatureCheck : disableSignatureCheck // ignore: cast_nullable_to_non_nullable
as bool,overrideBalance: freezed == overrideBalance ? _self.overrideBalance : overrideBalance // ignore: cast_nullable_to_non_nullable
as BigInt?,
  ));
}


}

// dart format on
