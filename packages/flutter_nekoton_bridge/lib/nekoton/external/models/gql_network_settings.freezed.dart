// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gql_network_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GqlNetworkSettings {

 List<String> get endpoints; int get latencyDetectionInterval; int get maxLatency; int get endpointSelectionRetryCount; bool get local;
/// Create a copy of GqlNetworkSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GqlNetworkSettingsCopyWith<GqlNetworkSettings> get copyWith => _$GqlNetworkSettingsCopyWithImpl<GqlNetworkSettings>(this as GqlNetworkSettings, _$identity);

  /// Serializes this GqlNetworkSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GqlNetworkSettings&&const DeepCollectionEquality().equals(other.endpoints, endpoints)&&(identical(other.latencyDetectionInterval, latencyDetectionInterval) || other.latencyDetectionInterval == latencyDetectionInterval)&&(identical(other.maxLatency, maxLatency) || other.maxLatency == maxLatency)&&(identical(other.endpointSelectionRetryCount, endpointSelectionRetryCount) || other.endpointSelectionRetryCount == endpointSelectionRetryCount)&&(identical(other.local, local) || other.local == local));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(endpoints),latencyDetectionInterval,maxLatency,endpointSelectionRetryCount,local);

@override
String toString() {
  return 'GqlNetworkSettings(endpoints: $endpoints, latencyDetectionInterval: $latencyDetectionInterval, maxLatency: $maxLatency, endpointSelectionRetryCount: $endpointSelectionRetryCount, local: $local)';
}


}

