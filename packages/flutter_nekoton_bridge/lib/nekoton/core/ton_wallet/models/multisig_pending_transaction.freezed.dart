// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multisig_pending_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MultisigPendingTransaction {

 String get id; List<PublicKey> get confirmations; int get signsRequired; int get signsReceived; PublicKey get creator; int get index; Address get dest;@amountJsonConverter BigInt get value; int get sendFlags; String get payload; bool get bounce;
/// Create a copy of MultisigPendingTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultisigPendingTransactionCopyWith<MultisigPendingTransaction> get copyWith => _$MultisigPendingTransactionCopyWithImpl<MultisigPendingTransaction>(this as MultisigPendingTransaction, _$identity);

  /// Serializes this MultisigPendingTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultisigPendingTransaction&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.confirmations, confirmations)&&(identical(other.signsRequired, signsRequired) || other.signsRequired == signsRequired)&&(identical(other.signsReceived, signsReceived) || other.signsReceived == signsReceived)&&(identical(other.creator, creator) || other.creator == creator)&&(identical(other.index, index) || other.index == index)&&(identical(other.dest, dest) || other.dest == dest)&&(identical(other.value, value) || other.value == value)&&(identical(other.sendFlags, sendFlags) || other.sendFlags == sendFlags)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.bounce, bounce) || other.bounce == bounce));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(confirmations),signsRequired,signsReceived,creator,index,dest,value,sendFlags,payload,bounce);

@override
String toString() {
  return 'MultisigPendingTransaction(id: $id, confirmations: $confirmations, signsRequired: $signsRequired, signsReceived: $signsReceived, creator: $creator, index: $index, dest: $dest, value: $value, sendFlags: $sendFlags, payload: $payload, bounce: $bounce)';
}


}

/// @nodoc
abstract mixin class $MultisigPendingTransactionCopyWith<$Res>  {
  factory $MultisigPendingTransactionCopyWith(MultisigPendingTransaction value, $Res Function(MultisigPendingTransaction) _then) = _$MultisigPendingTransactionCopyWithImpl;
@useResult
$Res call({
 String id, List<PublicKey> confirmations, int signsRequired, int signsReceived, PublicKey creator, int index, Address dest,@amountJsonConverter BigInt value, int sendFlags, String payload, bool bounce
});


$PublicKeyCopyWith<$Res> get creator;$AddressCopyWith<$Res> get dest;

}
/// @nodoc
class _$MultisigPendingTransactionCopyWithImpl<$Res>
    implements $MultisigPendingTransactionCopyWith<$Res> {
  _$MultisigPendingTransactionCopyWithImpl(this._self, this._then);

  final MultisigPendingTransaction _self;
  final $Res Function(MultisigPendingTransaction) _then;

/// Create a copy of MultisigPendingTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? confirmations = null,Object? signsRequired = null,Object? signsReceived = null,Object? creator = null,Object? index = null,Object? dest = null,Object? value = null,Object? sendFlags = null,Object? payload = null,Object? bounce = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,confirmations: null == confirmations ? _self.confirmations : confirmations // ignore: cast_nullable_to_non_nullable
as List<PublicKey>,signsRequired: null == signsRequired ? _self.signsRequired : signsRequired // ignore: cast_nullable_to_non_nullable
as int,signsReceived: null == signsReceived ? _self.signsReceived : signsReceived // ignore: cast_nullable_to_non_nullable
as int,creator: null == creator ? _self.creator : creator // ignore: cast_nullable_to_non_nullable
as PublicKey,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,dest: null == dest ? _self.dest : dest // ignore: cast_nullable_to_non_nullable
as Address,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as BigInt,sendFlags: null == sendFlags ? _self.sendFlags : sendFlags // ignore: cast_nullable_to_non_nullable
as int,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,bounce: null == bounce ? _self.bounce : bounce // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of MultisigPendingTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get creator {
  
  return $PublicKeyCopyWith<$Res>(_self.creator, (value) {
    return _then(_self.copyWith(creator: value));
  });
}/// Create a copy of MultisigPendingTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get dest {
  
  return $AddressCopyWith<$Res>(_self.dest, (value) {
    return _then(_self.copyWith(dest: value));
  });
}
}


