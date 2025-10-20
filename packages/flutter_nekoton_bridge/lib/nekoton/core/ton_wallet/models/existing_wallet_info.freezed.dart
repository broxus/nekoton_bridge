// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'existing_wallet_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExistingWalletInfo {

 Address get address; PublicKey get publicKey; WalletType get walletType; ContractState get contractState;
/// Create a copy of ExistingWalletInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExistingWalletInfoCopyWith<ExistingWalletInfo> get copyWith => _$ExistingWalletInfoCopyWithImpl<ExistingWalletInfo>(this as ExistingWalletInfo, _$identity);

  /// Serializes this ExistingWalletInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExistingWalletInfo&&(identical(other.address, address) || other.address == address)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.walletType, walletType) || other.walletType == walletType)&&(identical(other.contractState, contractState) || other.contractState == contractState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,publicKey,walletType,contractState);

@override
String toString() {
  return 'ExistingWalletInfo(address: $address, publicKey: $publicKey, walletType: $walletType, contractState: $contractState)';
}


}

/// @nodoc
abstract mixin class $ExistingWalletInfoCopyWith<$Res>  {
  factory $ExistingWalletInfoCopyWith(ExistingWalletInfo value, $Res Function(ExistingWalletInfo) _then) = _$ExistingWalletInfoCopyWithImpl;
@useResult
$Res call({
 Address address, PublicKey publicKey, WalletType walletType, ContractState contractState
});


$AddressCopyWith<$Res> get address;$PublicKeyCopyWith<$Res> get publicKey;$WalletTypeCopyWith<$Res> get walletType;$ContractStateCopyWith<$Res> get contractState;

}
/// @nodoc
class _$ExistingWalletInfoCopyWithImpl<$Res>
    implements $ExistingWalletInfoCopyWith<$Res> {
  _$ExistingWalletInfoCopyWithImpl(this._self, this._then);

  final ExistingWalletInfo _self;
  final $Res Function(ExistingWalletInfo) _then;

/// Create a copy of ExistingWalletInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? publicKey = null,Object? walletType = null,Object? contractState = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as PublicKey,walletType: null == walletType ? _self.walletType : walletType // ignore: cast_nullable_to_non_nullable
as WalletType,contractState: null == contractState ? _self.contractState : contractState // ignore: cast_nullable_to_non_nullable
as ContractState,
  ));
}
/// Create a copy of ExistingWalletInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get address {
  
  return $AddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of ExistingWalletInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get publicKey {
  
  return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
    return _then(_self.copyWith(publicKey: value));
  });
}/// Create a copy of ExistingWalletInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletTypeCopyWith<$Res> get walletType {
  
  return $WalletTypeCopyWith<$Res>(_self.walletType, (value) {
    return _then(_self.copyWith(walletType: value));
  });
}/// Create a copy of ExistingWalletInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContractStateCopyWith<$Res> get contractState {
  
  return $ContractStateCopyWith<$Res>(_self.contractState, (value) {
    return _then(_self.copyWith(contractState: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExistingWalletInfo].
extension ExistingWalletInfoPatterns on ExistingWalletInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExistingWalletInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExistingWalletInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExistingWalletInfo value)  $default,){
final _that = this;
switch (_that) {
case _ExistingWalletInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExistingWalletInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ExistingWalletInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Address address,  PublicKey publicKey,  WalletType walletType,  ContractState contractState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExistingWalletInfo() when $default != null:
return $default(_that.address,_that.publicKey,_that.walletType,_that.contractState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Address address,  PublicKey publicKey,  WalletType walletType,  ContractState contractState)  $default,) {final _that = this;
switch (_that) {
case _ExistingWalletInfo():
return $default(_that.address,_that.publicKey,_that.walletType,_that.contractState);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Address address,  PublicKey publicKey,  WalletType walletType,  ContractState contractState)?  $default,) {final _that = this;
switch (_that) {
case _ExistingWalletInfo() when $default != null:
return $default(_that.address,_that.publicKey,_that.walletType,_that.contractState);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExistingWalletInfo implements ExistingWalletInfo {
  const _ExistingWalletInfo({required this.address, required this.publicKey, required this.walletType, required this.contractState});
  factory _ExistingWalletInfo.fromJson(Map<String, dynamic> json) => _$ExistingWalletInfoFromJson(json);

@override final  Address address;
@override final  PublicKey publicKey;
@override final  WalletType walletType;
@override final  ContractState contractState;

/// Create a copy of ExistingWalletInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExistingWalletInfoCopyWith<_ExistingWalletInfo> get copyWith => __$ExistingWalletInfoCopyWithImpl<_ExistingWalletInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExistingWalletInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExistingWalletInfo&&(identical(other.address, address) || other.address == address)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.walletType, walletType) || other.walletType == walletType)&&(identical(other.contractState, contractState) || other.contractState == contractState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,publicKey,walletType,contractState);

@override
String toString() {
  return 'ExistingWalletInfo(address: $address, publicKey: $publicKey, walletType: $walletType, contractState: $contractState)';
}


}

/// @nodoc
abstract mixin class _$ExistingWalletInfoCopyWith<$Res> implements $ExistingWalletInfoCopyWith<$Res> {
  factory _$ExistingWalletInfoCopyWith(_ExistingWalletInfo value, $Res Function(_ExistingWalletInfo) _then) = __$ExistingWalletInfoCopyWithImpl;
@override @useResult
$Res call({
 Address address, PublicKey publicKey, WalletType walletType, ContractState contractState
});


@override $AddressCopyWith<$Res> get address;@override $PublicKeyCopyWith<$Res> get publicKey;@override $WalletTypeCopyWith<$Res> get walletType;@override $ContractStateCopyWith<$Res> get contractState;

}
/// @nodoc
class __$ExistingWalletInfoCopyWithImpl<$Res>
    implements _$ExistingWalletInfoCopyWith<$Res> {
  __$ExistingWalletInfoCopyWithImpl(this._self, this._then);

  final _ExistingWalletInfo _self;
  final $Res Function(_ExistingWalletInfo) _then;

/// Create a copy of ExistingWalletInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? publicKey = null,Object? walletType = null,Object? contractState = null,}) {
  return _then(_ExistingWalletInfo(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as PublicKey,walletType: null == walletType ? _self.walletType : walletType // ignore: cast_nullable_to_non_nullable
as WalletType,contractState: null == contractState ? _self.contractState : contractState // ignore: cast_nullable_to_non_nullable
as ContractState,
  ));
}

/// Create a copy of ExistingWalletInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get address {
  
  return $AddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of ExistingWalletInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get publicKey {
  
  return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
    return _then(_self.copyWith(publicKey: value));
  });
}/// Create a copy of ExistingWalletInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletTypeCopyWith<$Res> get walletType {
  
  return $WalletTypeCopyWith<$Res>(_self.walletType, (value) {
    return _then(_self.copyWith(walletType: value));
  });
}/// Create a copy of ExistingWalletInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContractStateCopyWith<$Res> get contractState {
  
  return $ContractStateCopyWith<$Res>(_self.contractState, (value) {
    return _then(_self.copyWith(contractState: value));
  });
}
}

// dart format on
