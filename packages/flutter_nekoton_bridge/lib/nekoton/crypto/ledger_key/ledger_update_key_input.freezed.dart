// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_update_key_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
LedgerUpdateKeyInput _$LedgerUpdateKeyInputFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'default':
          return _LedgerUpdateKeyInputDefault.fromJson(
            json
          );
                case 'rename':
          return _LedgerUpdateKeyInputRename.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'LedgerUpdateKeyInput',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$LedgerUpdateKeyInput {



  /// Serializes this LedgerUpdateKeyInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LedgerUpdateKeyInput);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LedgerUpdateKeyInput()';
}


}

/// @nodoc
class $LedgerUpdateKeyInputCopyWith<$Res>  {
$LedgerUpdateKeyInputCopyWith(LedgerUpdateKeyInput _, $Res Function(LedgerUpdateKeyInput) __);
}


/// Adds pattern-matching-related methods to [LedgerUpdateKeyInput].
extension LedgerUpdateKeyInputPatterns on LedgerUpdateKeyInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LedgerUpdateKeyInputDefault value)?  $default,{TResult Function( _LedgerUpdateKeyInputRename value)?  rename,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LedgerUpdateKeyInputDefault() when $default != null:
return $default(_that);case _LedgerUpdateKeyInputRename() when rename != null:
return rename(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LedgerUpdateKeyInputDefault value)  $default,{required TResult Function( _LedgerUpdateKeyInputRename value)  rename,}){
final _that = this;
switch (_that) {
case _LedgerUpdateKeyInputDefault():
return $default(_that);case _LedgerUpdateKeyInputRename():
return rename(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LedgerUpdateKeyInputDefault value)?  $default,{TResult? Function( _LedgerUpdateKeyInputRename value)?  rename,}){
final _that = this;
switch (_that) {
case _LedgerUpdateKeyInputDefault() when $default != null:
return $default(_that);case _LedgerUpdateKeyInputRename() when rename != null:
return rename(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function()?  $default,{TResult Function( LedgerUpdateKeyInputRename data)?  rename,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LedgerUpdateKeyInputDefault() when $default != null:
return $default();case _LedgerUpdateKeyInputRename() when rename != null:
return rename(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function()  $default,{required TResult Function( LedgerUpdateKeyInputRename data)  rename,}) {final _that = this;
switch (_that) {
case _LedgerUpdateKeyInputDefault():
return $default();case _LedgerUpdateKeyInputRename():
return rename(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function()?  $default,{TResult? Function( LedgerUpdateKeyInputRename data)?  rename,}) {final _that = this;
switch (_that) {
case _LedgerUpdateKeyInputDefault() when $default != null:
return $default();case _LedgerUpdateKeyInputRename() when rename != null:
return rename(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LedgerUpdateKeyInputDefault implements LedgerUpdateKeyInput {
  const _LedgerUpdateKeyInputDefault({final  String? $type}): $type = $type ?? 'default';
  factory _LedgerUpdateKeyInputDefault.fromJson(Map<String, dynamic> json) => _$LedgerUpdateKeyInputDefaultFromJson(json);



@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$LedgerUpdateKeyInputDefaultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LedgerUpdateKeyInputDefault);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LedgerUpdateKeyInput()';
}


}




/// @nodoc
@JsonSerializable()

class _LedgerUpdateKeyInputRename implements LedgerUpdateKeyInput {
  const _LedgerUpdateKeyInputRename(this.data, {final  String? $type}): $type = $type ?? 'rename';
  factory _LedgerUpdateKeyInputRename.fromJson(Map<String, dynamic> json) => _$LedgerUpdateKeyInputRenameFromJson(json);

 final  LedgerUpdateKeyInputRename data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of LedgerUpdateKeyInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LedgerUpdateKeyInputRenameCopyWith<_LedgerUpdateKeyInputRename> get copyWith => __$LedgerUpdateKeyInputRenameCopyWithImpl<_LedgerUpdateKeyInputRename>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LedgerUpdateKeyInputRenameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LedgerUpdateKeyInputRename&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'LedgerUpdateKeyInput.rename(data: $data)';
}


}

/// @nodoc
abstract mixin class _$LedgerUpdateKeyInputRenameCopyWith<$Res> implements $LedgerUpdateKeyInputCopyWith<$Res> {
  factory _$LedgerUpdateKeyInputRenameCopyWith(_LedgerUpdateKeyInputRename value, $Res Function(_LedgerUpdateKeyInputRename) _then) = __$LedgerUpdateKeyInputRenameCopyWithImpl;
@useResult
$Res call({
 LedgerUpdateKeyInputRename data
});


$LedgerUpdateKeyInputRenameCopyWith<$Res> get data;

}
/// @nodoc
class __$LedgerUpdateKeyInputRenameCopyWithImpl<$Res>
    implements _$LedgerUpdateKeyInputRenameCopyWith<$Res> {
  __$LedgerUpdateKeyInputRenameCopyWithImpl(this._self, this._then);

  final _LedgerUpdateKeyInputRename _self;
  final $Res Function(_LedgerUpdateKeyInputRename) _then;

/// Create a copy of LedgerUpdateKeyInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_LedgerUpdateKeyInputRename(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LedgerUpdateKeyInputRename,
  ));
}

/// Create a copy of LedgerUpdateKeyInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerUpdateKeyInputRenameCopyWith<$Res> get data {
  
  return $LedgerUpdateKeyInputRenameCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
