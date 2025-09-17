// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jetton_wallet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JettonWalletData {

 Address get rootAddress; Address get ownerAddress;@amountJsonConverter BigInt get balance;
/// Create a copy of JettonWalletData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JettonWalletDataCopyWith<JettonWalletData> get copyWith => _$JettonWalletDataCopyWithImpl<JettonWalletData>(this as JettonWalletData, _$identity);

  /// Serializes this JettonWalletData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JettonWalletData&&(identical(other.rootAddress, rootAddress) || other.rootAddress == rootAddress)&&(identical(other.ownerAddress, ownerAddress) || other.ownerAddress == ownerAddress)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rootAddress,ownerAddress,balance);

@override
String toString() {
  return 'JettonWalletData(rootAddress: $rootAddress, ownerAddress: $ownerAddress, balance: $balance)';
}


}

/// @nodoc
abstract mixin class $JettonWalletDataCopyWith<$Res>  {
  factory $JettonWalletDataCopyWith(JettonWalletData value, $Res Function(JettonWalletData) _then) = _$JettonWalletDataCopyWithImpl;
@useResult
$Res call({
 Address rootAddress, Address ownerAddress,@amountJsonConverter BigInt balance
});


$AddressCopyWith<$Res> get rootAddress;$AddressCopyWith<$Res> get ownerAddress;

}
/// @nodoc
class _$JettonWalletDataCopyWithImpl<$Res>
    implements $JettonWalletDataCopyWith<$Res> {
  _$JettonWalletDataCopyWithImpl(this._self, this._then);

  final JettonWalletData _self;
  final $Res Function(JettonWalletData) _then;

/// Create a copy of JettonWalletData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rootAddress = null,Object? ownerAddress = null,Object? balance = null,}) {
  return _then(_self.copyWith(
rootAddress: null == rootAddress ? _self.rootAddress : rootAddress // ignore: cast_nullable_to_non_nullable
as Address,ownerAddress: null == ownerAddress ? _self.ownerAddress : ownerAddress // ignore: cast_nullable_to_non_nullable
as Address,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}
/// Create a copy of JettonWalletData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get rootAddress {
  
  return $AddressCopyWith<$Res>(_self.rootAddress, (value) {
    return _then(_self.copyWith(rootAddress: value));
  });
}/// Create a copy of JettonWalletData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get ownerAddress {
  
  return $AddressCopyWith<$Res>(_self.ownerAddress, (value) {
    return _then(_self.copyWith(ownerAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [JettonWalletData].
extension JettonWalletDataPatterns on JettonWalletData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JettonWalletData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JettonWalletData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JettonWalletData value)  $default,){
final _that = this;
switch (_that) {
case _JettonWalletData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JettonWalletData value)?  $default,){
final _that = this;
switch (_that) {
case _JettonWalletData() when $default != null:
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
case _JettonWalletData() when $default != null:
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
case _JettonWalletData():
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
case _JettonWalletData() when $default != null:
return $default(_that.rootAddress,_that.ownerAddress,_that.balance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JettonWalletData implements JettonWalletData {
  const _JettonWalletData({required this.rootAddress, required this.ownerAddress, @amountJsonConverter required this.balance});
  factory _JettonWalletData.fromJson(Map<String, dynamic> json) => _$JettonWalletDataFromJson(json);

@override final  Address rootAddress;
@override final  Address ownerAddress;
@override@amountJsonConverter final  BigInt balance;

/// Create a copy of JettonWalletData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JettonWalletDataCopyWith<_JettonWalletData> get copyWith => __$JettonWalletDataCopyWithImpl<_JettonWalletData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JettonWalletDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JettonWalletData&&(identical(other.rootAddress, rootAddress) || other.rootAddress == rootAddress)&&(identical(other.ownerAddress, ownerAddress) || other.ownerAddress == ownerAddress)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rootAddress,ownerAddress,balance);

@override
String toString() {
  return 'JettonWalletData(rootAddress: $rootAddress, ownerAddress: $ownerAddress, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$JettonWalletDataCopyWith<$Res> implements $JettonWalletDataCopyWith<$Res> {
  factory _$JettonWalletDataCopyWith(_JettonWalletData value, $Res Function(_JettonWalletData) _then) = __$JettonWalletDataCopyWithImpl;
@override @useResult
$Res call({
 Address rootAddress, Address ownerAddress,@amountJsonConverter BigInt balance
});


@override $AddressCopyWith<$Res> get rootAddress;@override $AddressCopyWith<$Res> get ownerAddress;

}
/// @nodoc
class __$JettonWalletDataCopyWithImpl<$Res>
    implements _$JettonWalletDataCopyWith<$Res> {
  __$JettonWalletDataCopyWithImpl(this._self, this._then);

  final _JettonWalletData _self;
  final $Res Function(_JettonWalletData) _then;

/// Create a copy of JettonWalletData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rootAddress = null,Object? ownerAddress = null,Object? balance = null,}) {
  return _then(_JettonWalletData(
rootAddress: null == rootAddress ? _self.rootAddress : rootAddress // ignore: cast_nullable_to_non_nullable
as Address,ownerAddress: null == ownerAddress ? _self.ownerAddress : ownerAddress // ignore: cast_nullable_to_non_nullable
as Address,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

/// Create a copy of JettonWalletData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get rootAddress {
  
  return $AddressCopyWith<$Res>(_self.rootAddress, (value) {
    return _then(_self.copyWith(rootAddress: value));
  });
}/// Create a copy of JettonWalletData
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
