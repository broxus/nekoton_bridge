// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expiration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Expiration _$ExpirationFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'never':
          return ExpirationNever.fromJson(
            json
          );
                case 'timeout':
          return ExpirationTimeout.fromJson(
            json
          );
                case 'timestamp':
          return ExpirationTimestamp.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'Expiration',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$Expiration {



  /// Serializes this Expiration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Expiration);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Expiration()';
}


}

/// @nodoc
class $ExpirationCopyWith<$Res>  {
$ExpirationCopyWith(Expiration _, $Res Function(Expiration) __);
}


/// Adds pattern-matching-related methods to [Expiration].
extension ExpirationPatterns on Expiration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ExpirationNever value)?  never,TResult Function( ExpirationTimeout value)?  timeout,TResult Function( ExpirationTimestamp value)?  timestamp,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ExpirationNever() when never != null:
return never(_that);case ExpirationTimeout() when timeout != null:
return timeout(_that);case ExpirationTimestamp() when timestamp != null:
return timestamp(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ExpirationNever value)  never,required TResult Function( ExpirationTimeout value)  timeout,required TResult Function( ExpirationTimestamp value)  timestamp,}){
final _that = this;
switch (_that) {
case ExpirationNever():
return never(_that);case ExpirationTimeout():
return timeout(_that);case ExpirationTimestamp():
return timestamp(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ExpirationNever value)?  never,TResult? Function( ExpirationTimeout value)?  timeout,TResult? Function( ExpirationTimestamp value)?  timestamp,}){
final _that = this;
switch (_that) {
case ExpirationNever() when never != null:
return never(_that);case ExpirationTimeout() when timeout != null:
return timeout(_that);case ExpirationTimestamp() when timestamp != null:
return timestamp(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  never,TResult Function( int data)?  timeout,TResult Function( int data)?  timestamp,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ExpirationNever() when never != null:
return never();case ExpirationTimeout() when timeout != null:
return timeout(_that.data);case ExpirationTimestamp() when timestamp != null:
return timestamp(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  never,required TResult Function( int data)  timeout,required TResult Function( int data)  timestamp,}) {final _that = this;
switch (_that) {
case ExpirationNever():
return never();case ExpirationTimeout():
return timeout(_that.data);case ExpirationTimestamp():
return timestamp(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  never,TResult? Function( int data)?  timeout,TResult? Function( int data)?  timestamp,}) {final _that = this;
switch (_that) {
case ExpirationNever() when never != null:
return never();case ExpirationTimeout() when timeout != null:
return timeout(_that.data);case ExpirationTimestamp() when timestamp != null:
return timestamp(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class ExpirationNever implements Expiration {
  const ExpirationNever({final  String? $type}): $type = $type ?? 'never';
  factory ExpirationNever.fromJson(Map<String, dynamic> json) => _$ExpirationNeverFromJson(json);



@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ExpirationNeverToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpirationNever);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Expiration.never()';
}


}




/// @nodoc
@JsonSerializable()

class ExpirationTimeout implements Expiration {
  const ExpirationTimeout(this.data, {final  String? $type}): $type = $type ?? 'timeout';
  factory ExpirationTimeout.fromJson(Map<String, dynamic> json) => _$ExpirationTimeoutFromJson(json);

 final  int data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of Expiration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpirationTimeoutCopyWith<ExpirationTimeout> get copyWith => _$ExpirationTimeoutCopyWithImpl<ExpirationTimeout>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpirationTimeoutToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpirationTimeout&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'Expiration.timeout(data: $data)';
}


}

/// @nodoc
abstract mixin class $ExpirationTimeoutCopyWith<$Res> implements $ExpirationCopyWith<$Res> {
  factory $ExpirationTimeoutCopyWith(ExpirationTimeout value, $Res Function(ExpirationTimeout) _then) = _$ExpirationTimeoutCopyWithImpl;
@useResult
$Res call({
 int data
});




}
/// @nodoc
class _$ExpirationTimeoutCopyWithImpl<$Res>
    implements $ExpirationTimeoutCopyWith<$Res> {
  _$ExpirationTimeoutCopyWithImpl(this._self, this._then);

  final ExpirationTimeout _self;
  final $Res Function(ExpirationTimeout) _then;

/// Create a copy of Expiration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ExpirationTimeout(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ExpirationTimestamp implements Expiration {
  const ExpirationTimestamp(this.data, {final  String? $type}): $type = $type ?? 'timestamp';
  factory ExpirationTimestamp.fromJson(Map<String, dynamic> json) => _$ExpirationTimestampFromJson(json);

 final  int data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of Expiration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpirationTimestampCopyWith<ExpirationTimestamp> get copyWith => _$ExpirationTimestampCopyWithImpl<ExpirationTimestamp>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpirationTimestampToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpirationTimestamp&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'Expiration.timestamp(data: $data)';
}


}

/// @nodoc
abstract mixin class $ExpirationTimestampCopyWith<$Res> implements $ExpirationCopyWith<$Res> {
  factory $ExpirationTimestampCopyWith(ExpirationTimestamp value, $Res Function(ExpirationTimestamp) _then) = _$ExpirationTimestampCopyWithImpl;
@useResult
$Res call({
 int data
});




}
/// @nodoc
class _$ExpirationTimestampCopyWithImpl<$Res>
    implements $ExpirationTimestampCopyWith<$Res> {
  _$ExpirationTimestampCopyWithImpl(this._self, this._then);

  final ExpirationTimestamp _self;
  final $Res Function(ExpirationTimestamp) _then;

/// Create a copy of Expiration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ExpirationTimestamp(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
