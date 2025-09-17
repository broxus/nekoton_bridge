// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_interaction_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletInteractionInfo {

@JsonKey(includeIfNull: false)@amountJsonConverter Address? get recipient;@JsonKey(includeIfNull: false) KnownPayload? get knownPayload; WalletInteractionMethod get method;
/// Create a copy of WalletInteractionInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletInteractionInfoCopyWith<WalletInteractionInfo> get copyWith => _$WalletInteractionInfoCopyWithImpl<WalletInteractionInfo>(this as WalletInteractionInfo, _$identity);

  /// Serializes this WalletInteractionInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletInteractionInfo&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.knownPayload, knownPayload) || other.knownPayload == knownPayload)&&(identical(other.method, method) || other.method == method));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipient,knownPayload,method);

@override
String toString() {
  return 'WalletInteractionInfo(recipient: $recipient, knownPayload: $knownPayload, method: $method)';
}


}

/// @nodoc
abstract mixin class $WalletInteractionInfoCopyWith<$Res>  {
  factory $WalletInteractionInfoCopyWith(WalletInteractionInfo value, $Res Function(WalletInteractionInfo) _then) = _$WalletInteractionInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false)@amountJsonConverter Address? recipient,@JsonKey(includeIfNull: false) KnownPayload? knownPayload, WalletInteractionMethod method
});


$AddressCopyWith<$Res>? get recipient;$KnownPayloadCopyWith<$Res>? get knownPayload;$WalletInteractionMethodCopyWith<$Res> get method;

}
/// @nodoc
class _$WalletInteractionInfoCopyWithImpl<$Res>
    implements $WalletInteractionInfoCopyWith<$Res> {
  _$WalletInteractionInfoCopyWithImpl(this._self, this._then);

  final WalletInteractionInfo _self;
  final $Res Function(WalletInteractionInfo) _then;

/// Create a copy of WalletInteractionInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recipient = freezed,Object? knownPayload = freezed,Object? method = null,}) {
  return _then(_self.copyWith(
recipient: freezed == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as Address?,knownPayload: freezed == knownPayload ? _self.knownPayload : knownPayload // ignore: cast_nullable_to_non_nullable
as KnownPayload?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as WalletInteractionMethod,
  ));
}
/// Create a copy of WalletInteractionInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get recipient {
    if (_self.recipient == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.recipient!, (value) {
    return _then(_self.copyWith(recipient: value));
  });
}/// Create a copy of WalletInteractionInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KnownPayloadCopyWith<$Res>? get knownPayload {
    if (_self.knownPayload == null) {
    return null;
  }

  return $KnownPayloadCopyWith<$Res>(_self.knownPayload!, (value) {
    return _then(_self.copyWith(knownPayload: value));
  });
}/// Create a copy of WalletInteractionInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletInteractionMethodCopyWith<$Res> get method {
  
  return $WalletInteractionMethodCopyWith<$Res>(_self.method, (value) {
    return _then(_self.copyWith(method: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletInteractionInfo].
extension WalletInteractionInfoPatterns on WalletInteractionInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletInteractionInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletInteractionInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletInteractionInfo value)  $default,){
final _that = this;
switch (_that) {
case _WalletInteractionInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletInteractionInfo value)?  $default,){
final _that = this;
switch (_that) {
case _WalletInteractionInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)@amountJsonConverter  Address? recipient, @JsonKey(includeIfNull: false)  KnownPayload? knownPayload,  WalletInteractionMethod method)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletInteractionInfo() when $default != null:
return $default(_that.recipient,_that.knownPayload,_that.method);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)@amountJsonConverter  Address? recipient, @JsonKey(includeIfNull: false)  KnownPayload? knownPayload,  WalletInteractionMethod method)  $default,) {final _that = this;
switch (_that) {
case _WalletInteractionInfo():
return $default(_that.recipient,_that.knownPayload,_that.method);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)@amountJsonConverter  Address? recipient, @JsonKey(includeIfNull: false)  KnownPayload? knownPayload,  WalletInteractionMethod method)?  $default,) {final _that = this;
switch (_that) {
case _WalletInteractionInfo() when $default != null:
return $default(_that.recipient,_that.knownPayload,_that.method);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletInteractionInfo implements WalletInteractionInfo {
  const _WalletInteractionInfo({@JsonKey(includeIfNull: false)@amountJsonConverter this.recipient, @JsonKey(includeIfNull: false) this.knownPayload, required this.method});
  factory _WalletInteractionInfo.fromJson(Map<String, dynamic> json) => _$WalletInteractionInfoFromJson(json);

@override@JsonKey(includeIfNull: false)@amountJsonConverter final  Address? recipient;
@override@JsonKey(includeIfNull: false) final  KnownPayload? knownPayload;
@override final  WalletInteractionMethod method;

/// Create a copy of WalletInteractionInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletInteractionInfoCopyWith<_WalletInteractionInfo> get copyWith => __$WalletInteractionInfoCopyWithImpl<_WalletInteractionInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletInteractionInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletInteractionInfo&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.knownPayload, knownPayload) || other.knownPayload == knownPayload)&&(identical(other.method, method) || other.method == method));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipient,knownPayload,method);

@override
String toString() {
  return 'WalletInteractionInfo(recipient: $recipient, knownPayload: $knownPayload, method: $method)';
}


}

/// @nodoc
abstract mixin class _$WalletInteractionInfoCopyWith<$Res> implements $WalletInteractionInfoCopyWith<$Res> {
  factory _$WalletInteractionInfoCopyWith(_WalletInteractionInfo value, $Res Function(_WalletInteractionInfo) _then) = __$WalletInteractionInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false)@amountJsonConverter Address? recipient,@JsonKey(includeIfNull: false) KnownPayload? knownPayload, WalletInteractionMethod method
});


@override $AddressCopyWith<$Res>? get recipient;@override $KnownPayloadCopyWith<$Res>? get knownPayload;@override $WalletInteractionMethodCopyWith<$Res> get method;

}
/// @nodoc
class __$WalletInteractionInfoCopyWithImpl<$Res>
    implements _$WalletInteractionInfoCopyWith<$Res> {
  __$WalletInteractionInfoCopyWithImpl(this._self, this._then);

  final _WalletInteractionInfo _self;
  final $Res Function(_WalletInteractionInfo) _then;

/// Create a copy of WalletInteractionInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipient = freezed,Object? knownPayload = freezed,Object? method = null,}) {
  return _then(_WalletInteractionInfo(
recipient: freezed == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as Address?,knownPayload: freezed == knownPayload ? _self.knownPayload : knownPayload // ignore: cast_nullable_to_non_nullable
as KnownPayload?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as WalletInteractionMethod,
  ));
}

/// Create a copy of WalletInteractionInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get recipient {
    if (_self.recipient == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.recipient!, (value) {
    return _then(_self.copyWith(recipient: value));
  });
}/// Create a copy of WalletInteractionInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KnownPayloadCopyWith<$Res>? get knownPayload {
    if (_self.knownPayload == null) {
    return null;
  }

  return $KnownPayloadCopyWith<$Res>(_self.knownPayload!, (value) {
    return _then(_self.copyWith(knownPayload: value));
  });
}/// Create a copy of WalletInteractionInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletInteractionMethodCopyWith<$Res> get method {
  
  return $WalletInteractionMethodCopyWith<$Res>(_self.method, (value) {
    return _then(_self.copyWith(method: value));
  });
}
}

// dart format on
