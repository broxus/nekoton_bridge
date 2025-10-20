// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blockchain_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlockchainConfig {

 int get capabilities; int get globalId; int get globalVersion;// base64-encoded ConfigParams
 String get config;
/// Create a copy of BlockchainConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlockchainConfigCopyWith<BlockchainConfig> get copyWith => _$BlockchainConfigCopyWithImpl<BlockchainConfig>(this as BlockchainConfig, _$identity);

  /// Serializes this BlockchainConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlockchainConfig&&(identical(other.capabilities, capabilities) || other.capabilities == capabilities)&&(identical(other.globalId, globalId) || other.globalId == globalId)&&(identical(other.globalVersion, globalVersion) || other.globalVersion == globalVersion)&&(identical(other.config, config) || other.config == config));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,capabilities,globalId,globalVersion,config);

@override
String toString() {
  return 'BlockchainConfig(capabilities: $capabilities, globalId: $globalId, globalVersion: $globalVersion, config: $config)';
}


}

/// @nodoc
abstract mixin class $BlockchainConfigCopyWith<$Res>  {
  factory $BlockchainConfigCopyWith(BlockchainConfig value, $Res Function(BlockchainConfig) _then) = _$BlockchainConfigCopyWithImpl;
@useResult
$Res call({
 int capabilities, int globalId, int globalVersion, String config
});




}
/// @nodoc
class _$BlockchainConfigCopyWithImpl<$Res>
    implements $BlockchainConfigCopyWith<$Res> {
  _$BlockchainConfigCopyWithImpl(this._self, this._then);

  final BlockchainConfig _self;
  final $Res Function(BlockchainConfig) _then;

/// Create a copy of BlockchainConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? capabilities = null,Object? globalId = null,Object? globalVersion = null,Object? config = null,}) {
  return _then(_self.copyWith(
capabilities: null == capabilities ? _self.capabilities : capabilities // ignore: cast_nullable_to_non_nullable
as int,globalId: null == globalId ? _self.globalId : globalId // ignore: cast_nullable_to_non_nullable
as int,globalVersion: null == globalVersion ? _self.globalVersion : globalVersion // ignore: cast_nullable_to_non_nullable
as int,config: null == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BlockchainConfig].
extension BlockchainConfigPatterns on BlockchainConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlockchainConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlockchainConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlockchainConfig value)  $default,){
final _that = this;
switch (_that) {
case _BlockchainConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlockchainConfig value)?  $default,){
final _that = this;
switch (_that) {
case _BlockchainConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int capabilities,  int globalId,  int globalVersion,  String config)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlockchainConfig() when $default != null:
return $default(_that.capabilities,_that.globalId,_that.globalVersion,_that.config);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int capabilities,  int globalId,  int globalVersion,  String config)  $default,) {final _that = this;
switch (_that) {
case _BlockchainConfig():
return $default(_that.capabilities,_that.globalId,_that.globalVersion,_that.config);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int capabilities,  int globalId,  int globalVersion,  String config)?  $default,) {final _that = this;
switch (_that) {
case _BlockchainConfig() when $default != null:
return $default(_that.capabilities,_that.globalId,_that.globalVersion,_that.config);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BlockchainConfig implements BlockchainConfig {
  const _BlockchainConfig({required this.capabilities, required this.globalId, required this.globalVersion, required this.config});
  factory _BlockchainConfig.fromJson(Map<String, dynamic> json) => _$BlockchainConfigFromJson(json);

@override final  int capabilities;
@override final  int globalId;
@override final  int globalVersion;
// base64-encoded ConfigParams
@override final  String config;

/// Create a copy of BlockchainConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlockchainConfigCopyWith<_BlockchainConfig> get copyWith => __$BlockchainConfigCopyWithImpl<_BlockchainConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlockchainConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlockchainConfig&&(identical(other.capabilities, capabilities) || other.capabilities == capabilities)&&(identical(other.globalId, globalId) || other.globalId == globalId)&&(identical(other.globalVersion, globalVersion) || other.globalVersion == globalVersion)&&(identical(other.config, config) || other.config == config));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,capabilities,globalId,globalVersion,config);

@override
String toString() {
  return 'BlockchainConfig(capabilities: $capabilities, globalId: $globalId, globalVersion: $globalVersion, config: $config)';
}


}

/// @nodoc
abstract mixin class _$BlockchainConfigCopyWith<$Res> implements $BlockchainConfigCopyWith<$Res> {
  factory _$BlockchainConfigCopyWith(_BlockchainConfig value, $Res Function(_BlockchainConfig) _then) = __$BlockchainConfigCopyWithImpl;
@override @useResult
$Res call({
 int capabilities, int globalId, int globalVersion, String config
});




}
/// @nodoc
class __$BlockchainConfigCopyWithImpl<$Res>
    implements _$BlockchainConfigCopyWith<$Res> {
  __$BlockchainConfigCopyWithImpl(this._self, this._then);

  final _BlockchainConfig _self;
  final $Res Function(_BlockchainConfig) _then;

/// Create a copy of BlockchainConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? capabilities = null,Object? globalId = null,Object? globalVersion = null,Object? config = null,}) {
  return _then(_BlockchainConfig(
capabilities: null == capabilities ? _self.capabilities : capabilities // ignore: cast_nullable_to_non_nullable
as int,globalId: null == globalId ? _self.globalId : globalId // ignore: cast_nullable_to_non_nullable
as int,globalVersion: null == globalVersion ? _self.globalVersion : globalVersion // ignore: cast_nullable_to_non_nullable
as int,config: null == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