/// Adds pattern-matching-related methods to [MultisigPendingTransaction].
extension MultisigPendingTransactionPatterns on MultisigPendingTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MultisigPendingTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MultisigPendingTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MultisigPendingTransaction value)  $default,){
final _that = this;
switch (_that) {
case _MultisigPendingTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MultisigPendingTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _MultisigPendingTransaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<PublicKey> confirmations,  int signsRequired,  int signsReceived,  PublicKey creator,  int index,  Address dest, @amountJsonConverter  BigInt value,  int sendFlags,  String payload,  bool bounce)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MultisigPendingTransaction() when $default != null:
return $default(_that.id,_that.confirmations,_that.signsRequired,_that.signsReceived,_that.creator,_that.index,_that.dest,_that.value,_that.sendFlags,_that.payload,_that.bounce);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<PublicKey> confirmations,  int signsRequired,  int signsReceived,  PublicKey creator,  int index,  Address dest, @amountJsonConverter  BigInt value,  int sendFlags,  String payload,  bool bounce)  $default,) {final _that = this;
switch (_that) {
case _MultisigPendingTransaction():
return $default(_that.id,_that.confirmations,_that.signsRequired,_that.signsReceived,_that.creator,_that.index,_that.dest,_that.value,_that.sendFlags,_that.payload,_that.bounce);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<PublicKey> confirmations,  int signsRequired,  int signsReceived,  PublicKey creator,  int index,  Address dest, @amountJsonConverter  BigInt value,  int sendFlags,  String payload,  bool bounce)?  $default,) {final _that = this;
switch (_that) {
case _MultisigPendingTransaction() when $default != null:
return $default(_that.id,_that.confirmations,_that.signsRequired,_that.signsReceived,_that.creator,_that.index,_that.dest,_that.value,_that.sendFlags,_that.payload,_that.bounce);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MultisigPendingTransaction implements MultisigPendingTransaction {
  const _MultisigPendingTransaction({required this.id, required final  List<PublicKey> confirmations, required this.signsRequired, required this.signsReceived, required this.creator, required this.index, required this.dest, @amountJsonConverter required this.value, required this.sendFlags, required this.payload, required this.bounce}): _confirmations = confirmations;
  factory _MultisigPendingTransaction.fromJson(Map<String, dynamic> json) => _$MultisigPendingTransactionFromJson(json);

@override final  String id;
 final  List<PublicKey> _confirmations;
@override List<PublicKey> get confirmations {
  if (_confirmations is EqualUnmodifiableListView) return _confirmations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_confirmations);
}

@override final  int signsRequired;
@override final  int signsReceived;
@override final  PublicKey creator;
@override final  int index;
@override final  Address dest;
@override@amountJsonConverter final  BigInt value;
@override final  int sendFlags;
@override final  String payload;
@override final  bool bounce;

/// Create a copy of MultisigPendingTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MultisigPendingTransactionCopyWith<_MultisigPendingTransaction> get copyWith => __$MultisigPendingTransactionCopyWithImpl<_MultisigPendingTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultisigPendingTransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MultisigPendingTransaction&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._confirmations, _confirmations)&&(identical(other.signsRequired, signsRequired) || other.signsRequired == signsRequired)&&(identical(other.signsReceived, signsReceived) || other.signsReceived == signsReceived)&&(identical(other.creator, creator) || other.creator == creator)&&(identical(other.index, index) || other.index == index)&&(identical(other.dest, dest) || other.dest == dest)&&(identical(other.value, value) || other.value == value)&&(identical(other.sendFlags, sendFlags) || other.sendFlags == sendFlags)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.bounce, bounce) || other.bounce == bounce));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_confirmations),signsRequired,signsReceived,creator,index,dest,value,sendFlags,payload,bounce);

@override
String toString() {
  return 'MultisigPendingTransaction(id: $id, confirmations: $confirmations, signsRequired: $signsRequired, signsReceived: $signsReceived, creator: $creator, index: $index, dest: $dest, value: $value, sendFlags: $sendFlags, payload: $payload, bounce: $bounce)';
}


}

/// @nodoc
abstract mixin class _$MultisigPendingTransactionCopyWith<$Res> implements $MultisigPendingTransactionCopyWith<$Res> {
  factory _$MultisigPendingTransactionCopyWith(_MultisigPendingTransaction value, $Res Function(_MultisigPendingTransaction) _then) = __$MultisigPendingTransactionCopyWithImpl;
@override @useResult
$Res call({
 String id, List<PublicKey> confirmations, int signsRequired, int signsReceived, PublicKey creator, int index, Address dest,@amountJsonConverter BigInt value, int sendFlags, String payload, bool bounce
});


@override $PublicKeyCopyWith<$Res> get creator;@override $AddressCopyWith<$Res> get dest;

}
/// @nodoc
class __$MultisigPendingTransactionCopyWithImpl<$Res>
    implements _$MultisigPendingTransactionCopyWith<$Res> {
  __$MultisigPendingTransactionCopyWithImpl(this._self, this._then);

  final _MultisigPendingTransaction _self;
  final $Res Function(_MultisigPendingTransaction) _then;

/// Create a copy of MultisigPendingTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? confirmations = null,Object? signsRequired = null,Object? signsReceived = null,Object? creator = null,Object? index = null,Object? dest = null,Object? value = null,Object? sendFlags = null,Object? payload = null,Object? bounce = null,}) {
  return _then(_MultisigPendingTransaction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,confirmations: null == confirmations ? _self._confirmations : confirmations // ignore: cast_nullable_to_non_nullable
as List<PublicKey>,signsRequired: null == signsRequired ? _self.signsRequired : signsRequired // ignore: cast_nullable_to_non_nullable
as int,signsReceived: null == signsReceived ? _self.signsReceived : signsReceived // ignore: cast_nullable_to_non_nullable
as int,creator: null == creator ? _self.creator : creator // ignore: cast_nullable_to_non_nullable
as PublicKey,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,dest: null == dest ? _self.dest : dest // ignore: cast_nullable_to_non_nullable
as Address,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as BigInt,sendFlags: null == sendFlags ? _self.sendFlags : sendFlags // ignore: cast_nullable_to_non_nullable
as int,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,bounce: null == bounce ? _self.bounce : bounce // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of MultisigPendingTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get creator {
  
  return $PublicKeyCopyWith<$Res>(_self.creator, (value) {
    return _then(_self.copyWith(creator: value));
  });
}/// Create a copy of MultisigPendingTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get dest {
  
  return $AddressCopyWith<$Res>(_self.dest, (value) {
    return _then(_self.copyWith(dest: value));
  });
}
}

// dart format on
