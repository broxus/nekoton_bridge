// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jetton_meta_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JettonMetaData {

 String? get name; String? get uri; String? get symbol; String? get description; String? get image; int? get decimals;
/// Create a copy of JettonMetaData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JettonMetaDataCopyWith<JettonMetaData> get copyWith => _$JettonMetaDataCopyWithImpl<JettonMetaData>(this as JettonMetaData, _$identity);

  /// Serializes this JettonMetaData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JettonMetaData&&(identical(other.name, name) || other.name == name)&&(identical(other.uri, uri) || other.uri == uri)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image)&&(identical(other.decimals, decimals) || other.decimals == decimals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,uri,symbol,description,image,decimals);

@override
String toString() {
  return 'JettonMetaData(name: $name, uri: $uri, symbol: $symbol, description: $description, image: $image, decimals: $decimals)';
}


}

/// @nodoc
abstract mixin class $JettonMetaDataCopyWith<$Res>  {
  factory $JettonMetaDataCopyWith(JettonMetaData value, $Res Function(JettonMetaData) _then) = _$JettonMetaDataCopyWithImpl;
@useResult
$Res call({
 String? name, String? uri, String? symbol, String? description, String? image, int? decimals
});




}
/// @nodoc
class _$JettonMetaDataCopyWithImpl<$Res>
    implements $JettonMetaDataCopyWith<$Res> {
  _$JettonMetaDataCopyWithImpl(this._self, this._then);

  final JettonMetaData _self;
  final $Res Function(JettonMetaData) _then;

/// Create a copy of JettonMetaData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? uri = freezed,Object? symbol = freezed,Object? description = freezed,Object? image = freezed,Object? decimals = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,uri: freezed == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,decimals: freezed == decimals ? _self.decimals : decimals // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [JettonMetaData].
extension JettonMetaDataPatterns on JettonMetaData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JettonMetaData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JettonMetaData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JettonMetaData value)  $default,){
final _that = this;
switch (_that) {
case _JettonMetaData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JettonMetaData value)?  $default,){
final _that = this;
switch (_that) {
case _JettonMetaData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? uri,  String? symbol,  String? description,  String? image,  int? decimals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JettonMetaData() when $default != null:
return $default(_that.name,_that.uri,_that.symbol,_that.description,_that.image,_that.decimals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? uri,  String? symbol,  String? description,  String? image,  int? decimals)  $default,) {final _that = this;
switch (_that) {
case _JettonMetaData():
return $default(_that.name,_that.uri,_that.symbol,_that.description,_that.image,_that.decimals);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? uri,  String? symbol,  String? description,  String? image,  int? decimals)?  $default,) {final _that = this;
switch (_that) {
case _JettonMetaData() when $default != null:
return $default(_that.name,_that.uri,_that.symbol,_that.description,_that.image,_that.decimals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JettonMetaData implements JettonMetaData {
  const _JettonMetaData({this.name, this.uri, this.symbol, this.description, this.image, this.decimals});
  factory _JettonMetaData.fromJson(Map<String, dynamic> json) => _$JettonMetaDataFromJson(json);

@override final  String? name;
@override final  String? uri;
@override final  String? symbol;
@override final  String? description;
@override final  String? image;
@override final  int? decimals;

/// Create a copy of JettonMetaData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JettonMetaDataCopyWith<_JettonMetaData> get copyWith => __$JettonMetaDataCopyWithImpl<_JettonMetaData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JettonMetaDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JettonMetaData&&(identical(other.name, name) || other.name == name)&&(identical(other.uri, uri) || other.uri == uri)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image)&&(identical(other.decimals, decimals) || other.decimals == decimals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,uri,symbol,description,image,decimals);

@override
String toString() {
  return 'JettonMetaData(name: $name, uri: $uri, symbol: $symbol, description: $description, image: $image, decimals: $decimals)';
}


}

/// @nodoc
abstract mixin class _$JettonMetaDataCopyWith<$Res> implements $JettonMetaDataCopyWith<$Res> {
  factory _$JettonMetaDataCopyWith(_JettonMetaData value, $Res Function(_JettonMetaData) _then) = __$JettonMetaDataCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? uri, String? symbol, String? description, String? image, int? decimals
});




}
/// @nodoc
class __$JettonMetaDataCopyWithImpl<$Res>
    implements _$JettonMetaDataCopyWith<$Res> {
  __$JettonMetaDataCopyWithImpl(this._self, this._then);

  final _JettonMetaData _self;
  final $Res Function(_JettonMetaData) _then;

/// Create a copy of JettonMetaData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? uri = freezed,Object? symbol = freezed,Object? description = freezed,Object? image = freezed,Object? decimals = freezed,}) {
  return _then(_JettonMetaData(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,uri: freezed == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,decimals: freezed == decimals ? _self.decimals : decimals // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
