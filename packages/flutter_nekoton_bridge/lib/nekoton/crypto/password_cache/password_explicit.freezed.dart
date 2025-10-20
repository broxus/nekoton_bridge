// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_explicit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
PasswordExplicit _$PasswordExplicitFromJson(
  Map<String, dynamic> json
) {
    return _PasswordExplicitExplicit.fromJson(
      json
    );
}

/// @nodoc
mixin _$PasswordExplicit {

 String get password; PasswordCacheBehavior get cacheBehavior;
/// Create a copy of PasswordExplicit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordExplicitCopyWith<PasswordExplicit> get copyWith => _$PasswordExplicitCopyWithImpl<PasswordExplicit>(this as PasswordExplicit, _$identity);

  /// Serializes this PasswordExplicit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordExplicit&&(identical(other.password, password) || other.password == password)&&(identical(other.cacheBehavior, cacheBehavior) || other.cacheBehavior == cacheBehavior));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,password,cacheBehavior);

@override
String toString() {
  return 'PasswordExplicit(password: $password, cacheBehavior: $cacheBehavior)';
}


}

/// @nodoc
abstract mixin class $PasswordExplicitCopyWith<$Res>  {
  factory $PasswordExplicitCopyWith(PasswordExplicit value, $Res Function(PasswordExplicit) _then) = _$PasswordExplicitCopyWithImpl;
@useResult
$Res call({
 String password, PasswordCacheBehavior cacheBehavior
});


$PasswordCacheBehaviorCopyWith<$Res> get cacheBehavior;

}
/// @nodoc
class _$PasswordExplicitCopyWithImpl<$Res>
    implements $PasswordExplicitCopyWith<$Res> {
  _$PasswordExplicitCopyWithImpl(this._self, this._then);

  final PasswordExplicit _self;
  final $Res Function(PasswordExplicit) _then;

/// Create a copy of PasswordExplicit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? password = null,Object? cacheBehavior = null,}) {
  return _then(_self.copyWith(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,cacheBehavior: null == cacheBehavior ? _self.cacheBehavior : cacheBehavior // ignore: cast_nullable_to_non_nullable
as PasswordCacheBehavior,
  ));
}
/// Create a copy of PasswordExplicit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordCacheBehaviorCopyWith<$Res> get cacheBehavior {
  
  return $PasswordCacheBehaviorCopyWith<$Res>(_self.cacheBehavior, (value) {
    return _then(_self.copyWith(cacheBehavior: value));
  });
}
}


/// Adds pattern-matching-related methods to [PasswordExplicit].
extension PasswordExplicitPatterns on PasswordExplicit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PasswordExplicitExplicit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PasswordExplicitExplicit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PasswordExplicitExplicit value)  $default,){
final _that = this;
switch (_that) {
case _PasswordExplicitExplicit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PasswordExplicitExplicit value)?  $default,){
final _that = this;
switch (_that) {
case _PasswordExplicitExplicit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String password,  PasswordCacheBehavior cacheBehavior)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PasswordExplicitExplicit() when $default != null:
return $default(_that.password,_that.cacheBehavior);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String password,  PasswordCacheBehavior cacheBehavior)  $default,) {final _that = this;
switch (_that) {
case _PasswordExplicitExplicit():
return $default(_that.password,_that.cacheBehavior);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String password,  PasswordCacheBehavior cacheBehavior)?  $default,) {final _that = this;
switch (_that) {
case _PasswordExplicitExplicit() when $default != null:
return $default(_that.password,_that.cacheBehavior);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PasswordExplicitExplicit implements PasswordExplicit {
  const _PasswordExplicitExplicit({required this.password, required this.cacheBehavior});
  factory _PasswordExplicitExplicit.fromJson(Map<String, dynamic> json) => _$PasswordExplicitExplicitFromJson(json);

@override final  String password;
@override final  PasswordCacheBehavior cacheBehavior;

/// Create a copy of PasswordExplicit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordExplicitExplicitCopyWith<_PasswordExplicitExplicit> get copyWith => __$PasswordExplicitExplicitCopyWithImpl<_PasswordExplicitExplicit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PasswordExplicitExplicitToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordExplicitExplicit&&(identical(other.password, password) || other.password == password)&&(identical(other.cacheBehavior, cacheBehavior) || other.cacheBehavior == cacheBehavior));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,password,cacheBehavior);

@override
String toString() {
  return 'PasswordExplicit(password: $password, cacheBehavior: $cacheBehavior)';
}


}

/// @nodoc
abstract mixin class _$PasswordExplicitExplicitCopyWith<$Res> implements $PasswordExplicitCopyWith<$Res> {
  factory _$PasswordExplicitExplicitCopyWith(_PasswordExplicitExplicit value, $Res Function(_PasswordExplicitExplicit) _then) = __$PasswordExplicitExplicitCopyWithImpl;
@override @useResult
$Res call({
 String password, PasswordCacheBehavior cacheBehavior
});


@override $PasswordCacheBehaviorCopyWith<$Res> get cacheBehavior;

}
/// @nodoc
class __$PasswordExplicitExplicitCopyWithImpl<$Res>
    implements _$PasswordExplicitExplicitCopyWith<$Res> {
  __$PasswordExplicitExplicitCopyWithImpl(this._self, this._then);

  final _PasswordExplicitExplicit _self;
  final $Res Function(_PasswordExplicitExplicit) _then;

/// Create a copy of PasswordExplicit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? password = null,Object? cacheBehavior = null,}) {
  return _then(_PasswordExplicitExplicit(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,cacheBehavior: null == cacheBehavior ? _self.cacheBehavior : cacheBehavior // ignore: cast_nullable_to_non_nullable
as PasswordCacheBehavior,
  ));
}

/// Create a copy of PasswordExplicit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordCacheBehaviorCopyWith<$Res> get cacheBehavior {
  
  return $PasswordCacheBehaviorCopyWith<$Res>(_self.cacheBehavior, (value) {
    return _then(_self.copyWith(cacheBehavior: value));
  });
}
}

// dart format on
