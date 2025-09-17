// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_wallet_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenWalletDetails {

 Address get rootAddress; Address get ownerAddress;@amountJsonConverter BigInt get balance;
/// Create a copy of TokenWalletDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenWalletDetailsCopyWith<TokenWalletDetails> get copyWith => _$TokenWalletDetailsCopyWithImpl<TokenWalletDetails>(this as TokenWalletDetails, _$identity);

  /// Serializes this TokenWalletDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenWalletDetails&&(identical(other.rootAddress, rootAddress) || other.rootAddress == rootAddress)&&(identical(other.ownerAddress, ownerAddress) || other.ownerAddress == ownerAddress)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rootAddress,ownerAddress,balance);

@override
String toString() {
  return 'TokenWalletDetails(rootAddress: $rootAddress, ownerAddress: $ownerAddress, balance: $balance)';
}


}

/// @nodoc
abstract mixin class $TokenWalletDetailsCopyWith<$Res>  {
  factory $TokenWalletDetailsCopyWith(TokenWalletDetails value, $Res Function(TokenWalletDetails) _then) = _$TokenWalletDetailsCopyWithImpl;
@useResult
$Res call({
 Address rootAddress, Address ownerAddress,@amountJsonConverter BigInt balance
});


$AddressCopyWith<$Res> get rootAddress;$AddressCopyWith<$Res> get ownerAddress;

}
/// @nodoc
class _$TokenWalletDetailsCopyWithImpl<$Res>
    implements $TokenWalletDetailsCopyWith<$Res> {
  _$TokenWalletDetailsCopyWithImpl(this._self, this._then);

  final TokenWalletDetails _self;
  final $Res Function(TokenWalletDetails) _then;

/// Create a copy of TokenWalletDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rootAddress = null,Object? ownerAddress = null,Object? balance = null,}) {
  return _then(_self.copyWith(
rootAddress: null == rootAddress ? _self.rootAddress : rootAddress // ignore: cast_nullable_to_non_nullable
as Address,ownerAddress: null == ownerAddress ? _self.ownerAddress : ownerAddress // ignore: cast_nullable_to_non_nullable
as Address,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}
/// Create a copy of TokenWalletDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get rootAddress {
  
  return $AddressCopyWith<$Res>(_self.rootAddress, (value) {
    return _then(_self.copyWith(rootAddress: value));
  });
}/// Create a copy of TokenWalletDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get ownerAddress {
  
  return $AddressCopyWith<$Res>(_self.ownerAddress, (value) {
    return _then(_self.copyWith(ownerAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [TokenWalletDetails].
extension TokenWalletDetailsPatterns on TokenWalletDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokenWalletDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokenWalletDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokenWalletDetails value)  $default,){
final _that = this;
switch (_that) {
case _TokenWalletDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokenWalletDetails value)?  $default,){
final _that = this;
switch (_that) {
case _TokenWalletDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Address rootAddress,  Address ownerAddress, @amountJsonConverter  BigInt balance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokenWalletDetails() when $default != null:
return $default(_that.rootAddress,_that.ownerAddress,_that.balance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Address rootAddress,  Address ownerAddress, @amountJsonConverter  BigInt balance)  $default,) {final _that = this;
switch (_that) {
case _TokenWalletDetails():
return $default(_that.rootAddress,_that.ownerAddress,_that.balance);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Address rootAddress,  Address ownerAddress, @amountJsonConverter  BigInt balance)?  $default,) {final _that = this;
switch (_that) {
case _TokenWalletDetails() when $default != null:
return $default(_that.rootAddress,_that.ownerAddress,_that.balance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TokenWalletDetails implements TokenWalletDetails {
  const _TokenWalletDetails({required this.rootAddress, required this.ownerAddress, @amountJsonConverter required this.balance});
  factory _TokenWalletDetails.fromJson(Map<String, dynamic> json) => _$TokenWalletDetailsFromJson(json);

@override final  Address rootAddress;
@override final  Address ownerAddress;
@override@amountJsonConverter final  BigInt balance;

/// Create a copy of TokenWalletDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenWalletDetailsCopyWith<_TokenWalletDetails> get copyWith => __$TokenWalletDetailsCopyWithImpl<_TokenWalletDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenWalletDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenWalletDetails&&(identical(other.rootAddress, rootAddress) || other.rootAddress == rootAddress)&&(identical(other.ownerAddress, ownerAddress) || other.ownerAddress == ownerAddress)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rootAddress,ownerAddress,balance);

@override
String toString() {
  return 'TokenWalletDetails(rootAddress: $rootAddress, ownerAddress: $ownerAddress, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$TokenWalletDetailsCopyWith<$Res> implements $TokenWalletDetailsCopyWith<$Res> {
  factory _$TokenWalletDetailsCopyWith(_TokenWalletDetails value, $Res Function(_TokenWalletDetails) _then) = __$TokenWalletDetailsCopyWithImpl;
@override @useResult
$Res call({
 Address rootAddress, Address ownerAddress,@amountJsonConverter BigInt balance
});


@override $AddressCopyWith<$Res> get rootAddress;@override $AddressCopyWith<$Res> get ownerAddress;

}
/// @nodoc
class __$TokenWalletDetailsCopyWithImpl<$Res>
    implements _$TokenWalletDetailsCopyWith<$Res> {
  __$TokenWalletDetailsCopyWithImpl(this._self, this._then);

  final _TokenWalletDetails _self;
  final $Res Function(_TokenWalletDetails) _then;

/// Create a copy of TokenWalletDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rootAddress = null,Object? ownerAddress = null,Object? balance = null,}) {
  return _then(_TokenWalletDetails(
rootAddress: null == rootAddress ? _self.rootAddress : rootAddress // ignore: cast_nullable_to_non_nullable
as Address,ownerAddress: null == ownerAddress ? _self.ownerAddress : ownerAddress // ignore: cast_nullable_to_non_nullable
as Address,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

/// Create a copy of TokenWalletDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get rootAddress {
  
  return $AddressCopyWith<$Res>(_self.rootAddress, (value) {
    return _then(_self.copyWith(rootAddress: value));
  });
}/// Create a copy of TokenWalletDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get ownerAddress {
  
  return $AddressCopyWith<$Res>(_self.ownerAddress, (value) {
    return _then(_self.copyWith(ownerAddress: value));
  });
}
}

// dart format on
