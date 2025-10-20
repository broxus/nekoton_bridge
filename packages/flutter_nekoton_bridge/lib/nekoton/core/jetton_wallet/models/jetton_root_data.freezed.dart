// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jetton_root_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JettonRootData {

 bool get mintable; Address get adminAddress; JettonMetaData get content;
/// Create a copy of JettonRootData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JettonRootDataCopyWith<JettonRootData> get copyWith => _$JettonRootDataCopyWithImpl<JettonRootData>(this as JettonRootData, _$identity);

  /// Serializes this JettonRootData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JettonRootData&&(identical(other.mintable, mintable) || other.mintable == mintable)&&(identical(other.adminAddress, adminAddress) || other.adminAddress == adminAddress)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mintable,adminAddress,content);

@override
String toString() {
  return 'JettonRootData(mintable: $mintable, adminAddress: $adminAddress, content: $content)';
}


}

/// @nodoc
abstract mixin class $JettonRootDataCopyWith<$Res>  {
  factory $JettonRootDataCopyWith(JettonRootData value, $Res Function(JettonRootData) _then) = _$JettonRootDataCopyWithImpl;
@useResult
$Res call({
 bool mintable, Address adminAddress, JettonMetaData content
});


$AddressCopyWith<$Res> get adminAddress;$JettonMetaDataCopyWith<$Res> get content;

}
/// @nodoc
class _$JettonRootDataCopyWithImpl<$Res>
    implements $JettonRootDataCopyWith<$Res> {
  _$JettonRootDataCopyWithImpl(this._self, this._then);

  final JettonRootData _self;
  final $Res Function(JettonRootData) _then;

/// Create a copy of JettonRootData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mintable = null,Object? adminAddress = null,Object? content = null,}) {
  return _then(_self.copyWith(
mintable: null == mintable ? _self.mintable : mintable // ignore: cast_nullable_to_non_nullable
as bool,adminAddress: null == adminAddress ? _self.adminAddress : adminAddress // ignore: cast_nullable_to_non_nullable
as Address,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as JettonMetaData,
  ));
}
/// Create a copy of JettonRootData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get adminAddress {
  
  return $AddressCopyWith<$Res>(_self.adminAddress, (value) {
    return _then(_self.copyWith(adminAddress: value));
  });
}/// Create a copy of JettonRootData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JettonMetaDataCopyWith<$Res> get content {
  
  return $JettonMetaDataCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// Adds pattern-matching-related methods to [JettonRootData].
extension JettonRootDataPatterns on JettonRootData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JettonRootData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JettonRootData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JettonRootData value)  $default,){
final _that = this;
switch (_that) {
case _JettonRootData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JettonRootData value)?  $default,){
final _that = this;
switch (_that) {
case _JettonRootData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool mintable,  Address adminAddress,  JettonMetaData content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JettonRootData() when $default != null:
return $default(_that.mintable,_that.adminAddress,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool mintable,  Address adminAddress,  JettonMetaData content)  $default,) {final _that = this;
switch (_that) {
case _JettonRootData():
return $default(_that.mintable,_that.adminAddress,_that.content);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool mintable,  Address adminAddress,  JettonMetaData content)?  $default,) {final _that = this;
switch (_that) {
case _JettonRootData() when $default != null:
return $default(_that.mintable,_that.adminAddress,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JettonRootData implements JettonRootData {
  const _JettonRootData({required this.mintable, required this.adminAddress, required this.content});
  factory _JettonRootData.fromJson(Map<String, dynamic> json) => _$JettonRootDataFromJson(json);

@override final  bool mintable;
@override final  Address adminAddress;
@override final  JettonMetaData content;

/// Create a copy of JettonRootData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JettonRootDataCopyWith<_JettonRootData> get copyWith => __$JettonRootDataCopyWithImpl<_JettonRootData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JettonRootDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JettonRootData&&(identical(other.mintable, mintable) || other.mintable == mintable)&&(identical(other.adminAddress, adminAddress) || other.adminAddress == adminAddress)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mintable,adminAddress,content);

@override
String toString() {
  return 'JettonRootData(mintable: $mintable, adminAddress: $adminAddress, content: $content)';
}


}

/// @nodoc
abstract mixin class _$JettonRootDataCopyWith<$Res> implements $JettonRootDataCopyWith<$Res> {
  factory _$JettonRootDataCopyWith(_JettonRootData value, $Res Function(_JettonRootData) _then) = __$JettonRootDataCopyWithImpl;
@override @useResult
$Res call({
 bool mintable, Address adminAddress, JettonMetaData content
});


@override $AddressCopyWith<$Res> get adminAddress;@override $JettonMetaDataCopyWith<$Res> get content;

}
/// @nodoc
class __$JettonRootDataCopyWithImpl<$Res>
    implements _$JettonRootDataCopyWith<$Res> {
  __$JettonRootDataCopyWithImpl(this._self, this._then);

  final _JettonRootData _self;
  final $Res Function(_JettonRootData) _then;

/// Create a copy of JettonRootData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mintable = null,Object? adminAddress = null,Object? content = null,}) {
  return _then(_JettonRootData(
mintable: null == mintable ? _self.mintable : mintable // ignore: cast_nullable_to_non_nullable
as bool,adminAddress: null == adminAddress ? _self.adminAddress : adminAddress // ignore: cast_nullable_to_non_nullable
as Address,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as JettonMetaData,
  ));
}

/// Create a copy of JettonRootData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get adminAddress {
  
  return $AddressCopyWith<$Res>(_self.adminAddress, (value) {
    return _then(_self.copyWith(adminAddress: value));
  });
}/// Create a copy of JettonRootData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JettonMetaDataCopyWith<$Res> get content {
  
  return $JettonMetaDataCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}

// dart format on
