// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_to_add.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountToAdd {

 String get name; PublicKey get publicKey; WalletType get contract; int get workchain; Address? get explicitAddress;
/// Create a copy of AccountToAdd
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountToAddCopyWith<AccountToAdd> get copyWith => _$AccountToAddCopyWithImpl<AccountToAdd>(this as AccountToAdd, _$identity);

  /// Serializes this AccountToAdd to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountToAdd&&(identical(other.name, name) || other.name == name)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.contract, contract) || other.contract == contract)&&(identical(other.workchain, workchain) || other.workchain == workchain)&&(identical(other.explicitAddress, explicitAddress) || other.explicitAddress == explicitAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,publicKey,contract,workchain,explicitAddress);

@override
String toString() {
  return 'AccountToAdd(name: $name, publicKey: $publicKey, contract: $contract, workchain: $workchain, explicitAddress: $explicitAddress)';
}


}

/// @nodoc
abstract mixin class $AccountToAddCopyWith<$Res>  {
  factory $AccountToAddCopyWith(AccountToAdd value, $Res Function(AccountToAdd) _then) = _$AccountToAddCopyWithImpl;
@useResult
$Res call({
 String name, PublicKey publicKey, WalletType contract, int workchain, Address? explicitAddress
});


$PublicKeyCopyWith<$Res> get publicKey;$WalletTypeCopyWith<$Res> get contract;$AddressCopyWith<$Res>? get explicitAddress;

}
/// @nodoc
class _$AccountToAddCopyWithImpl<$Res>
    implements $AccountToAddCopyWith<$Res> {
  _$AccountToAddCopyWithImpl(this._self, this._then);

  final AccountToAdd _self;
  final $Res Function(AccountToAdd) _then;

/// Create a copy of AccountToAdd
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? publicKey = null,Object? contract = null,Object? workchain = null,Object? explicitAddress = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as PublicKey,contract: null == contract ? _self.contract : contract // ignore: cast_nullable_to_non_nullable
as WalletType,workchain: null == workchain ? _self.workchain : workchain // ignore: cast_nullable_to_non_nullable
as int,explicitAddress: freezed == explicitAddress ? _self.explicitAddress : explicitAddress // ignore: cast_nullable_to_non_nullable
as Address?,
  ));
}
/// Create a copy of AccountToAdd
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get publicKey {
  
  return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
    return _then(_self.copyWith(publicKey: value));
  });
}/// Create a copy of AccountToAdd
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletTypeCopyWith<$Res> get contract {
  
  return $WalletTypeCopyWith<$Res>(_self.contract, (value) {
    return _then(_self.copyWith(contract: value));
  });
}/// Create a copy of AccountToAdd
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get explicitAddress {
    if (_self.explicitAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.explicitAddress!, (value) {
    return _then(_self.copyWith(explicitAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [AccountToAdd].
extension AccountToAddPatterns on AccountToAdd {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountToAdd value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountToAdd() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountToAdd value)  $default,){
final _that = this;
switch (_that) {
case _AccountToAdd():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountToAdd value)?  $default,){
final _that = this;
switch (_that) {
case _AccountToAdd() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  PublicKey publicKey,  WalletType contract,  int workchain,  Address? explicitAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountToAdd() when $default != null:
return $default(_that.name,_that.publicKey,_that.contract,_that.workchain,_that.explicitAddress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  PublicKey publicKey,  WalletType contract,  int workchain,  Address? explicitAddress)  $default,) {final _that = this;
switch (_that) {
case _AccountToAdd():
return $default(_that.name,_that.publicKey,_that.contract,_that.workchain,_that.explicitAddress);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  PublicKey publicKey,  WalletType contract,  int workchain,  Address? explicitAddress)?  $default,) {final _that = this;
switch (_that) {
case _AccountToAdd() when $default != null:
return $default(_that.name,_that.publicKey,_that.contract,_that.workchain,_that.explicitAddress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountToAdd implements AccountToAdd {
  const _AccountToAdd({required this.name, required this.publicKey, required this.contract, required this.workchain, this.explicitAddress});
  factory _AccountToAdd.fromJson(Map<String, dynamic> json) => _$AccountToAddFromJson(json);

@override final  String name;
@override final  PublicKey publicKey;
@override final  WalletType contract;
@override final  int workchain;
@override final  Address? explicitAddress;

/// Create a copy of AccountToAdd
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountToAddCopyWith<_AccountToAdd> get copyWith => __$AccountToAddCopyWithImpl<_AccountToAdd>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountToAddToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountToAdd&&(identical(other.name, name) || other.name == name)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.contract, contract) || other.contract == contract)&&(identical(other.workchain, workchain) || other.workchain == workchain)&&(identical(other.explicitAddress, explicitAddress) || other.explicitAddress == explicitAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,publicKey,contract,workchain,explicitAddress);

@override
String toString() {
  return 'AccountToAdd(name: $name, publicKey: $publicKey, contract: $contract, workchain: $workchain, explicitAddress: $explicitAddress)';
}


}

/// @nodoc
abstract mixin class _$AccountToAddCopyWith<$Res> implements $AccountToAddCopyWith<$Res> {
  factory _$AccountToAddCopyWith(_AccountToAdd value, $Res Function(_AccountToAdd) _then) = __$AccountToAddCopyWithImpl;
@override @useResult
$Res call({
 String name, PublicKey publicKey, WalletType contract, int workchain, Address? explicitAddress
});


@override $PublicKeyCopyWith<$Res> get publicKey;@override $WalletTypeCopyWith<$Res> get contract;@override $AddressCopyWith<$Res>? get explicitAddress;

}
/// @nodoc
class __$AccountToAddCopyWithImpl<$Res>
    implements _$AccountToAddCopyWith<$Res> {
  __$AccountToAddCopyWithImpl(this._self, this._then);

  final _AccountToAdd _self;
  final $Res Function(_AccountToAdd) _then;

/// Create a copy of AccountToAdd
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? publicKey = null,Object? contract = null,Object? workchain = null,Object? explicitAddress = freezed,}) {
  return _then(_AccountToAdd(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as PublicKey,contract: null == contract ? _self.contract : contract // ignore: cast_nullable_to_non_nullable
as WalletType,workchain: null == workchain ? _self.workchain : workchain // ignore: cast_nullable_to_non_nullable
as int,explicitAddress: freezed == explicitAddress ? _self.explicitAddress : explicitAddress // ignore: cast_nullable_to_non_nullable
as Address?,
  ));
}

/// Create a copy of AccountToAdd
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get publicKey {
  
  return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
    return _then(_self.copyWith(publicKey: value));
  });
}/// Create a copy of AccountToAdd
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletTypeCopyWith<$Res> get contract {
  
  return $WalletTypeCopyWith<$Res>(_self.contract, (value) {
    return _then(_self.copyWith(contract: value));
  });
}/// Create a copy of AccountToAdd
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get explicitAddress {
    if (_self.explicitAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.explicitAddress!, (value) {
    return _then(_self.copyWith(explicitAddress: value));
  });
}
}

// dart format on