/// @nodoc
abstract mixin class $GqlNetworkSettingsCopyWith<$Res>  {
  factory $GqlNetworkSettingsCopyWith(GqlNetworkSettings value, $Res Function(GqlNetworkSettings) _then) = _$GqlNetworkSettingsCopyWithImpl;
@useResult
$Res call({
 List<String> endpoints, int latencyDetectionInterval, int maxLatency, int endpointSelectionRetryCount, bool local
});




}
/// @nodoc
class _$GqlNetworkSettingsCopyWithImpl<$Res>
    implements $GqlNetworkSettingsCopyWith<$Res> {
  _$GqlNetworkSettingsCopyWithImpl(this._self, this._then);

  final GqlNetworkSettings _self;
  final $Res Function(GqlNetworkSettings) _then;

/// Create a copy of GqlNetworkSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? endpoints = null,Object? latencyDetectionInterval = null,Object? maxLatency = null,Object? endpointSelectionRetryCount = null,Object? local = null,}) {
  return _then(_self.copyWith(
endpoints: null == endpoints ? _self.endpoints : endpoints // ignore: cast_nullable_to_non_nullable
as List<String>,latencyDetectionInterval: null == latencyDetectionInterval ? _self.latencyDetectionInterval : latencyDetectionInterval // ignore: cast_nullable_to_non_nullable
as int,maxLatency: null == maxLatency ? _self.maxLatency : maxLatency // ignore: cast_nullable_to_non_nullable
as int,endpointSelectionRetryCount: null == endpointSelectionRetryCount ? _self.endpointSelectionRetryCount : endpointSelectionRetryCount // ignore: cast_nullable_to_non_nullable
as int,local: null == local ? _self.local : local // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GqlNetworkSettings].
extension GqlNetworkSettingsPatterns on GqlNetworkSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GqlNetworkSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GqlNetworkSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GqlNetworkSettings value)  $default,){
final _that = this;
switch (_that) {
case _GqlNetworkSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GqlNetworkSettings value)?  $default,){
final _that = this;
switch (_that) {
case _GqlNetworkSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> endpoints,  int latencyDetectionInterval,  int maxLatency,  int endpointSelectionRetryCount,  bool local)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GqlNetworkSettings() when $default != null:
return $default(_that.endpoints,_that.latencyDetectionInterval,_that.maxLatency,_that.endpointSelectionRetryCount,_that.local);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> endpoints,  int latencyDetectionInterval,  int maxLatency,  int endpointSelectionRetryCount,  bool local)  $default,) {final _that = this;
switch (_that) {
case _GqlNetworkSettings():
return $default(_that.endpoints,_that.latencyDetectionInterval,_that.maxLatency,_that.endpointSelectionRetryCount,_that.local);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> endpoints,  int latencyDetectionInterval,  int maxLatency,  int endpointSelectionRetryCount,  bool local)?  $default,) {final _that = this;
switch (_that) {
case _GqlNetworkSettings() when $default != null:
return $default(_that.endpoints,_that.latencyDetectionInterval,_that.maxLatency,_that.endpointSelectionRetryCount,_that.local);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GqlNetworkSettings implements GqlNetworkSettings {
  const _GqlNetworkSettings({required final  List<String> endpoints, required this.latencyDetectionInterval, required this.maxLatency, required this.endpointSelectionRetryCount, required this.local}): _endpoints = endpoints;
  factory _GqlNetworkSettings.fromJson(Map<String, dynamic> json) => _$GqlNetworkSettingsFromJson(json);

 final  List<String> _endpoints;
@override List<String> get endpoints {
  if (_endpoints is EqualUnmodifiableListView) return _endpoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_endpoints);
}

@override final  int latencyDetectionInterval;
@override final  int maxLatency;
@override final  int endpointSelectionRetryCount;
@override final  bool local;

/// Create a copy of GqlNetworkSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GqlNetworkSettingsCopyWith<_GqlNetworkSettings> get copyWith => __$GqlNetworkSettingsCopyWithImpl<_GqlNetworkSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GqlNetworkSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GqlNetworkSettings&&const DeepCollectionEquality().equals(other._endpoints, _endpoints)&&(identical(other.latencyDetectionInterval, latencyDetectionInterval) || other.latencyDetectionInterval == latencyDetectionInterval)&&(identical(other.maxLatency, maxLatency) || other.maxLatency == maxLatency)&&(identical(other.endpointSelectionRetryCount, endpointSelectionRetryCount) || other.endpointSelectionRetryCount == endpointSelectionRetryCount)&&(identical(other.local, local) || other.local == local));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_endpoints),latencyDetectionInterval,maxLatency,endpointSelectionRetryCount,local);

@override
String toString() {
  return 'GqlNetworkSettings(endpoints: $endpoints, latencyDetectionInterval: $latencyDetectionInterval, maxLatency: $maxLatency, endpointSelectionRetryCount: $endpointSelectionRetryCount, local: $local)';
}


}

/// @nodoc
abstract mixin class _$GqlNetworkSettingsCopyWith<$Res> implements $GqlNetworkSettingsCopyWith<$Res> {
  factory _$GqlNetworkSettingsCopyWith(_GqlNetworkSettings value, $Res Function(_GqlNetworkSettings) _then) = __$GqlNetworkSettingsCopyWithImpl;
@override @useResult
$Res call({
 List<String> endpoints, int latencyDetectionInterval, int maxLatency, int endpointSelectionRetryCount, bool local
});




}
/// @nodoc
class __$GqlNetworkSettingsCopyWithImpl<$Res>
    implements _$GqlNetworkSettingsCopyWith<$Res> {
  __$GqlNetworkSettingsCopyWithImpl(this._self, this._then);

  final _GqlNetworkSettings _self;
  final $Res Function(_GqlNetworkSettings) _then;

/// Create a copy of GqlNetworkSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? endpoints = null,Object? latencyDetectionInterval = null,Object? maxLatency = null,Object? endpointSelectionRetryCount = null,Object? local = null,}) {
  return _then(_GqlNetworkSettings(
endpoints: null == endpoints ? _self._endpoints : endpoints // ignore: cast_nullable_to_non_nullable
as List<String>,latencyDetectionInterval: null == latencyDetectionInterval ? _self.latencyDetectionInterval : latencyDetectionInterval // ignore: cast_nullable_to_non_nullable
as int,maxLatency: null == maxLatency ? _self.maxLatency : maxLatency // ignore: cast_nullable_to_non_nullable
as int,endpointSelectionRetryCount: null == endpointSelectionRetryCount ? _self.endpointSelectionRetryCount : endpointSelectionRetryCount // ignore: cast_nullable_to_non_nullable
as int,local: null == local ? _self.local : local // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
