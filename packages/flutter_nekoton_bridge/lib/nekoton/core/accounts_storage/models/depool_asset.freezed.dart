// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'depool_asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DePoolAsset {

 Address get address;
/// Create a copy of DePoolAsset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DePoolAssetCopyWith<DePoolAsset> get copyWith => _$DePoolAssetCopyWithImpl<DePoolAsset>(this as DePoolAsset, _$identity);

  /// Serializes this DePoolAsset to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DePoolAsset&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'DePoolAsset(address: $address)';
}


}

/// @nodoc
abstract mixin class $DePoolAssetCopyWith<$Res>  {
  factory $DePoolAssetCopyWith(DePoolAsset value, $Res Function(DePoolAsset) _then) = _$DePoolAssetCopyWithImpl;
@useResult
$Res call({
 Address address
});


$AddressCopyWith<$Res> get address;

}
/// @nodoc
class _$DePoolAssetCopyWithImpl<$Res>
    implements $DePoolAssetCopyWith<$Res> {
  _$DePoolAssetCopyWithImpl(this._self, this._then);

  final DePoolAsset _self;
  final $Res Function(DePoolAsset) _then;

/// Create a copy of DePoolAsset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address,
  ));
}
/// Create a copy of DePoolAsset
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get address {
  
  return $AddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [DePoolAsset].
extension DePoolAssetPatterns on DePoolAsset {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DePoolAsset value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DePoolAsset() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DePoolAsset value)  $default,){
final _that = this;
switch (_that) {
case _DePoolAsset():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DePoolAsset value)?  $default,){
final _that = this;
switch (_that) {
case _DePoolAsset() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Address address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DePoolAsset() when $default != null:
return $default(_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Address address)  $default,) {final _that = this;
switch (_that) {
case _DePoolAsset():
return $default(_that.address);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Address address)?  $default,) {final _that = this;
switch (_that) {
case _DePoolAsset() when $default != null:
return $default(_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DePoolAsset implements DePoolAsset {
  const _DePoolAsset({required this.address});
  factory _DePoolAsset.fromJson(Map<String, dynamic> json) => _$DePoolAssetFromJson(json);

@override final  Address address;

/// Create a copy of DePoolAsset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DePoolAssetCopyWith<_DePoolAsset> get copyWith => __$DePoolAssetCopyWithImpl<_DePoolAsset>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DePoolAssetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DePoolAsset&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'DePoolAsset(address: $address)';
}


}

/// @nodoc
abstract mixin class _$DePoolAssetCopyWith<$Res> implements $DePoolAssetCopyWith<$Res> {
  factory _$DePoolAssetCopyWith(_DePoolAsset value, $Res Function(_DePoolAsset) _then) = __$DePoolAssetCopyWithImpl;
@override @useResult
$Res call({
 Address address
});


@override $AddressCopyWith<$Res> get address;

}
/// @nodoc
class __$DePoolAssetCopyWithImpl<$Res>
    implements _$DePoolAssetCopyWith<$Res> {
  __$DePoolAssetCopyWithImpl(this._self, this._then);

  final _DePoolAsset _self;
  final $Res Function(_DePoolAsset) _then;

/// Create a copy of DePoolAsset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,}) {
  return _then(_DePoolAsset(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address,
  ));
}

/// Create a copy of DePoolAsset
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get address {
  
  return $AddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

// dart format on
