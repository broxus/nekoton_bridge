// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_fee_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StorageFeeInfo {

 String get storageFee; String? get storageFeeDebt; String get accountStatus; String get freezeDueLimit; String get deleteDueLimit;
/// Create a copy of StorageFeeInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorageFeeInfoCopyWith<StorageFeeInfo> get copyWith => _$StorageFeeInfoCopyWithImpl<StorageFeeInfo>(this as StorageFeeInfo, _$identity);

  /// Serializes this StorageFeeInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageFeeInfo&&(identical(other.storageFee, storageFee) || other.storageFee == storageFee)&&(identical(other.storageFeeDebt, storageFeeDebt) || other.storageFeeDebt == storageFeeDebt)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.freezeDueLimit, freezeDueLimit) || other.freezeDueLimit == freezeDueLimit)&&(identical(other.deleteDueLimit, deleteDueLimit) || other.deleteDueLimit == deleteDueLimit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storageFee,storageFeeDebt,accountStatus,freezeDueLimit,deleteDueLimit);

@override
String toString() {
  return 'StorageFeeInfo(storageFee: $storageFee, storageFeeDebt: $storageFeeDebt, accountStatus: $accountStatus, freezeDueLimit: $freezeDueLimit, deleteDueLimit: $deleteDueLimit)';
}


}

/// @nodoc
abstract mixin class $StorageFeeInfoCopyWith<$Res>  {
  factory $StorageFeeInfoCopyWith(StorageFeeInfo value, $Res Function(StorageFeeInfo) _then) = _$StorageFeeInfoCopyWithImpl;
@useResult
$Res call({
 String storageFee, String? storageFeeDebt, String accountStatus, String freezeDueLimit, String deleteDueLimit
});




}
/// @nodoc
class _$StorageFeeInfoCopyWithImpl<$Res>
    implements $StorageFeeInfoCopyWith<$Res> {
  _$StorageFeeInfoCopyWithImpl(this._self, this._then);

  final StorageFeeInfo _self;
  final $Res Function(StorageFeeInfo) _then;

/// Create a copy of StorageFeeInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storageFee = null,Object? storageFeeDebt = freezed,Object? accountStatus = null,Object? freezeDueLimit = null,Object? deleteDueLimit = null,}) {
  return _then(_self.copyWith(
storageFee: null == storageFee ? _self.storageFee : storageFee // ignore: cast_nullable_to_non_nullable
as String,storageFeeDebt: freezed == storageFeeDebt ? _self.storageFeeDebt : storageFeeDebt // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: null == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String,freezeDueLimit: null == freezeDueLimit ? _self.freezeDueLimit : freezeDueLimit // ignore: cast_nullable_to_non_nullable
as String,deleteDueLimit: null == deleteDueLimit ? _self.deleteDueLimit : deleteDueLimit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StorageFeeInfo].
extension StorageFeeInfoPatterns on StorageFeeInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StorageFeeInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StorageFeeInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StorageFeeInfo value)  $default,){
final _that = this;
switch (_that) {
case _StorageFeeInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StorageFeeInfo value)?  $default,){
final _that = this;
switch (_that) {
case _StorageFeeInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String storageFee,  String? storageFeeDebt,  String accountStatus,  String freezeDueLimit,  String deleteDueLimit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StorageFeeInfo() when $default != null:
return $default(_that.storageFee,_that.storageFeeDebt,_that.accountStatus,_that.freezeDueLimit,_that.deleteDueLimit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String storageFee,  String? storageFeeDebt,  String accountStatus,  String freezeDueLimit,  String deleteDueLimit)  $default,) {final _that = this;
switch (_that) {
case _StorageFeeInfo():
return $default(_that.storageFee,_that.storageFeeDebt,_that.accountStatus,_that.freezeDueLimit,_that.deleteDueLimit);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String storageFee,  String? storageFeeDebt,  String accountStatus,  String freezeDueLimit,  String deleteDueLimit)?  $default,) {final _that = this;
switch (_that) {
case _StorageFeeInfo() when $default != null:
return $default(_that.storageFee,_that.storageFeeDebt,_that.accountStatus,_that.freezeDueLimit,_that.deleteDueLimit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StorageFeeInfo implements StorageFeeInfo {
  const _StorageFeeInfo({required this.storageFee, required this.storageFeeDebt, required this.accountStatus, required this.freezeDueLimit, required this.deleteDueLimit});
  factory _StorageFeeInfo.fromJson(Map<String, dynamic> json) => _$StorageFeeInfoFromJson(json);

@override final  String storageFee;
@override final  String? storageFeeDebt;
@override final  String accountStatus;
@override final  String freezeDueLimit;
@override final  String deleteDueLimit;

/// Create a copy of StorageFeeInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StorageFeeInfoCopyWith<_StorageFeeInfo> get copyWith => __$StorageFeeInfoCopyWithImpl<_StorageFeeInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StorageFeeInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StorageFeeInfo&&(identical(other.storageFee, storageFee) || other.storageFee == storageFee)&&(identical(other.storageFeeDebt, storageFeeDebt) || other.storageFeeDebt == storageFeeDebt)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.freezeDueLimit, freezeDueLimit) || other.freezeDueLimit == freezeDueLimit)&&(identical(other.deleteDueLimit, deleteDueLimit) || other.deleteDueLimit == deleteDueLimit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storageFee,storageFeeDebt,accountStatus,freezeDueLimit,deleteDueLimit);

@override
String toString() {
  return 'StorageFeeInfo(storageFee: $storageFee, storageFeeDebt: $storageFeeDebt, accountStatus: $accountStatus, freezeDueLimit: $freezeDueLimit, deleteDueLimit: $deleteDueLimit)';
}


}

/// @nodoc
abstract mixin class _$StorageFeeInfoCopyWith<$Res> implements $StorageFeeInfoCopyWith<$Res> {
  factory _$StorageFeeInfoCopyWith(_StorageFeeInfo value, $Res Function(_StorageFeeInfo) _then) = __$StorageFeeInfoCopyWithImpl;
@override @useResult
$Res call({
 String storageFee, String? storageFeeDebt, String accountStatus, String freezeDueLimit, String deleteDueLimit
});




}
/// @nodoc
class __$StorageFeeInfoCopyWithImpl<$Res>
    implements _$StorageFeeInfoCopyWith<$Res> {
  __$StorageFeeInfoCopyWithImpl(this._self, this._then);

  final _StorageFeeInfo _self;
  final $Res Function(_StorageFeeInfo) _then;

/// Create a copy of StorageFeeInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storageFee = null,Object? storageFeeDebt = freezed,Object? accountStatus = null,Object? freezeDueLimit = null,Object? deleteDueLimit = null,}) {
  return _then(_StorageFeeInfo(
storageFee: null == storageFee ? _self.storageFee : storageFee // ignore: cast_nullable_to_non_nullable
as String,storageFeeDebt: freezed == storageFeeDebt ? _self.storageFeeDebt : storageFeeDebt // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: null == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String,freezeDueLimit: null == freezeDueLimit ? _self.freezeDueLimit : freezeDueLimit // ignore: cast_nullable_to_non_nullable
as String,deleteDueLimit: null == deleteDueLimit ? _self.deleteDueLimit : deleteDueLimit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
