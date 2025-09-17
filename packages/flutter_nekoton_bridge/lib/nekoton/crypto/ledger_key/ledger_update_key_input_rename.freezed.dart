// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_update_key_input_rename.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LedgerUpdateKeyInputRename {

 PublicKey get publicKey; String get name;
/// Create a copy of LedgerUpdateKeyInputRename
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedgerUpdateKeyInputRenameCopyWith<LedgerUpdateKeyInputRename> get copyWith => _$LedgerUpdateKeyInputRenameCopyWithImpl<LedgerUpdateKeyInputRename>(this as LedgerUpdateKeyInputRename, _$identity);

  /// Serializes this LedgerUpdateKeyInputRename to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LedgerUpdateKeyInputRename&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,publicKey,name);

@override
String toString() {
  return 'LedgerUpdateKeyInputRename(publicKey: $publicKey, name: $name)';
}


}

/// @nodoc
abstract mixin class $LedgerUpdateKeyInputRenameCopyWith<$Res>  {
  factory $LedgerUpdateKeyInputRenameCopyWith(LedgerUpdateKeyInputRename value, $Res Function(LedgerUpdateKeyInputRename) _then) = _$LedgerUpdateKeyInputRenameCopyWithImpl;
@useResult
$Res call({
 PublicKey publicKey, String name
});


$PublicKeyCopyWith<$Res> get publicKey;

}
/// @nodoc
class _$LedgerUpdateKeyInputRenameCopyWithImpl<$Res>
    implements $LedgerUpdateKeyInputRenameCopyWith<$Res> {
  _$LedgerUpdateKeyInputRenameCopyWithImpl(this._self, this._then);

  final LedgerUpdateKeyInputRename _self;
  final $Res Function(LedgerUpdateKeyInputRename) _then;

/// Create a copy of LedgerUpdateKeyInputRename
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? publicKey = null,Object? name = null,}) {
  return _then(_self.copyWith(
publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as PublicKey,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of LedgerUpdateKeyInputRename
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get publicKey {
  
  return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
    return _then(_self.copyWith(publicKey: value));
  });
}
}


/// Adds pattern-matching-related methods to [LedgerUpdateKeyInputRename].
extension LedgerUpdateKeyInputRenamePatterns on LedgerUpdateKeyInputRename {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LedgerUpdateKeyInputRename value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LedgerUpdateKeyInputRename() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LedgerUpdateKeyInputRename value)  $default,){
final _that = this;
switch (_that) {
case _LedgerUpdateKeyInputRename():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LedgerUpdateKeyInputRename value)?  $default,){
final _that = this;
switch (_that) {
case _LedgerUpdateKeyInputRename() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PublicKey publicKey,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LedgerUpdateKeyInputRename() when $default != null:
return $default(_that.publicKey,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PublicKey publicKey,  String name)  $default,) {final _that = this;
switch (_that) {
case _LedgerUpdateKeyInputRename():
return $default(_that.publicKey,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PublicKey publicKey,  String name)?  $default,) {final _that = this;
switch (_that) {
case _LedgerUpdateKeyInputRename() when $default != null:
return $default(_that.publicKey,_that.name);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _LedgerUpdateKeyInputRename implements LedgerUpdateKeyInputRename {
  const _LedgerUpdateKeyInputRename({required this.publicKey, required this.name});
  factory _LedgerUpdateKeyInputRename.fromJson(Map<String, dynamic> json) => _$LedgerUpdateKeyInputRenameFromJson(json);

@override final  PublicKey publicKey;
@override final  String name;

/// Create a copy of LedgerUpdateKeyInputRename
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LedgerUpdateKeyInputRenameCopyWith<_LedgerUpdateKeyInputRename> get copyWith => __$LedgerUpdateKeyInputRenameCopyWithImpl<_LedgerUpdateKeyInputRename>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LedgerUpdateKeyInputRenameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LedgerUpdateKeyInputRename&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,publicKey,name);

@override
String toString() {
  return 'LedgerUpdateKeyInputRename(publicKey: $publicKey, name: $name)';
}


}

/// @nodoc
abstract mixin class _$LedgerUpdateKeyInputRenameCopyWith<$Res> implements $LedgerUpdateKeyInputRenameCopyWith<$Res> {
  factory _$LedgerUpdateKeyInputRenameCopyWith(_LedgerUpdateKeyInputRename value, $Res Function(_LedgerUpdateKeyInputRename) _then) = __$LedgerUpdateKeyInputRenameCopyWithImpl;
@override @useResult
$Res call({
 PublicKey publicKey, String name
});


@override $PublicKeyCopyWith<$Res> get publicKey;

}
/// @nodoc
class __$LedgerUpdateKeyInputRenameCopyWithImpl<$Res>
    implements _$LedgerUpdateKeyInputRenameCopyWith<$Res> {
  __$LedgerUpdateKeyInputRenameCopyWithImpl(this._self, this._then);

  final _LedgerUpdateKeyInputRename _self;
  final $Res Function(_LedgerUpdateKeyInputRename) _then;

/// Create a copy of LedgerUpdateKeyInputRename
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? publicKey = null,Object? name = null,}) {
  return _then(_LedgerUpdateKeyInputRename(
publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as PublicKey,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of LedgerUpdateKeyInputRename
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
