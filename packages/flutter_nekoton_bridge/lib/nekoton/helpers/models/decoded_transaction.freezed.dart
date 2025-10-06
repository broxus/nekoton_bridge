// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoded_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DecodedTransaction {

 String get method; TokensObject get input; TokensObject get output;
/// Create a copy of DecodedTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecodedTransactionCopyWith<DecodedTransaction> get copyWith => _$DecodedTransactionCopyWithImpl<DecodedTransaction>(this as DecodedTransaction, _$identity);

  /// Serializes this DecodedTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecodedTransaction&&(identical(other.method, method) || other.method == method)&&const DeepCollectionEquality().equals(other.input, input)&&const DeepCollectionEquality().equals(other.output, output));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,const DeepCollectionEquality().hash(input),const DeepCollectionEquality().hash(output));

@override
String toString() {
  return 'DecodedTransaction(method: $method, input: $input, output: $output)';
}


}

/// @nodoc
abstract mixin class $DecodedTransactionCopyWith<$Res>  {
  factory $DecodedTransactionCopyWith(DecodedTransaction value, $Res Function(DecodedTransaction) _then) = _$DecodedTransactionCopyWithImpl;
@useResult
$Res call({
 String method, TokensObject input, TokensObject output
});




}
/// @nodoc
class _$DecodedTransactionCopyWithImpl<$Res>
    implements $DecodedTransactionCopyWith<$Res> {
  _$DecodedTransactionCopyWithImpl(this._self, this._then);

  final DecodedTransaction _self;
  final $Res Function(DecodedTransaction) _then;

/// Create a copy of DecodedTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = null,Object? input = null,Object? output = null,}) {
  return _then(_self.copyWith(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as TokensObject,output: null == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as TokensObject,
  ));
}

}


/// Adds pattern-matching-related methods to [DecodedTransaction].
extension DecodedTransactionPatterns on DecodedTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DecodedTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DecodedTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DecodedTransaction value)  $default,){
final _that = this;
switch (_that) {
case _DecodedTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DecodedTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _DecodedTransaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String method,  TokensObject input,  TokensObject output)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DecodedTransaction() when $default != null:
return $default(_that.method,_that.input,_that.output);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String method,  TokensObject input,  TokensObject output)  $default,) {final _that = this;
switch (_that) {
case _DecodedTransaction():
return $default(_that.method,_that.input,_that.output);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String method,  TokensObject input,  TokensObject output)?  $default,) {final _that = this;
switch (_that) {
case _DecodedTransaction() when $default != null:
return $default(_that.method,_that.input,_that.output);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DecodedTransaction implements DecodedTransaction {
  const _DecodedTransaction({required this.method, required final  TokensObject input, required final  TokensObject output}): _input = input,_output = output;
  factory _DecodedTransaction.fromJson(Map<String, dynamic> json) => _$DecodedTransactionFromJson(json);

@override final  String method;
 final  TokensObject _input;
@override TokensObject get input {
  if (_input is EqualUnmodifiableMapView) return _input;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_input);
}

 final  TokensObject _output;
@override TokensObject get output {
  if (_output is EqualUnmodifiableMapView) return _output;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_output);
}


/// Create a copy of DecodedTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecodedTransactionCopyWith<_DecodedTransaction> get copyWith => __$DecodedTransactionCopyWithImpl<_DecodedTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DecodedTransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecodedTransaction&&(identical(other.method, method) || other.method == method)&&const DeepCollectionEquality().equals(other._input, _input)&&const DeepCollectionEquality().equals(other._output, _output));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,const DeepCollectionEquality().hash(_input),const DeepCollectionEquality().hash(_output));

@override
String toString() {
  return 'DecodedTransaction(method: $method, input: $input, output: $output)';
}


}

/// @nodoc
abstract mixin class _$DecodedTransactionCopyWith<$Res> implements $DecodedTransactionCopyWith<$Res> {
  factory _$DecodedTransactionCopyWith(_DecodedTransaction value, $Res Function(_DecodedTransaction) _then) = __$DecodedTransactionCopyWithImpl;
@override @useResult
$Res call({
 String method, TokensObject input, TokensObject output
});




}
/// @nodoc
class __$DecodedTransactionCopyWithImpl<$Res>
    implements _$DecodedTransactionCopyWith<$Res> {
  __$DecodedTransactionCopyWithImpl(this._self, this._then);

  final _DecodedTransaction _self;
  final $Res Function(_DecodedTransaction) _then;

/// Create a copy of DecodedTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = null,Object? input = null,Object? output = null,}) {
  return _then(_DecodedTransaction(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,input: null == input ? _self._input : input // ignore: cast_nullable_to_non_nullable
as TokensObject,output: null == output ? _self._output : output // ignore: cast_nullable_to_non_nullable
as TokensObject,
  ));
}


}

// dart format on
