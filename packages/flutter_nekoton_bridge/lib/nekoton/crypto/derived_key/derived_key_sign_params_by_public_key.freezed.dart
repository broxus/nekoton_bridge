// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_sign_params_by_public_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DerivedKeyPasswordByPublicKey {

 PublicKey get masterKey; PublicKey get publicKey; Password get password;
/// Create a copy of DerivedKeyPasswordByPublicKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DerivedKeyPasswordByPublicKeyCopyWith<DerivedKeyPasswordByPublicKey> get copyWith => _$DerivedKeyPasswordByPublicKeyCopyWithImpl<DerivedKeyPasswordByPublicKey>(this as DerivedKeyPasswordByPublicKey, _$identity);

  /// Serializes this DerivedKeyPasswordByPublicKey to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DerivedKeyPasswordByPublicKey&&(identical(other.masterKey, masterKey) || other.masterKey == masterKey)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,masterKey,publicKey,password);

@override
String toString() {
  return 'DerivedKeyPasswordByPublicKey(masterKey: $masterKey, publicKey: $publicKey, password: $password)';
}


}

/// @nodoc
abstract mixin class $DerivedKeyPasswordByPublicKeyCopyWith<$Res>  {
  factory $DerivedKeyPasswordByPublicKeyCopyWith(DerivedKeyPasswordByPublicKey value, $Res Function(DerivedKeyPasswordByPublicKey) _then) = _$DerivedKeyPasswordByPublicKeyCopyWithImpl;
@useResult
$Res call({
 PublicKey masterKey, PublicKey publicKey, Password password
});


$PublicKeyCopyWith<$Res> get masterKey;$PublicKeyCopyWith<$Res> get publicKey;$PasswordCopyWith<$Res> get password;

}
/// @nodoc
class _$DerivedKeyPasswordByPublicKeyCopyWithImpl<$Res>
    implements $DerivedKeyPasswordByPublicKeyCopyWith<$Res> {
  _$DerivedKeyPasswordByPublicKeyCopyWithImpl(this._self, this._then);

  final DerivedKeyPasswordByPublicKey _self;
  final $Res Function(DerivedKeyPasswordByPublicKey) _then;

/// Create a copy of DerivedKeyPasswordByPublicKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? masterKey = null,Object? publicKey = null,Object? password = null,}) {
  return _then(_self.copyWith(
masterKey: null == masterKey ? _self.masterKey : masterKey // ignore: cast_nullable_to_non_nullable
as PublicKey,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as PublicKey,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,
  ));
}
/// Create a copy of DerivedKeyPasswordByPublicKey
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get masterKey {
  
  return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
    return _then(_self.copyWith(masterKey: value));
  });
}/// Create a copy of DerivedKeyPasswordByPublicKey
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get publicKey {
  
  return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
    return _then(_self.copyWith(publicKey: value));
  });
}/// Create a copy of DerivedKeyPasswordByPublicKey
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordCopyWith<$Res> get password {
  
  return $PasswordCopyWith<$Res>(_self.password, (value) {
    return _then(_self.copyWith(password: value));
  });
}
}


/// Adds pattern-matching-related methods to [DerivedKeyPasswordByPublicKey].
extension DerivedKeyPasswordByPublicKeyPatterns on DerivedKeyPasswordByPublicKey {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DerivedKeyPasswordByPublicKey value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DerivedKeyPasswordByPublicKey() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DerivedKeyPasswordByPublicKey value)  $default,){
final _that = this;
switch (_that) {
case _DerivedKeyPasswordByPublicKey():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DerivedKeyPasswordByPublicKey value)?  $default,){
final _that = this;
switch (_that) {
case _DerivedKeyPasswordByPublicKey() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PublicKey masterKey,  PublicKey publicKey,  Password password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DerivedKeyPasswordByPublicKey() when $default != null:
return $default(_that.masterKey,_that.publicKey,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PublicKey masterKey,  PublicKey publicKey,  Password password)  $default,) {final _that = this;
switch (_that) {
case _DerivedKeyPasswordByPublicKey():
return $default(_that.masterKey,_that.publicKey,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PublicKey masterKey,  PublicKey publicKey,  Password password)?  $default,) {final _that = this;
switch (_that) {
case _DerivedKeyPasswordByPublicKey() when $default != null:
return $default(_that.masterKey,_that.publicKey,_that.password);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _DerivedKeyPasswordByPublicKey implements DerivedKeyPasswordByPublicKey {
  const _DerivedKeyPasswordByPublicKey({required this.masterKey, required this.publicKey, required this.password});
  factory _DerivedKeyPasswordByPublicKey.fromJson(Map<String, dynamic> json) => _$DerivedKeyPasswordByPublicKeyFromJson(json);

@override final  PublicKey masterKey;
@override final  PublicKey publicKey;
@override final  Password password;

/// Create a copy of DerivedKeyPasswordByPublicKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DerivedKeyPasswordByPublicKeyCopyWith<_DerivedKeyPasswordByPublicKey> get copyWith => __$DerivedKeyPasswordByPublicKeyCopyWithImpl<_DerivedKeyPasswordByPublicKey>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DerivedKeyPasswordByPublicKeyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DerivedKeyPasswordByPublicKey&&(identical(other.masterKey, masterKey) || other.masterKey == masterKey)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,masterKey,publicKey,password);

@override
String toString() {
  return 'DerivedKeyPasswordByPublicKey(masterKey: $masterKey, publicKey: $publicKey, password: $password)';
}


}

/// @nodoc
abstract mixin class _$DerivedKeyPasswordByPublicKeyCopyWith<$Res> implements $DerivedKeyPasswordByPublicKeyCopyWith<$Res> {
  factory _$DerivedKeyPasswordByPublicKeyCopyWith(_DerivedKeyPasswordByPublicKey value, $Res Function(_DerivedKeyPasswordByPublicKey) _then) = __$DerivedKeyPasswordByPublicKeyCopyWithImpl;
@override @useResult
$Res call({
 PublicKey masterKey, PublicKey publicKey, Password password
});


@override $PublicKeyCopyWith<$Res> get masterKey;@override $PublicKeyCopyWith<$Res> get publicKey;@override $PasswordCopyWith<$Res> get password;

}
/// @nodoc
class __$DerivedKeyPasswordByPublicKeyCopyWithImpl<$Res>
    implements _$DerivedKeyPasswordByPublicKeyCopyWith<$Res> {
  __$DerivedKeyPasswordByPublicKeyCopyWithImpl(this._self, this._then);

  final _DerivedKeyPasswordByPublicKey _self;
  final $Res Function(_DerivedKeyPasswordByPublicKey) _then;

/// Create a copy of DerivedKeyPasswordByPublicKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? masterKey = null,Object? publicKey = null,Object? password = null,}) {
  return _then(_DerivedKeyPasswordByPublicKey(
masterKey: null == masterKey ? _self.masterKey : masterKey // ignore: cast_nullable_to_non_nullable
as PublicKey,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as PublicKey,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,
  ));
}

/// Create a copy of DerivedKeyPasswordByPublicKey
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get masterKey {
  
  return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
    return _then(_self.copyWith(masterKey: value));
  });
}/// Create a copy of DerivedKeyPasswordByPublicKey
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get publicKey {
  
  return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
    return _then(_self.copyWith(publicKey: value));
  });
}/// Create a copy of DerivedKeyPasswordByPublicKey
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
