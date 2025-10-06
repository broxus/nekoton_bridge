// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_interaction_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
WalletInteractionMethod _$WalletInteractionMethodFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'wallet_v3_transfer':
          return WalletInteractionMethodWalletV3Transfer.fromJson(
            json
          );
                case 'ton_wallet_transfer':
          return WalletInteractionMethodTonWalletTransfer.fromJson(
            json
          );
                case 'multisig':
          return WalletInteractionMethodMultisig.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'WalletInteractionMethod',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$WalletInteractionMethod {



  /// Serializes this WalletInteractionMethod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletInteractionMethod);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletInteractionMethod()';
}


}

/// @nodoc
class $WalletInteractionMethodCopyWith<$Res>  {
$WalletInteractionMethodCopyWith(WalletInteractionMethod _, $Res Function(WalletInteractionMethod) __);
}


/// Adds pattern-matching-related methods to [WalletInteractionMethod].
extension WalletInteractionMethodPatterns on WalletInteractionMethod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WalletInteractionMethodWalletV3Transfer value)?  walletV3Transfer,TResult Function( WalletInteractionMethodTonWalletTransfer value)?  tonWalletTransfer,TResult Function( WalletInteractionMethodMultisig value)?  multisig,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WalletInteractionMethodWalletV3Transfer() when walletV3Transfer != null:
return walletV3Transfer(_that);case WalletInteractionMethodTonWalletTransfer() when tonWalletTransfer != null:
return tonWalletTransfer(_that);case WalletInteractionMethodMultisig() when multisig != null:
return multisig(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WalletInteractionMethodWalletV3Transfer value)  walletV3Transfer,required TResult Function( WalletInteractionMethodTonWalletTransfer value)  tonWalletTransfer,required TResult Function( WalletInteractionMethodMultisig value)  multisig,}){
final _that = this;
switch (_that) {
case WalletInteractionMethodWalletV3Transfer():
return walletV3Transfer(_that);case WalletInteractionMethodTonWalletTransfer():
return tonWalletTransfer(_that);case WalletInteractionMethodMultisig():
return multisig(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WalletInteractionMethodWalletV3Transfer value)?  walletV3Transfer,TResult? Function( WalletInteractionMethodTonWalletTransfer value)?  tonWalletTransfer,TResult? Function( WalletInteractionMethodMultisig value)?  multisig,}){
final _that = this;
switch (_that) {
case WalletInteractionMethodWalletV3Transfer() when walletV3Transfer != null:
return walletV3Transfer(_that);case WalletInteractionMethodTonWalletTransfer() when tonWalletTransfer != null:
return tonWalletTransfer(_that);case WalletInteractionMethodMultisig() when multisig != null:
return multisig(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  walletV3Transfer,TResult Function()?  tonWalletTransfer,TResult Function( MultisigTransaction data)?  multisig,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WalletInteractionMethodWalletV3Transfer() when walletV3Transfer != null:
return walletV3Transfer();case WalletInteractionMethodTonWalletTransfer() when tonWalletTransfer != null:
return tonWalletTransfer();case WalletInteractionMethodMultisig() when multisig != null:
return multisig(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  walletV3Transfer,required TResult Function()  tonWalletTransfer,required TResult Function( MultisigTransaction data)  multisig,}) {final _that = this;
switch (_that) {
case WalletInteractionMethodWalletV3Transfer():
return walletV3Transfer();case WalletInteractionMethodTonWalletTransfer():
return tonWalletTransfer();case WalletInteractionMethodMultisig():
return multisig(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  walletV3Transfer,TResult? Function()?  tonWalletTransfer,TResult? Function( MultisigTransaction data)?  multisig,}) {final _that = this;
switch (_that) {
case WalletInteractionMethodWalletV3Transfer() when walletV3Transfer != null:
return walletV3Transfer();case WalletInteractionMethodTonWalletTransfer() when tonWalletTransfer != null:
return tonWalletTransfer();case WalletInteractionMethodMultisig() when multisig != null:
return multisig(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class WalletInteractionMethodWalletV3Transfer implements WalletInteractionMethod {
  const WalletInteractionMethodWalletV3Transfer({final  String? $type}): $type = $type ?? 'wallet_v3_transfer';
  factory WalletInteractionMethodWalletV3Transfer.fromJson(Map<String, dynamic> json) => _$WalletInteractionMethodWalletV3TransferFromJson(json);



@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$WalletInteractionMethodWalletV3TransferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletInteractionMethodWalletV3Transfer);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletInteractionMethod.walletV3Transfer()';
}


}




/// @nodoc
@JsonSerializable()

class WalletInteractionMethodTonWalletTransfer implements WalletInteractionMethod {
  const WalletInteractionMethodTonWalletTransfer({final  String? $type}): $type = $type ?? 'ton_wallet_transfer';
  factory WalletInteractionMethodTonWalletTransfer.fromJson(Map<String, dynamic> json) => _$WalletInteractionMethodTonWalletTransferFromJson(json);



@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$WalletInteractionMethodTonWalletTransferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletInteractionMethodTonWalletTransfer);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletInteractionMethod.tonWalletTransfer()';
}


}




/// @nodoc
@JsonSerializable()

class WalletInteractionMethodMultisig implements WalletInteractionMethod {
  const WalletInteractionMethodMultisig(this.data, {final  String? $type}): $type = $type ?? 'multisig';
  factory WalletInteractionMethodMultisig.fromJson(Map<String, dynamic> json) => _$WalletInteractionMethodMultisigFromJson(json);

 final  MultisigTransaction data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of WalletInteractionMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletInteractionMethodMultisigCopyWith<WalletInteractionMethodMultisig> get copyWith => _$WalletInteractionMethodMultisigCopyWithImpl<WalletInteractionMethodMultisig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletInteractionMethodMultisigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletInteractionMethodMultisig&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'WalletInteractionMethod.multisig(data: $data)';
}


}

/// @nodoc
abstract mixin class $WalletInteractionMethodMultisigCopyWith<$Res> implements $WalletInteractionMethodCopyWith<$Res> {
  factory $WalletInteractionMethodMultisigCopyWith(WalletInteractionMethodMultisig value, $Res Function(WalletInteractionMethodMultisig) _then) = _$WalletInteractionMethodMultisigCopyWithImpl;
@useResult
$Res call({
 MultisigTransaction data
});


$MultisigTransactionCopyWith<$Res> get data;

}
/// @nodoc
class _$WalletInteractionMethodMultisigCopyWithImpl<$Res>
    implements $WalletInteractionMethodMultisigCopyWith<$Res> {
  _$WalletInteractionMethodMultisigCopyWithImpl(this._self, this._then);

  final WalletInteractionMethodMultisig _self;
  final $Res Function(WalletInteractionMethodMultisig) _then;

/// Create a copy of WalletInteractionMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(WalletInteractionMethodMultisig(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MultisigTransaction,
  ));
}

/// Create a copy of WalletInteractionMethod
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MultisigTransactionCopyWith<$Res> get data {
  
  return $MultisigTransactionCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
