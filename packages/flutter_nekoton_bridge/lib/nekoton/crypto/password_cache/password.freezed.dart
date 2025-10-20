// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Password _$PasswordFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'explicit':
          return _Explicit.fromJson(
            json
          );
                case 'from_cache':
          return _FromCache.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'Password',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$Password {



  /// Serializes this Password to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Password);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Password()';
}


}

/// @nodoc
class $PasswordCopyWith<$Res>  {
$PasswordCopyWith(Password _, $Res Function(Password) __);
}


/// Adds pattern-matching-related methods to [Password].
extension PasswordPatterns on Password {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Explicit value)?  explicit,TResult Function( _FromCache value)?  fromCache,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Explicit() when explicit != null:
return explicit(_that);case _FromCache() when fromCache != null:
return fromCache(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Explicit value)  explicit,required TResult Function( _FromCache value)  fromCache,}){
final _that = this;
switch (_that) {
case _Explicit():
return explicit(_that);case _FromCache():
return fromCache(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Explicit value)?  explicit,TResult? Function( _FromCache value)?  fromCache,}){
final _that = this;
switch (_that) {
case _Explicit() when explicit != null:
return explicit(_that);case _FromCache() when fromCache != null:
return fromCache(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PasswordExplicit data)?  explicit,TResult Function()?  fromCache,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Explicit() when explicit != null:
return explicit(_that.data);case _FromCache() when fromCache != null:
return fromCache();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PasswordExplicit data)  explicit,required TResult Function()  fromCache,}) {final _that = this;
switch (_that) {
case _Explicit():
return explicit(_that.data);case _FromCache():
return fromCache();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PasswordExplicit data)?  explicit,TResult? Function()?  fromCache,}) {final _that = this;
switch (_that) {
case _Explicit() when explicit != null:
return explicit(_that.data);case _FromCache() when fromCache != null:
return fromCache();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Explicit implements Password {
  const _Explicit(this.data, {final  String? $type}): $type = $type ?? 'explicit';
  factory _Explicit.fromJson(Map<String, dynamic> json) => _$ExplicitFromJson(json);

 final  PasswordExplicit data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of Password
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExplicitCopyWith<_Explicit> get copyWith => __$ExplicitCopyWithImpl<_Explicit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExplicitToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Explicit&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'Password.explicit(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ExplicitCopyWith<$Res> implements $PasswordCopyWith<$Res> {
  factory _$ExplicitCopyWith(_Explicit value, $Res Function(_Explicit) _then) = __$ExplicitCopyWithImpl;
@useResult
$Res call({
 PasswordExplicit data
});


$PasswordExplicitCopyWith<$Res> get data;

}
/// @nodoc
class __$ExplicitCopyWithImpl<$Res>
    implements _$ExplicitCopyWith<$Res> {
  __$ExplicitCopyWithImpl(this._self, this._then);

  final _Explicit _self;
  final $Res Function(_Explicit) _then;

/// Create a copy of Password
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_Explicit(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PasswordExplicit,
  ));
}

/// Create a copy of Password
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordExplicitCopyWith<$Res> get data {
  
  return $PasswordExplicitCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class _FromCache implements Password {
  const _FromCache({final  String? $type}): $type = $type ?? 'from_cache';
  factory _FromCache.fromJson(Map<String, dynamic> json) => _$FromCacheFromJson(json);



@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$FromCacheToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FromCache);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Password.fromCache()';
}


}




// dart format on
