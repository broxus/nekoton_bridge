// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoded_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DecodedOutput {

 String get method; TokensObject get output;
/// Create a copy of DecodedOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecodedOutputCopyWith<DecodedOutput> get copyWith => _$DecodedOutputCopyWithImpl<DecodedOutput>(this as DecodedOutput, _$identity);

  /// Serializes this DecodedOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecodedOutput&&(identical(other.method, method) || other.method == method)&&const DeepCollectionEquality().equals(other.output, output));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,const DeepCollectionEquality().hash(output));

@override
String toString() {
  return 'DecodedOutput(method: $method, output: $output)';
}


}

/// @nodoc
abstract mixin class $DecodedOutputCopyWith<$Res>  {
  factory $DecodedOutputCopyWith(DecodedOutput value, $Res Function(DecodedOutput) _then) = _$DecodedOutputCopyWithImpl;
@useResult
$Res call({
 String method, TokensObject output
});




}
/// @nodoc
class _$DecodedOutputCopyWithImpl<$Res>
    implements $DecodedOutputCopyWith<$Res> {
  _$DecodedOutputCopyWithImpl(this._self, this._then);

  final DecodedOutput _self;
  final $Res Function(DecodedOutput) _then;

/// Create a copy of DecodedOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = null,Object? output = null,}) {
  return _then(_self.copyWith(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,output: null == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as TokensObject,
  ));
}

}


/// Adds pattern-matching-related methods to [DecodedOutput].
extension DecodedOutputPatterns on DecodedOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DecodedOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DecodedOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DecodedOutput value)  $default,){
final _that = this;
switch (_that) {
case _DecodedOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DecodedOutput value)?  $default,){
final _that = this;
switch (_that) {
case _DecodedOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String method,  TokensObject output)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DecodedOutput() when $default != null:
return $default(_that.method,_that.output);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String method,  TokensObject output)  $default,) {final _that = this;
switch (_that) {
case _DecodedOutput():
return $default(_that.method,_that.output);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String method,  TokensObject output)?  $default,) {final _that = this;
switch (_that) {
case _DecodedOutput() when $default != null:
return $default(_that.method,_that.output);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DecodedOutput implements DecodedOutput {
  const _DecodedOutput({required this.method, required final  TokensObject output}): _output = output;
  factory _DecodedOutput.fromJson(Map<String, dynamic> json) => _$DecodedOutputFromJson(json);

@override final  String method;
 final  TokensObject _output;
@override TokensObject get output {
  if (_output is EqualUnmodifiableMapView) return _output;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_output);
}


/// Create a copy of DecodedOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecodedOutputCopyWith<_DecodedOutput> get copyWith => __$DecodedOutputCopyWithImpl<_DecodedOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DecodedOutputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecodedOutput&&(identical(other.method, method) || other.method == method)&&const DeepCollectionEquality().equals(other._output, _output));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,const DeepCollectionEquality().hash(_output));

@override
String toString() {
  return 'DecodedOutput(method: $method, output: $output)';
}


}

/// @nodoc
abstract mixin class _$DecodedOutputCopyWith<$Res> implements $DecodedOutputCopyWith<$Res> {
  factory _$DecodedOutputCopyWith(_DecodedOutput value, $Res Function(_DecodedOutput) _then) = __$DecodedOutputCopyWithImpl;
@override @useResult
$Res call({
 String method, TokensObject output
});




}
/// @nodoc
class __$DecodedOutputCopyWithImpl<$Res>
    implements _$DecodedOutputCopyWith<$Res> {
  __$DecodedOutputCopyWithImpl(this._self, this._then);

  final _DecodedOutput _self;
  final $Res Function(_DecodedOutput) _then;

/// Create a copy of DecodedOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = null,Object? output = null,}) {
  return _then(_DecodedOutput(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,output: null == output ? _self._output : output // ignore: cast_nullable_to_non_nullable
as TokensObject,
  ));
}


}

// dart format on
