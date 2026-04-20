// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multisig_submit_update_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MultisigSubmitUpdateTransaction {

 PublicKey get custodian; String? get newCodeHash; bool get newOwners; bool get newReqConfirms; bool get newLifetime; String get updateId;
/// Create a copy of MultisigSubmitUpdateTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultisigSubmitUpdateTransactionCopyWith<MultisigSubmitUpdateTransaction> get copyWith => _$MultisigSubmitUpdateTransactionCopyWithImpl<MultisigSubmitUpdateTransaction>(this as MultisigSubmitUpdateTransaction, _$identity);

  /// Serializes this MultisigSubmitUpdateTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultisigSubmitUpdateTransaction&&(identical(other.custodian, custodian) || other.custodian == custodian)&&(identical(other.newCodeHash, newCodeHash) || other.newCodeHash == newCodeHash)&&(identical(other.newOwners, newOwners) || other.newOwners == newOwners)&&(identical(other.newReqConfirms, newReqConfirms) || other.newReqConfirms == newReqConfirms)&&(identical(other.newLifetime, newLifetime) || other.newLifetime == newLifetime)&&(identical(other.updateId, updateId) || other.updateId == updateId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,custodian,newCodeHash,newOwners,newReqConfirms,newLifetime,updateId);

@override
String toString() {
  return 'MultisigSubmitUpdateTransaction(custodian: $custodian, newCodeHash: $newCodeHash, newOwners: $newOwners, newReqConfirms: $newReqConfirms, newLifetime: $newLifetime, updateId: $updateId)';
}


}

