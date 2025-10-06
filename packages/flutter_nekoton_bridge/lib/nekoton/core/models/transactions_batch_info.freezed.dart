// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_batch_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionsBatchInfo {

 String get minLt; String get maxLt; TransactionsBatchType get batchType;
/// Create a copy of TransactionsBatchInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionsBatchInfoCopyWith<TransactionsBatchInfo> get copyWith => _$TransactionsBatchInfoCopyWithImpl<TransactionsBatchInfo>(this as TransactionsBatchInfo, _$identity);

  /// Serializes this TransactionsBatchInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionsBatchInfo&&(identical(other.minLt, minLt) || other.minLt == minLt)&&(identical(other.maxLt, maxLt) || other.maxLt == maxLt)&&(identical(other.batchType, batchType) || other.batchType == batchType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minLt,maxLt,batchType);

@override
String toString() {
  return 'TransactionsBatchInfo(minLt: $minLt, maxLt: $maxLt, batchType: $batchType)';
}


}

/// @nodoc
abstract mixin class $TransactionsBatchInfoCopyWith<$Res>  {
  factory $TransactionsBatchInfoCopyWith(TransactionsBatchInfo value, $Res Function(TransactionsBatchInfo) _then) = _$TransactionsBatchInfoCopyWithImpl;
@useResult
$Res call({
 String minLt, String maxLt, TransactionsBatchType batchType
});




}
/// @nodoc
class _$TransactionsBatchInfoCopyWithImpl<$Res>
    implements $TransactionsBatchInfoCopyWith<$Res> {
  _$TransactionsBatchInfoCopyWithImpl(this._self, this._then);

  final TransactionsBatchInfo _self;
  final $Res Function(TransactionsBatchInfo) _then;

/// Create a copy of TransactionsBatchInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minLt = null,Object? maxLt = null,Object? batchType = null,}) {
  return _then(_self.copyWith(
minLt: null == minLt ? _self.minLt : minLt // ignore: cast_nullable_to_non_nullable
as String,maxLt: null == maxLt ? _self.maxLt : maxLt // ignore: cast_nullable_to_non_nullable
as String,batchType: null == batchType ? _self.batchType : batchType // ignore: cast_nullable_to_non_nullable
as TransactionsBatchType,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionsBatchInfo].
extension TransactionsBatchInfoPatterns on TransactionsBatchInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionsBatchInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionsBatchInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionsBatchInfo value)  $default,){
final _that = this;
switch (_that) {
case _TransactionsBatchInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionsBatchInfo value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionsBatchInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String minLt,  String maxLt,  TransactionsBatchType batchType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionsBatchInfo() when $default != null:
return $default(_that.minLt,_that.maxLt,_that.batchType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String minLt,  String maxLt,  TransactionsBatchType batchType)  $default,) {final _that = this;
switch (_that) {
case _TransactionsBatchInfo():
return $default(_that.minLt,_that.maxLt,_that.batchType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String minLt,  String maxLt,  TransactionsBatchType batchType)?  $default,) {final _that = this;
switch (_that) {
case _TransactionsBatchInfo() when $default != null:
return $default(_that.minLt,_that.maxLt,_that.batchType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionsBatchInfo implements TransactionsBatchInfo {
  const _TransactionsBatchInfo({required this.minLt, required this.maxLt, required this.batchType});
  factory _TransactionsBatchInfo.fromJson(Map<String, dynamic> json) => _$TransactionsBatchInfoFromJson(json);

@override final  String minLt;
@override final  String maxLt;
@override final  TransactionsBatchType batchType;

/// Create a copy of TransactionsBatchInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionsBatchInfoCopyWith<_TransactionsBatchInfo> get copyWith => __$TransactionsBatchInfoCopyWithImpl<_TransactionsBatchInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionsBatchInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionsBatchInfo&&(identical(other.minLt, minLt) || other.minLt == minLt)&&(identical(other.maxLt, maxLt) || other.maxLt == maxLt)&&(identical(other.batchType, batchType) || other.batchType == batchType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minLt,maxLt,batchType);

@override
String toString() {
  return 'TransactionsBatchInfo(minLt: $minLt, maxLt: $maxLt, batchType: $batchType)';
}


}

/// @nodoc
abstract mixin class _$TransactionsBatchInfoCopyWith<$Res> implements $TransactionsBatchInfoCopyWith<$Res> {
  factory _$TransactionsBatchInfoCopyWith(_TransactionsBatchInfo value, $Res Function(_TransactionsBatchInfo) _then) = __$TransactionsBatchInfoCopyWithImpl;
@override @useResult
$Res call({
 String minLt, String maxLt, TransactionsBatchType batchType
});




}
/// @nodoc
class __$TransactionsBatchInfoCopyWithImpl<$Res>
    implements _$TransactionsBatchInfoCopyWith<$Res> {
  __$TransactionsBatchInfoCopyWithImpl(this._self, this._then);

  final _TransactionsBatchInfo _self;
  final $Res Function(_TransactionsBatchInfo) _then;

/// Create a copy of TransactionsBatchInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minLt = null,Object? maxLt = null,Object? batchType = null,}) {
  return _then(_TransactionsBatchInfo(
minLt: null == minLt ? _self.minLt : minLt // ignore: cast_nullable_to_non_nullable
as String,maxLt: null == maxLt ? _self.maxLt : maxLt // ignore: cast_nullable_to_non_nullable
as String,batchType: null == batchType ? _self.batchType : batchType // ignore: cast_nullable_to_non_nullable
as TransactionsBatchType,
  ));
}


}

// dart format on
