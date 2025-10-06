// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_factors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeeFactors {

 int get storageFeeFactor; int get gasFeeFactor;
/// Create a copy of FeeFactors
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeFactorsCopyWith<FeeFactors> get copyWith => _$FeeFactorsCopyWithImpl<FeeFactors>(this as FeeFactors, _$identity);

  /// Serializes this FeeFactors to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeFactors&&(identical(other.storageFeeFactor, storageFeeFactor) || other.storageFeeFactor == storageFeeFactor)&&(identical(other.gasFeeFactor, gasFeeFactor) || other.gasFeeFactor == gasFeeFactor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storageFeeFactor,gasFeeFactor);

@override
String toString() {
  return 'FeeFactors(storageFeeFactor: $storageFeeFactor, gasFeeFactor: $gasFeeFactor)';
}


}

/// @nodoc
abstract mixin class $FeeFactorsCopyWith<$Res>  {
  factory $FeeFactorsCopyWith(FeeFactors value, $Res Function(FeeFactors) _then) = _$FeeFactorsCopyWithImpl;
@useResult
$Res call({
 int storageFeeFactor, int gasFeeFactor
});




}
/// @nodoc
class _$FeeFactorsCopyWithImpl<$Res>
    implements $FeeFactorsCopyWith<$Res> {
  _$FeeFactorsCopyWithImpl(this._self, this._then);

  final FeeFactors _self;
  final $Res Function(FeeFactors) _then;

/// Create a copy of FeeFactors
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storageFeeFactor = null,Object? gasFeeFactor = null,}) {
  return _then(_self.copyWith(
storageFeeFactor: null == storageFeeFactor ? _self.storageFeeFactor : storageFeeFactor // ignore: cast_nullable_to_non_nullable
as int,gasFeeFactor: null == gasFeeFactor ? _self.gasFeeFactor : gasFeeFactor // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeFactors].
extension FeeFactorsPatterns on FeeFactors {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeFactors value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeFactors() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeFactors value)  $default,){
final _that = this;
switch (_that) {
case _FeeFactors():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeFactors value)?  $default,){
final _that = this;
switch (_that) {
case _FeeFactors() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int storageFeeFactor,  int gasFeeFactor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeFactors() when $default != null:
return $default(_that.storageFeeFactor,_that.gasFeeFactor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int storageFeeFactor,  int gasFeeFactor)  $default,) {final _that = this;
switch (_that) {
case _FeeFactors():
return $default(_that.storageFeeFactor,_that.gasFeeFactor);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int storageFeeFactor,  int gasFeeFactor)?  $default,) {final _that = this;
switch (_that) {
case _FeeFactors() when $default != null:
return $default(_that.storageFeeFactor,_that.gasFeeFactor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeFactors implements FeeFactors {
  const _FeeFactors({required this.storageFeeFactor, required this.gasFeeFactor});
  factory _FeeFactors.fromJson(Map<String, dynamic> json) => _$FeeFactorsFromJson(json);

@override final  int storageFeeFactor;
@override final  int gasFeeFactor;

/// Create a copy of FeeFactors
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeFactorsCopyWith<_FeeFactors> get copyWith => __$FeeFactorsCopyWithImpl<_FeeFactors>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeFactorsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeFactors&&(identical(other.storageFeeFactor, storageFeeFactor) || other.storageFeeFactor == storageFeeFactor)&&(identical(other.gasFeeFactor, gasFeeFactor) || other.gasFeeFactor == gasFeeFactor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storageFeeFactor,gasFeeFactor);

@override
String toString() {
  return 'FeeFactors(storageFeeFactor: $storageFeeFactor, gasFeeFactor: $gasFeeFactor)';
}


}

/// @nodoc
abstract mixin class _$FeeFactorsCopyWith<$Res> implements $FeeFactorsCopyWith<$Res> {
  factory _$FeeFactorsCopyWith(_FeeFactors value, $Res Function(_FeeFactors) _then) = __$FeeFactorsCopyWithImpl;
@override @useResult
$Res call({
 int storageFeeFactor, int gasFeeFactor
});




}
/// @nodoc
class __$FeeFactorsCopyWithImpl<$Res>
    implements _$FeeFactorsCopyWith<$Res> {
  __$FeeFactorsCopyWithImpl(this._self, this._then);

  final _FeeFactors _self;
  final $Res Function(_FeeFactors) _then;

/// Create a copy of FeeFactors
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storageFeeFactor = null,Object? gasFeeFactor = null,}) {
  return _then(_FeeFactors(
storageFeeFactor: null == storageFeeFactor ? _self.storageFeeFactor : storageFeeFactor // ignore: cast_nullable_to_non_nullable
as int,gasFeeFactor: null == gasFeeFactor ? _self.gasFeeFactor : gasFeeFactor // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