/// @nodoc
abstract mixin class $MultisigSubmitUpdateTransactionCopyWith<$Res>  {
  factory $MultisigSubmitUpdateTransactionCopyWith(MultisigSubmitUpdateTransaction value, $Res Function(MultisigSubmitUpdateTransaction) _then) = _$MultisigSubmitUpdateTransactionCopyWithImpl;
@useResult
$Res call({
 PublicKey custodian, String? newCodeHash, bool newOwners, bool newReqConfirms, bool newLifetime, String updateId
});


$PublicKeyCopyWith<$Res> get custodian;

}
/// @nodoc
class _$MultisigSubmitUpdateTransactionCopyWithImpl<$Res>
    implements $MultisigSubmitUpdateTransactionCopyWith<$Res> {
  _$MultisigSubmitUpdateTransactionCopyWithImpl(this._self, this._then);

  final MultisigSubmitUpdateTransaction _self;
  final $Res Function(MultisigSubmitUpdateTransaction) _then;

/// Create a copy of MultisigSubmitUpdateTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? custodian = null,Object? newCodeHash = freezed,Object? newOwners = null,Object? newReqConfirms = null,Object? newLifetime = null,Object? updateId = null,}) {
  return _then(_self.copyWith(
custodian: null == custodian ? _self.custodian : custodian // ignore: cast_nullable_to_non_nullable
as PublicKey,newCodeHash: freezed == newCodeHash ? _self.newCodeHash : newCodeHash // ignore: cast_nullable_to_non_nullable
as String?,newOwners: null == newOwners ? _self.newOwners : newOwners // ignore: cast_nullable_to_non_nullable
as bool,newReqConfirms: null == newReqConfirms ? _self.newReqConfirms : newReqConfirms // ignore: cast_nullable_to_non_nullable
as bool,newLifetime: null == newLifetime ? _self.newLifetime : newLifetime // ignore: cast_nullable_to_non_nullable
as bool,updateId: null == updateId ? _self.updateId : updateId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of MultisigSubmitUpdateTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get custodian {
  
  return $PublicKeyCopyWith<$Res>(_self.custodian, (value) {
    return _then(_self.copyWith(custodian: value));
  });
}
}


/// Adds pattern-matching-related methods to [MultisigSubmitUpdateTransaction].
extension MultisigSubmitUpdateTransactionPatterns on MultisigSubmitUpdateTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MultisigSubmitUpdateTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MultisigSubmitUpdateTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MultisigSubmitUpdateTransaction value)  $default,){
final _that = this;
switch (_that) {
case _MultisigSubmitUpdateTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MultisigSubmitUpdateTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _MultisigSubmitUpdateTransaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PublicKey custodian,  String? newCodeHash,  bool newOwners,  bool newReqConfirms,  bool newLifetime,  String updateId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MultisigSubmitUpdateTransaction() when $default != null:
return $default(_that.custodian,_that.newCodeHash,_that.newOwners,_that.newReqConfirms,_that.newLifetime,_that.updateId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PublicKey custodian,  String? newCodeHash,  bool newOwners,  bool newReqConfirms,  bool newLifetime,  String updateId)  $default,) {final _that = this;
switch (_that) {
case _MultisigSubmitUpdateTransaction():
return $default(_that.custodian,_that.newCodeHash,_that.newOwners,_that.newReqConfirms,_that.newLifetime,_that.updateId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PublicKey custodian,  String? newCodeHash,  bool newOwners,  bool newReqConfirms,  bool newLifetime,  String updateId)?  $default,) {final _that = this;
switch (_that) {
case _MultisigSubmitUpdateTransaction() when $default != null:
return $default(_that.custodian,_that.newCodeHash,_that.newOwners,_that.newReqConfirms,_that.newLifetime,_that.updateId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MultisigSubmitUpdateTransaction implements MultisigSubmitUpdateTransaction {
   _MultisigSubmitUpdateTransaction({required this.custodian, required this.newCodeHash, required this.newOwners, required this.newReqConfirms, required this.newLifetime, required this.updateId});
  factory _MultisigSubmitUpdateTransaction.fromJson(Map<String, dynamic> json) => _$MultisigSubmitUpdateTransactionFromJson(json);

@override final  PublicKey custodian;
@override final  String? newCodeHash;
@override final  bool newOwners;
@override final  bool newReqConfirms;
@override final  bool newLifetime;
@override final  String updateId;

/// Create a copy of MultisigSubmitUpdateTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MultisigSubmitUpdateTransactionCopyWith<_MultisigSubmitUpdateTransaction> get copyWith => __$MultisigSubmitUpdateTransactionCopyWithImpl<_MultisigSubmitUpdateTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultisigSubmitUpdateTransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MultisigSubmitUpdateTransaction&&(identical(other.custodian, custodian) || other.custodian == custodian)&&(identical(other.newCodeHash, newCodeHash) || other.newCodeHash == newCodeHash)&&(identical(other.newOwners, newOwners) || other.newOwners == newOwners)&&(identical(other.newReqConfirms, newReqConfirms) || other.newReqConfirms == newReqConfirms)&&(identical(other.newLifetime, newLifetime) || other.newLifetime == newLifetime)&&(identical(other.updateId, updateId) || other.updateId == updateId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,custodian,newCodeHash,newOwners,newReqConfirms,newLifetime,updateId);

@override
String toString() {
  return 'MultisigSubmitUpdateTransaction(custodian: $custodian, newCodeHash: $newCodeHash, newOwners: $newOwners, newReqConfirms: $newReqConfirms, newLifetime: $newLifetime, updateId: $updateId)';
}


}

/// @nodoc
abstract mixin class _$MultisigSubmitUpdateTransactionCopyWith<$Res> implements $MultisigSubmitUpdateTransactionCopyWith<$Res> {
  factory _$MultisigSubmitUpdateTransactionCopyWith(_MultisigSubmitUpdateTransaction value, $Res Function(_MultisigSubmitUpdateTransaction) _then) = __$MultisigSubmitUpdateTransactionCopyWithImpl;
@override @useResult
$Res call({
 PublicKey custodian, String? newCodeHash, bool newOwners, bool newReqConfirms, bool newLifetime, String updateId
});


@override $PublicKeyCopyWith<$Res> get custodian;

}
/// @nodoc
class __$MultisigSubmitUpdateTransactionCopyWithImpl<$Res>
    implements _$MultisigSubmitUpdateTransactionCopyWith<$Res> {
  __$MultisigSubmitUpdateTransactionCopyWithImpl(this._self, this._then);

  final _MultisigSubmitUpdateTransaction _self;
  final $Res Function(_MultisigSubmitUpdateTransaction) _then;

/// Create a copy of MultisigSubmitUpdateTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? custodian = null,Object? newCodeHash = freezed,Object? newOwners = null,Object? newReqConfirms = null,Object? newLifetime = null,Object? updateId = null,}) {
  return _then(_MultisigSubmitUpdateTransaction(
custodian: null == custodian ? _self.custodian : custodian // ignore: cast_nullable_to_non_nullable
as PublicKey,newCodeHash: freezed == newCodeHash ? _self.newCodeHash : newCodeHash // ignore: cast_nullable_to_non_nullable
as String?,newOwners: null == newOwners ? _self.newOwners : newOwners // ignore: cast_nullable_to_non_nullable
as bool,newReqConfirms: null == newReqConfirms ? _self.newReqConfirms : newReqConfirms // ignore: cast_nullable_to_non_nullable
as bool,newLifetime: null == newLifetime ? _self.newLifetime : newLifetime // ignore: cast_nullable_to_non_nullable
as bool,updateId: null == updateId ? _self.updateId : updateId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of MultisigSubmitUpdateTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get custodian {
  
  return $PublicKeyCopyWith<$Res>(_self.custodian, (value) {
    return _then(_self.copyWith(custodian: value));
  });
}
}

// dart format on
