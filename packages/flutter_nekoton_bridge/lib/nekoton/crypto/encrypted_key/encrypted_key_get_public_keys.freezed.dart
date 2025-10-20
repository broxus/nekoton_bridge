// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_get_public_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EncryptedKeyGetPublicKeys {

 PublicKey get publicKey;
/// Create a copy of EncryptedKeyGetPublicKeys
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptedKeyGetPublicKeysCopyWith<EncryptedKeyGetPublicKeys> get copyWith => _$EncryptedKeyGetPublicKeysCopyWithImpl<EncryptedKeyGetPublicKeys>(this as EncryptedKeyGetPublicKeys, _$identity);

  /// Serializes this EncryptedKeyGetPublicKeys to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptedKeyGetPublicKeys&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,publicKey);

@override
String toString() {
  return 'EncryptedKeyGetPublicKeys(publicKey: $publicKey)';
}


}

/// @nodoc
abstract mixin class $EncryptedKeyGetPublicKeysCopyWith<$Res>  {
  factory $EncryptedKeyGetPublicKeysCopyWith(EncryptedKeyGetPublicKeys value, $Res Function(EncryptedKeyGetPublicKeys) _then) = _$EncryptedKeyGetPublicKeysCopyWithImpl;
@useResult
$Res call({
 PublicKey publicKey
});


$PublicKeyCopyWith<$Res> get publicKey;

}
/// @nodoc
class _$EncryptedKeyGetPublicKeysCopyWithImpl<$Res>
    implements $EncryptedKeyGetPublicKeysCopyWith<$Res> {
  _$EncryptedKeyGetPublicKeysCopyWithImpl(this._self, this._then);

  final EncryptedKeyGetPublicKeys _self;
  final $Res Function(EncryptedKeyGetPublicKeys) _then;

/// Create a copy of EncryptedKeyGetPublicKeys
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? publicKey = null,}) {
  return _then(_self.copyWith(
publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as PublicKey,
  ));
}
/// Create a copy of EncryptedKeyGetPublicKeys
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get publicKey {
  
  return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
    return _then(_self.copyWith(publicKey: value));
  });
}
}


/// Adds pattern-matching-related methods to [EncryptedKeyGetPublicKeys].
extension EncryptedKeyGetPublicKeysPatterns on EncryptedKeyGetPublicKeys {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EncryptedKeyGetPublicKeys value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EncryptedKeyGetPublicKeys() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EncryptedKeyGetPublicKeys value)  $default,){
final _that = this;
switch (_that) {
case _EncryptedKeyGetPublicKeys():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EncryptedKeyGetPublicKeys value)?  $default,){
final _that = this;
switch (_that) {
case _EncryptedKeyGetPublicKeys() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PublicKey publicKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EncryptedKeyGetPublicKeys() when $default != null:
return $default(_that.publicKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PublicKey publicKey)  $default,) {final _that = this;
switch (_that) {
case _EncryptedKeyGetPublicKeys():
return $default(_that.publicKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PublicKey publicKey)?  $default,) {final _that = this;
switch (_that) {
case _EncryptedKeyGetPublicKeys() when $default != null:
return $default(_that.publicKey);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _EncryptedKeyGetPublicKeys implements EncryptedKeyGetPublicKeys {
  const _EncryptedKeyGetPublicKeys({required this.publicKey});
  factory _EncryptedKeyGetPublicKeys.fromJson(Map<String, dynamic> json) => _$EncryptedKeyGetPublicKeysFromJson(json);

@override final  PublicKey publicKey;

/// Create a copy of EncryptedKeyGetPublicKeys
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptedKeyGetPublicKeysCopyWith<_EncryptedKeyGetPublicKeys> get copyWith => __$EncryptedKeyGetPublicKeysCopyWithImpl<_EncryptedKeyGetPublicKeys>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EncryptedKeyGetPublicKeysToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptedKeyGetPublicKeys&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,publicKey);

@override
String toString() {
  return 'EncryptedKeyGetPublicKeys(publicKey: $publicKey)';
}


}

/// @nodoc
abstract mixin class _$EncryptedKeyGetPublicKeysCopyWith<$Res> implements $EncryptedKeyGetPublicKeysCopyWith<$Res> {
  factory _$EncryptedKeyGetPublicKeysCopyWith(_EncryptedKeyGetPublicKeys value, $Res Function(_EncryptedKeyGetPublicKeys) _then) = __$EncryptedKeyGetPublicKeysCopyWithImpl;
@override @useResult
$Res call({
 PublicKey publicKey
});


@override $PublicKeyCopyWith<$Res> get publicKey;

}
/// @nodoc
class __$EncryptedKeyGetPublicKeysCopyWithImpl<$Res>
    implements _$EncryptedKeyGetPublicKeysCopyWith<$Res> {
  __$EncryptedKeyGetPublicKeysCopyWithImpl(this._self, this._then);

  final _EncryptedKeyGetPublicKeys _self;
  final $Res Function(_EncryptedKeyGetPublicKeys) _then;

/// Create a copy of EncryptedKeyGetPublicKeys
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? publicKey = null,}) {
  return _then(_EncryptedKeyGetPublicKeys(
publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as PublicKey,
  ));
}

/// Create a copy of EncryptedKeyGetPublicKeys
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
