// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_update_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
EncryptedKeyUpdateParams _$EncryptedKeyUpdateParamsFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'rename':
          return _EncryptedKeyUpdateParamsRename.fromJson(
            json
          );
                case 'change_password':
          return _EncryptedKeyUpdateParamsChangePassword.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'EncryptedKeyUpdateParams',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$EncryptedKeyUpdateParams {

 Object get data;

  /// Serializes this EncryptedKeyUpdateParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptedKeyUpdateParams&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'EncryptedKeyUpdateParams(data: $data)';
}


}

/// @nodoc
class $EncryptedKeyUpdateParamsCopyWith<$Res>  {
$EncryptedKeyUpdateParamsCopyWith(EncryptedKeyUpdateParams _, $Res Function(EncryptedKeyUpdateParams) __);
}


/// Adds pattern-matching-related methods to [EncryptedKeyUpdateParams].
extension EncryptedKeyUpdateParamsPatterns on EncryptedKeyUpdateParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EncryptedKeyUpdateParamsRename value)?  rename,TResult Function( _EncryptedKeyUpdateParamsChangePassword value)?  changePassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EncryptedKeyUpdateParamsRename() when rename != null:
return rename(_that);case _EncryptedKeyUpdateParamsChangePassword() when changePassword != null:
return changePassword(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EncryptedKeyUpdateParamsRename value)  rename,required TResult Function( _EncryptedKeyUpdateParamsChangePassword value)  changePassword,}){
final _that = this;
switch (_that) {
case _EncryptedKeyUpdateParamsRename():
return rename(_that);case _EncryptedKeyUpdateParamsChangePassword():
return changePassword(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EncryptedKeyUpdateParamsRename value)?  rename,TResult? Function( _EncryptedKeyUpdateParamsChangePassword value)?  changePassword,}){
final _that = this;
switch (_that) {
case _EncryptedKeyUpdateParamsRename() when rename != null:
return rename(_that);case _EncryptedKeyUpdateParamsChangePassword() when changePassword != null:
return changePassword(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( EncryptedKeyUpdateParamsRename data)?  rename,TResult Function( EncryptedKeyUpdateParamsChangePassword data)?  changePassword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EncryptedKeyUpdateParamsRename() when rename != null:
return rename(_that.data);case _EncryptedKeyUpdateParamsChangePassword() when changePassword != null:
return changePassword(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( EncryptedKeyUpdateParamsRename data)  rename,required TResult Function( EncryptedKeyUpdateParamsChangePassword data)  changePassword,}) {final _that = this;
switch (_that) {
case _EncryptedKeyUpdateParamsRename():
return rename(_that.data);case _EncryptedKeyUpdateParamsChangePassword():
return changePassword(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( EncryptedKeyUpdateParamsRename data)?  rename,TResult? Function( EncryptedKeyUpdateParamsChangePassword data)?  changePassword,}) {final _that = this;
switch (_that) {
case _EncryptedKeyUpdateParamsRename() when rename != null:
return rename(_that.data);case _EncryptedKeyUpdateParamsChangePassword() when changePassword != null:
return changePassword(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EncryptedKeyUpdateParamsRename implements EncryptedKeyUpdateParams {
  const _EncryptedKeyUpdateParamsRename(this.data, {final  String? $type}): $type = $type ?? 'rename';
  factory _EncryptedKeyUpdateParamsRename.fromJson(Map<String, dynamic> json) => _$EncryptedKeyUpdateParamsRenameFromJson(json);

@override final  EncryptedKeyUpdateParamsRename data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of EncryptedKeyUpdateParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptedKeyUpdateParamsRenameCopyWith<_EncryptedKeyUpdateParamsRename> get copyWith => __$EncryptedKeyUpdateParamsRenameCopyWithImpl<_EncryptedKeyUpdateParamsRename>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EncryptedKeyUpdateParamsRenameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptedKeyUpdateParamsRename&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'EncryptedKeyUpdateParams.rename(data: $data)';
}


}

/// @nodoc
abstract mixin class _$EncryptedKeyUpdateParamsRenameCopyWith<$Res> implements $EncryptedKeyUpdateParamsCopyWith<$Res> {
  factory _$EncryptedKeyUpdateParamsRenameCopyWith(_EncryptedKeyUpdateParamsRename value, $Res Function(_EncryptedKeyUpdateParamsRename) _then) = __$EncryptedKeyUpdateParamsRenameCopyWithImpl;
@useResult
$Res call({
 EncryptedKeyUpdateParamsRename data
});


$EncryptedKeyUpdateParamsRenameCopyWith<$Res> get data;

}
/// @nodoc
class __$EncryptedKeyUpdateParamsRenameCopyWithImpl<$Res>
    implements _$EncryptedKeyUpdateParamsRenameCopyWith<$Res> {
  __$EncryptedKeyUpdateParamsRenameCopyWithImpl(this._self, this._then);

  final _EncryptedKeyUpdateParamsRename _self;
  final $Res Function(_EncryptedKeyUpdateParamsRename) _then;

/// Create a copy of EncryptedKeyUpdateParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_EncryptedKeyUpdateParamsRename(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as EncryptedKeyUpdateParamsRename,
  ));
}

/// Create a copy of EncryptedKeyUpdateParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptedKeyUpdateParamsRenameCopyWith<$Res> get data {
  
  return $EncryptedKeyUpdateParamsRenameCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class _EncryptedKeyUpdateParamsChangePassword implements EncryptedKeyUpdateParams {
  const _EncryptedKeyUpdateParamsChangePassword(this.data, {final  String? $type}): $type = $type ?? 'change_password';
  factory _EncryptedKeyUpdateParamsChangePassword.fromJson(Map<String, dynamic> json) => _$EncryptedKeyUpdateParamsChangePasswordFromJson(json);

@override final  EncryptedKeyUpdateParamsChangePassword data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of EncryptedKeyUpdateParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptedKeyUpdateParamsChangePasswordCopyWith<_EncryptedKeyUpdateParamsChangePassword> get copyWith => __$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl<_EncryptedKeyUpdateParamsChangePassword>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EncryptedKeyUpdateParamsChangePasswordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptedKeyUpdateParamsChangePassword&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'EncryptedKeyUpdateParams.changePassword(data: $data)';
}


}

/// @nodoc
abstract mixin class _$EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> implements $EncryptedKeyUpdateParamsCopyWith<$Res> {
  factory _$EncryptedKeyUpdateParamsChangePasswordCopyWith(_EncryptedKeyUpdateParamsChangePassword value, $Res Function(_EncryptedKeyUpdateParamsChangePassword) _then) = __$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl;
@useResult
$Res call({
 EncryptedKeyUpdateParamsChangePassword data
});


$EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> get data;

}
/// @nodoc
class __$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl<$Res>
    implements _$EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  __$EncryptedKeyUpdateParamsChangePasswordCopyWithImpl(this._self, this._then);

  final _EncryptedKeyUpdateParamsChangePassword _self;
  final $Res Function(_EncryptedKeyUpdateParamsChangePassword) _then;

/// Create a copy of EncryptedKeyUpdateParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_EncryptedKeyUpdateParamsChangePassword(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as EncryptedKeyUpdateParamsChangePassword,
  ));
}

/// Create a copy of EncryptedKeyUpdateParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> get data {
  
  return $EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
