// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_update_params_rename_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DerivedKeyUpdateParamsRenameKey {

 PublicKey get masterKey; PublicKey get publicKey; String get name;
/// Create a copy of DerivedKeyUpdateParamsRenameKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DerivedKeyUpdateParamsRenameKeyCopyWith<DerivedKeyUpdateParamsRenameKey> get copyWith => _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<DerivedKeyUpdateParamsRenameKey>(this as DerivedKeyUpdateParamsRenameKey, _$identity);

  /// Serializes this DerivedKeyUpdateParamsRenameKey to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DerivedKeyUpdateParamsRenameKey&&(identical(other.masterKey, masterKey) || other.masterKey == masterKey)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,masterKey,publicKey,name);

@override
String toString() {
  return 'DerivedKeyUpdateParamsRenameKey(masterKey: $masterKey, publicKey: $publicKey, name: $name)';
}


}

/// @nodoc
abstract mixin class $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res>  {
  factory $DerivedKeyUpdateParamsRenameKeyCopyWith(DerivedKeyUpdateParamsRenameKey value, $Res Function(DerivedKeyUpdateParamsRenameKey) _then) = _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl;
@useResult
$Res call({
 PublicKey masterKey, PublicKey publicKey, String name
});


$PublicKeyCopyWith<$Res> get masterKey;$PublicKeyCopyWith<$Res> get publicKey;

}
/// @nodoc
class _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<$Res>
    implements $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> {
  _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl(this._self, this._then);

  final DerivedKeyUpdateParamsRenameKey _self;
  final $Res Function(DerivedKeyUpdateParamsRenameKey) _then;

/// Create a copy of DerivedKeyUpdateParamsRenameKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? masterKey = null,Object? publicKey = null,Object? name = null,}) {
  return _then(_self.copyWith(
masterKey: null == masterKey ? _self.masterKey : masterKey // ignore: cast_nullable_to_non_nullable
as PublicKey,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as PublicKey,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of DerivedKeyUpdateParamsRenameKey
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get masterKey {
  
  return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
    return _then(_self.copyWith(masterKey: value));
  });
}/// Create a copy of DerivedKeyUpdateParamsRenameKey
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get publicKey {
  
  return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
    return _then(_self.copyWith(publicKey: value));
  });
}
}


/// Adds pattern-matching-related methods to [DerivedKeyUpdateParamsRenameKey].
extension DerivedKeyUpdateParamsRenameKeyPatterns on DerivedKeyUpdateParamsRenameKey {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DerivedKeyUpdateParamsRenameKey value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DerivedKeyUpdateParamsRenameKey() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DerivedKeyUpdateParamsRenameKey value)  $default,){
final _that = this;
switch (_that) {
case _DerivedKeyUpdateParamsRenameKey():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DerivedKeyUpdateParamsRenameKey value)?  $default,){
final _that = this;
switch (_that) {
case _DerivedKeyUpdateParamsRenameKey() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PublicKey masterKey,  PublicKey publicKey,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DerivedKeyUpdateParamsRenameKey() when $default != null:
return $default(_that.masterKey,_that.publicKey,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PublicKey masterKey,  PublicKey publicKey,  String name)  $default,) {final _that = this;
switch (_that) {
case _DerivedKeyUpdateParamsRenameKey():
return $default(_that.masterKey,_that.publicKey,_that.name);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PublicKey masterKey,  PublicKey publicKey,  String name)?  $default,) {final _that = this;
switch (_that) {
case _DerivedKeyUpdateParamsRenameKey() when $default != null:
return $default(_that.masterKey,_that.publicKey,_that.name);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _DerivedKeyUpdateParamsRenameKey implements DerivedKeyUpdateParamsRenameKey {
  const _DerivedKeyUpdateParamsRenameKey({required this.masterKey, required this.publicKey, required this.name});
  factory _DerivedKeyUpdateParamsRenameKey.fromJson(Map<String, dynamic> json) => _$DerivedKeyUpdateParamsRenameKeyFromJson(json);

@override final  PublicKey masterKey;
@override final  PublicKey publicKey;
@override final  String name;

/// Create a copy of DerivedKeyUpdateParamsRenameKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DerivedKeyUpdateParamsRenameKeyCopyWith<_DerivedKeyUpdateParamsRenameKey> get copyWith => __$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<_DerivedKeyUpdateParamsRenameKey>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DerivedKeyUpdateParamsRenameKeyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DerivedKeyUpdateParamsRenameKey&&(identical(other.masterKey, masterKey) || other.masterKey == masterKey)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,masterKey,publicKey,name);

@override
String toString() {
  return 'DerivedKeyUpdateParamsRenameKey(masterKey: $masterKey, publicKey: $publicKey, name: $name)';
}


}

/// @nodoc
abstract mixin class _$DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> implements $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> {
  factory _$DerivedKeyUpdateParamsRenameKeyCopyWith(_DerivedKeyUpdateParamsRenameKey value, $Res Function(_DerivedKeyUpdateParamsRenameKey) _then) = __$DerivedKeyUpdateParamsRenameKeyCopyWithImpl;
@override @useResult
$Res call({
 PublicKey masterKey, PublicKey publicKey, String name
});


@override $PublicKeyCopyWith<$Res> get masterKey;@override $PublicKeyCopyWith<$Res> get publicKey;

}
/// @nodoc
class __$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<$Res>
    implements _$DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> {
  __$DerivedKeyUpdateParamsRenameKeyCopyWithImpl(this._self, this._then);

  final _DerivedKeyUpdateParamsRenameKey _self;
  final $Res Function(_DerivedKeyUpdateParamsRenameKey) _then;

/// Create a copy of DerivedKeyUpdateParamsRenameKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? masterKey = null,Object? publicKey = null,Object? name = null,}) {
  return _then(_DerivedKeyUpdateParamsRenameKey(
masterKey: null == masterKey ? _self.masterKey : masterKey // ignore: cast_nullable_to_non_nullable
as PublicKey,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as PublicKey,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of DerivedKeyUpdateParamsRenameKey
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get masterKey {
  
  return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
    return _then(_self.copyWith(masterKey: value));
  });
}/// Create a copy of DerivedKeyUpdateParamsRenameKey
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get publicKey {
  
  return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
    return _then(_self.copyWith(publicKey: value));
  });
}
}

// dart format on
