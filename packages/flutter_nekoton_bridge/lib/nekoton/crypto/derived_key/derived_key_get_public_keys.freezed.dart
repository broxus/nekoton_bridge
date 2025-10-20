// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_get_public_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DerivedKeyGetPublicKeys {

 PublicKey get masterKey; Password get password; int get limit; int get offset;
/// Create a copy of DerivedKeyGetPublicKeys
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DerivedKeyGetPublicKeysCopyWith<DerivedKeyGetPublicKeys> get copyWith => _$DerivedKeyGetPublicKeysCopyWithImpl<DerivedKeyGetPublicKeys>(this as DerivedKeyGetPublicKeys, _$identity);

  /// Serializes this DerivedKeyGetPublicKeys to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DerivedKeyGetPublicKeys&&(identical(other.masterKey, masterKey) || other.masterKey == masterKey)&&(identical(other.password, password) || other.password == password)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,masterKey,password,limit,offset);

@override
String toString() {
  return 'DerivedKeyGetPublicKeys(masterKey: $masterKey, password: $password, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $DerivedKeyGetPublicKeysCopyWith<$Res>  {
  factory $DerivedKeyGetPublicKeysCopyWith(DerivedKeyGetPublicKeys value, $Res Function(DerivedKeyGetPublicKeys) _then) = _$DerivedKeyGetPublicKeysCopyWithImpl;
@useResult
$Res call({
 PublicKey masterKey, Password password, int limit, int offset
});


$PublicKeyCopyWith<$Res> get masterKey;$PasswordCopyWith<$Res> get password;

}
/// @nodoc
class _$DerivedKeyGetPublicKeysCopyWithImpl<$Res>
    implements $DerivedKeyGetPublicKeysCopyWith<$Res> {
  _$DerivedKeyGetPublicKeysCopyWithImpl(this._self, this._then);

  final DerivedKeyGetPublicKeys _self;
  final $Res Function(DerivedKeyGetPublicKeys) _then;

/// Create a copy of DerivedKeyGetPublicKeys
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? masterKey = null,Object? password = null,Object? limit = null,Object? offset = null,}) {
  return _then(_self.copyWith(
masterKey: null == masterKey ? _self.masterKey : masterKey // ignore: cast_nullable_to_non_nullable
as PublicKey,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of DerivedKeyGetPublicKeys
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get masterKey {
  
  return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
    return _then(_self.copyWith(masterKey: value));
  });
}/// Create a copy of DerivedKeyGetPublicKeys
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordCopyWith<$Res> get password {
  
  return $PasswordCopyWith<$Res>(_self.password, (value) {
    return _then(_self.copyWith(password: value));
  });
}
}


/// Adds pattern-matching-related methods to [DerivedKeyGetPublicKeys].
extension DerivedKeyGetPublicKeysPatterns on DerivedKeyGetPublicKeys {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DerivedKeyGetPublicKeys value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DerivedKeyGetPublicKeys() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DerivedKeyGetPublicKeys value)  $default,){
final _that = this;
switch (_that) {
case _DerivedKeyGetPublicKeys():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DerivedKeyGetPublicKeys value)?  $default,){
final _that = this;
switch (_that) {
case _DerivedKeyGetPublicKeys() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PublicKey masterKey,  Password password,  int limit,  int offset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DerivedKeyGetPublicKeys() when $default != null:
return $default(_that.masterKey,_that.password,_that.limit,_that.offset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PublicKey masterKey,  Password password,  int limit,  int offset)  $default,) {final _that = this;
switch (_that) {
case _DerivedKeyGetPublicKeys():
return $default(_that.masterKey,_that.password,_that.limit,_that.offset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PublicKey masterKey,  Password password,  int limit,  int offset)?  $default,) {final _that = this;
switch (_that) {
case _DerivedKeyGetPublicKeys() when $default != null:
return $default(_that.masterKey,_that.password,_that.limit,_that.offset);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _DerivedKeyGetPublicKeys implements DerivedKeyGetPublicKeys {
  const _DerivedKeyGetPublicKeys({required this.masterKey, required this.password, required this.limit, required this.offset});
  factory _DerivedKeyGetPublicKeys.fromJson(Map<String, dynamic> json) => _$DerivedKeyGetPublicKeysFromJson(json);

@override final  PublicKey masterKey;
@override final  Password password;
@override final  int limit;
@override final  int offset;

/// Create a copy of DerivedKeyGetPublicKeys
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DerivedKeyGetPublicKeysCopyWith<_DerivedKeyGetPublicKeys> get copyWith => __$DerivedKeyGetPublicKeysCopyWithImpl<_DerivedKeyGetPublicKeys>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DerivedKeyGetPublicKeysToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DerivedKeyGetPublicKeys&&(identical(other.masterKey, masterKey) || other.masterKey == masterKey)&&(identical(other.password, password) || other.password == password)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,masterKey,password,limit,offset);

@override
String toString() {
  return 'DerivedKeyGetPublicKeys(masterKey: $masterKey, password: $password, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$DerivedKeyGetPublicKeysCopyWith<$Res> implements $DerivedKeyGetPublicKeysCopyWith<$Res> {
  factory _$DerivedKeyGetPublicKeysCopyWith(_DerivedKeyGetPublicKeys value, $Res Function(_DerivedKeyGetPublicKeys) _then) = __$DerivedKeyGetPublicKeysCopyWithImpl;
@override @useResult
$Res call({
 PublicKey masterKey, Password password, int limit, int offset
});


@override $PublicKeyCopyWith<$Res> get masterKey;@override $PasswordCopyWith<$Res> get password;

}
/// @nodoc
class __$DerivedKeyGetPublicKeysCopyWithImpl<$Res>
    implements _$DerivedKeyGetPublicKeysCopyWith<$Res> {
  __$DerivedKeyGetPublicKeysCopyWithImpl(this._self, this._then);

  final _DerivedKeyGetPublicKeys _self;
  final $Res Function(_DerivedKeyGetPublicKeys) _then;

/// Create a copy of DerivedKeyGetPublicKeys
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? masterKey = null,Object? password = null,Object? limit = null,Object? offset = null,}) {
  return _then(_DerivedKeyGetPublicKeys(
masterKey: null == masterKey ? _self.masterKey : masterKey // ignore: cast_nullable_to_non_nullable
as PublicKey,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of DerivedKeyGetPublicKeys
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get masterKey {
  
  return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
    return _then(_self.copyWith(masterKey: value));
  });
}/// Create a copy of DerivedKeyGetPublicKeys
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordCopyWith<$Res> get password {
  
  return $PasswordCopyWith<$Res>(_self.password, (value) {
    return _then(_self.copyWith(password: value));
  });
}
}

// dart format on
