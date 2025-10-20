// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tx_tree_simulation_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TxTreeSimulationError {

 TxTreeSimulationErrorType get type; num? get code;
/// Create a copy of TxTreeSimulationError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxTreeSimulationErrorCopyWith<TxTreeSimulationError> get copyWith => _$TxTreeSimulationErrorCopyWithImpl<TxTreeSimulationError>(this as TxTreeSimulationError, _$identity);

  /// Serializes this TxTreeSimulationError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxTreeSimulationError&&(identical(other.type, type) || other.type == type)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,code);

@override
String toString() {
  return 'TxTreeSimulationError(type: $type, code: $code)';
}


}

/// @nodoc
abstract mixin class $TxTreeSimulationErrorCopyWith<$Res>  {
  factory $TxTreeSimulationErrorCopyWith(TxTreeSimulationError value, $Res Function(TxTreeSimulationError) _then) = _$TxTreeSimulationErrorCopyWithImpl;
@useResult
$Res call({
 TxTreeSimulationErrorType type, num? code
});




}
/// @nodoc
class _$TxTreeSimulationErrorCopyWithImpl<$Res>
    implements $TxTreeSimulationErrorCopyWith<$Res> {
  _$TxTreeSimulationErrorCopyWithImpl(this._self, this._then);

  final TxTreeSimulationError _self;
  final $Res Function(TxTreeSimulationError) _then;

/// Create a copy of TxTreeSimulationError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? code = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TxTreeSimulationErrorType,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [TxTreeSimulationError].
extension TxTreeSimulationErrorPatterns on TxTreeSimulationError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TxTreeSimulationError value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TxTreeSimulationError() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TxTreeSimulationError value)  $default,){
final _that = this;
switch (_that) {
case _TxTreeSimulationError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TxTreeSimulationError value)?  $default,){
final _that = this;
switch (_that) {
case _TxTreeSimulationError() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TxTreeSimulationErrorType type,  num? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TxTreeSimulationError() when $default != null:
return $default(_that.type,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TxTreeSimulationErrorType type,  num? code)  $default,) {final _that = this;
switch (_that) {
case _TxTreeSimulationError():
return $default(_that.type,_that.code);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TxTreeSimulationErrorType type,  num? code)?  $default,) {final _that = this;
switch (_that) {
case _TxTreeSimulationError() when $default != null:
return $default(_that.type,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TxTreeSimulationError extends TxTreeSimulationError {
  const _TxTreeSimulationError({required this.type, this.code}): super._();
  factory _TxTreeSimulationError.fromJson(Map<String, dynamic> json) => _$TxTreeSimulationErrorFromJson(json);

@override final  TxTreeSimulationErrorType type;
@override final  num? code;

/// Create a copy of TxTreeSimulationError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxTreeSimulationErrorCopyWith<_TxTreeSimulationError> get copyWith => __$TxTreeSimulationErrorCopyWithImpl<_TxTreeSimulationError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TxTreeSimulationErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxTreeSimulationError&&(identical(other.type, type) || other.type == type)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,code);

@override
String toString() {
  return 'TxTreeSimulationError(type: $type, code: $code)';
}


}

/// @nodoc
abstract mixin class _$TxTreeSimulationErrorCopyWith<$Res> implements $TxTreeSimulationErrorCopyWith<$Res> {
  factory _$TxTreeSimulationErrorCopyWith(_TxTreeSimulationError value, $Res Function(_TxTreeSimulationError) _then) = __$TxTreeSimulationErrorCopyWithImpl;
@override @useResult
$Res call({
 TxTreeSimulationErrorType type, num? code
});




}
/// @nodoc
class __$TxTreeSimulationErrorCopyWithImpl<$Res>
    implements _$TxTreeSimulationErrorCopyWith<$Res> {
  __$TxTreeSimulationErrorCopyWithImpl(this._self, this._then);

  final _TxTreeSimulationError _self;
  final $Res Function(_TxTreeSimulationError) _then;

/// Create a copy of TxTreeSimulationError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? code = freezed,}) {
  return _then(_TxTreeSimulationError(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TxTreeSimulationErrorType,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

// dart format on
