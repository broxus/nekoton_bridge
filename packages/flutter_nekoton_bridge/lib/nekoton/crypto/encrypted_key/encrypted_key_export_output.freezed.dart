// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_export_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EncryptedKeyExportSeedOutput {

 String get phrase;@mnemonicJsonConverter MnemonicType get mnemonicType;
/// Create a copy of EncryptedKeyExportSeedOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptedKeyExportSeedOutputCopyWith<EncryptedKeyExportSeedOutput> get copyWith => _$EncryptedKeyExportSeedOutputCopyWithImpl<EncryptedKeyExportSeedOutput>(this as EncryptedKeyExportSeedOutput, _$identity);

  /// Serializes this EncryptedKeyExportSeedOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptedKeyExportSeedOutput&&(identical(other.phrase, phrase) || other.phrase == phrase)&&(identical(other.mnemonicType, mnemonicType) || other.mnemonicType == mnemonicType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phrase,mnemonicType);

@override
String toString() {
  return 'EncryptedKeyExportSeedOutput(phrase: $phrase, mnemonicType: $mnemonicType)';
}


}

/// @nodoc
abstract mixin class $EncryptedKeyExportSeedOutputCopyWith<$Res>  {
  factory $EncryptedKeyExportSeedOutputCopyWith(EncryptedKeyExportSeedOutput value, $Res Function(EncryptedKeyExportSeedOutput) _then) = _$EncryptedKeyExportSeedOutputCopyWithImpl;
@useResult
$Res call({
 String phrase,@mnemonicJsonConverter MnemonicType mnemonicType
});


$MnemonicTypeCopyWith<$Res> get mnemonicType;

}
/// @nodoc
class _$EncryptedKeyExportSeedOutputCopyWithImpl<$Res>
    implements $EncryptedKeyExportSeedOutputCopyWith<$Res> {
  _$EncryptedKeyExportSeedOutputCopyWithImpl(this._self, this._then);

  final EncryptedKeyExportSeedOutput _self;
  final $Res Function(EncryptedKeyExportSeedOutput) _then;

/// Create a copy of EncryptedKeyExportSeedOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phrase = null,Object? mnemonicType = null,}) {
  return _then(_self.copyWith(
phrase: null == phrase ? _self.phrase : phrase // ignore: cast_nullable_to_non_nullable
as String,mnemonicType: null == mnemonicType ? _self.mnemonicType : mnemonicType // ignore: cast_nullable_to_non_nullable
as MnemonicType,
  ));
}
/// Create a copy of EncryptedKeyExportSeedOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MnemonicTypeCopyWith<$Res> get mnemonicType {
  
  return $MnemonicTypeCopyWith<$Res>(_self.mnemonicType, (value) {
    return _then(_self.copyWith(mnemonicType: value));
  });
}
}


/// Adds pattern-matching-related methods to [EncryptedKeyExportSeedOutput].
extension EncryptedKeyExportSeedOutputPatterns on EncryptedKeyExportSeedOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EncryptedKeyExportSeedOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EncryptedKeyExportSeedOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EncryptedKeyExportSeedOutput value)  $default,){
final _that = this;
switch (_that) {
case _EncryptedKeyExportSeedOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EncryptedKeyExportSeedOutput value)?  $default,){
final _that = this;
switch (_that) {
case _EncryptedKeyExportSeedOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phrase, @mnemonicJsonConverter  MnemonicType mnemonicType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EncryptedKeyExportSeedOutput() when $default != null:
return $default(_that.phrase,_that.mnemonicType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phrase, @mnemonicJsonConverter  MnemonicType mnemonicType)  $default,) {final _that = this;
switch (_that) {
case _EncryptedKeyExportSeedOutput():
return $default(_that.phrase,_that.mnemonicType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phrase, @mnemonicJsonConverter  MnemonicType mnemonicType)?  $default,) {final _that = this;
switch (_that) {
case _EncryptedKeyExportSeedOutput() when $default != null:
return $default(_that.phrase,_that.mnemonicType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EncryptedKeyExportSeedOutput implements EncryptedKeyExportSeedOutput {
   _EncryptedKeyExportSeedOutput({required this.phrase, @mnemonicJsonConverter required this.mnemonicType});
  factory _EncryptedKeyExportSeedOutput.fromJson(Map<String, dynamic> json) => _$EncryptedKeyExportSeedOutputFromJson(json);

@override final  String phrase;
@override@mnemonicJsonConverter final  MnemonicType mnemonicType;

/// Create a copy of EncryptedKeyExportSeedOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptedKeyExportSeedOutputCopyWith<_EncryptedKeyExportSeedOutput> get copyWith => __$EncryptedKeyExportSeedOutputCopyWithImpl<_EncryptedKeyExportSeedOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EncryptedKeyExportSeedOutputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptedKeyExportSeedOutput&&(identical(other.phrase, phrase) || other.phrase == phrase)&&(identical(other.mnemonicType, mnemonicType) || other.mnemonicType == mnemonicType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phrase,mnemonicType);

@override
String toString() {
  return 'EncryptedKeyExportSeedOutput(phrase: $phrase, mnemonicType: $mnemonicType)';
}


}

/// @nodoc
abstract mixin class _$EncryptedKeyExportSeedOutputCopyWith<$Res> implements $EncryptedKeyExportSeedOutputCopyWith<$Res> {
  factory _$EncryptedKeyExportSeedOutputCopyWith(_EncryptedKeyExportSeedOutput value, $Res Function(_EncryptedKeyExportSeedOutput) _then) = __$EncryptedKeyExportSeedOutputCopyWithImpl;
@override @useResult
$Res call({
 String phrase,@mnemonicJsonConverter MnemonicType mnemonicType
});


@override $MnemonicTypeCopyWith<$Res> get mnemonicType;

}
/// @nodoc
class __$EncryptedKeyExportSeedOutputCopyWithImpl<$Res>
    implements _$EncryptedKeyExportSeedOutputCopyWith<$Res> {
  __$EncryptedKeyExportSeedOutputCopyWithImpl(this._self, this._then);

  final _EncryptedKeyExportSeedOutput _self;
  final $Res Function(_EncryptedKeyExportSeedOutput) _then;

/// Create a copy of EncryptedKeyExportSeedOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phrase = null,Object? mnemonicType = null,}) {
  return _then(_EncryptedKeyExportSeedOutput(
phrase: null == phrase ? _self.phrase : phrase // ignore: cast_nullable_to_non_nullable
as String,mnemonicType: null == mnemonicType ? _self.mnemonicType : mnemonicType // ignore: cast_nullable_to_non_nullable
as MnemonicType,
  ));
}

/// Create a copy of EncryptedKeyExportSeedOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MnemonicTypeCopyWith<$Res> get mnemonicType {
  
  return $MnemonicTypeCopyWith<$Res>(_self.mnemonicType, (value) {
    return _then(_self.copyWith(mnemonicType: value));
  });
}
}

// dart format on
