// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multisig_execute_update_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MultisigExecuteUpdateTransaction {

 PublicKey get custodian; String get updateId;
/// Create a copy of MultisigExecuteUpdateTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultisigExecuteUpdateTransactionCopyWith<MultisigExecuteUpdateTransaction> get copyWith => _$MultisigExecuteUpdateTransactionCopyWithImpl<MultisigExecuteUpdateTransaction>(this as MultisigExecuteUpdateTransaction, _$identity);

  /// Serializes this MultisigExecuteUpdateTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultisigExecuteUpdateTransaction&&(identical(other.custodian, custodian) || other.custodian == custodian)&&(identical(other.updateId, updateId) || other.updateId == updateId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,custodian,updateId);

@override
String toString() {
  return 'MultisigExecuteUpdateTransaction(custodian: $custodian, updateId: $updateId)';
}


}

/// @nodoc
abstract mixin class $MultisigExecuteUpdateTransactionCopyWith<$Res>  {
  factory $MultisigExecuteUpdateTransactionCopyWith(MultisigExecuteUpdateTransaction value, $Res Function(MultisigExecuteUpdateTransaction) _then) = _$MultisigExecuteUpdateTransactionCopyWithImpl;
@useResult
$Res call({
 PublicKey custodian, String updateId
});


$PublicKeyCopyWith<$Res> get custodian;

}
/// @nodoc
class _$MultisigExecuteUpdateTransactionCopyWithImpl<$Res>
    implements $MultisigExecuteUpdateTransactionCopyWith<$Res> {
  _$MultisigExecuteUpdateTransactionCopyWithImpl(this._self, this._then);

  final MultisigExecuteUpdateTransaction _self;
  final $Res Function(MultisigExecuteUpdateTransaction) _then;

/// Create a copy of MultisigExecuteUpdateTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? custodian = null,Object? updateId = null,}) {
  return _then(_self.copyWith(
custodian: null == custodian ? _self.custodian : custodian // ignore: cast_nullable_to_non_nullable
as PublicKey,updateId: null == updateId ? _self.updateId : updateId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of MultisigExecuteUpdateTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get custodian {
  
  return $PublicKeyCopyWith<$Res>(_self.custodian, (value) {
    return _then(_self.copyWith(custodian: value));
  });
}
}


/// Adds pattern-matching-related methods to [MultisigExecuteUpdateTransaction].
extension MultisigExecuteUpdateTransactionPatterns on MultisigExecuteUpdateTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MultisigExecuteUpdateTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MultisigExecuteUpdateTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MultisigExecuteUpdateTransaction value)  $default,){
final _that = this;
switch (_that) {
case _MultisigExecuteUpdateTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MultisigExecuteUpdateTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _MultisigExecuteUpdateTransaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PublicKey custodian,  String updateId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MultisigExecuteUpdateTransaction() when $default != null:
return $default(_that.custodian,_that.updateId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PublicKey custodian,  String updateId)  $default,) {final _that = this;
switch (_that) {
case _MultisigExecuteUpdateTransaction():
return $default(_that.custodian,_that.updateId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PublicKey custodian,  String updateId)?  $default,) {final _that = this;
switch (_that) {
case _MultisigExecuteUpdateTransaction() when $default != null:
return $default(_that.custodian,_that.updateId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MultisigExecuteUpdateTransaction implements MultisigExecuteUpdateTransaction {
   _MultisigExecuteUpdateTransaction({required this.custodian, required this.updateId});
  factory _MultisigExecuteUpdateTransaction.fromJson(Map<String, dynamic> json) => _$MultisigExecuteUpdateTransactionFromJson(json);

@override final  PublicKey custodian;
@override final  String updateId;

/// Create a copy of MultisigExecuteUpdateTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MultisigExecuteUpdateTransactionCopyWith<_MultisigExecuteUpdateTransaction> get copyWith => __$MultisigExecuteUpdateTransactionCopyWithImpl<_MultisigExecuteUpdateTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultisigExecuteUpdateTransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MultisigExecuteUpdateTransaction&&(identical(other.custodian, custodian) || other.custodian == custodian)&&(identical(other.updateId, updateId) || other.updateId == updateId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,custodian,updateId);

@override
String toString() {
  return 'MultisigExecuteUpdateTransaction(custodian: $custodian, updateId: $updateId)';
}


}

/// @nodoc
abstract mixin class _$MultisigExecuteUpdateTransactionCopyWith<$Res> implements $MultisigExecuteUpdateTransactionCopyWith<$Res> {
  factory _$MultisigExecuteUpdateTransactionCopyWith(_MultisigExecuteUpdateTransaction value, $Res Function(_MultisigExecuteUpdateTransaction) _then) = __$MultisigExecuteUpdateTransactionCopyWithImpl;
@override @useResult
$Res call({
 PublicKey custodian, String updateId
});


@override $PublicKeyCopyWith<$Res> get custodian;

}
/// @nodoc
class __$MultisigExecuteUpdateTransactionCopyWithImpl<$Res>
    implements _$MultisigExecuteUpdateTransactionCopyWith<$Res> {
  __$MultisigExecuteUpdateTransactionCopyWithImpl(this._self, this._then);

  final _MultisigExecuteUpdateTransaction _self;
  final $Res Function(_MultisigExecuteUpdateTransaction) _then;

/// Create a copy of MultisigExecuteUpdateTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? custodian = null,Object? updateId = null,}) {
  return _then(_MultisigExecuteUpdateTransaction(
custodian: null == custodian ? _self.custodian : custodian // ignore: cast_nullable_to_non_nullable
as PublicKey,updateId: null == updateId ? _self.updateId : updateId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of MultisigExecuteUpdateTransaction
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
