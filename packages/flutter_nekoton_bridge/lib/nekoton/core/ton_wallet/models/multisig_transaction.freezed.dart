// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multisig_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
MultisigTransaction _$MultisigTransactionFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'send':
          return MultisigTransactionSend.fromJson(
            json
          );
                case 'submit':
          return MultisigTransactionSubmit.fromJson(
            json
          );
                case 'confirm':
          return MultisigTransactionConfirm.fromJson(
            json
          );
                case 'submitUpdate':
          return MultisigTransactionSubmitUpdate.fromJson(
            json
          );
                case 'confirmUpdate':
          return MultisigTransactionConfirmUpdate.fromJson(
            json
          );
                case 'executeUpdate':
          return MultisigTransactionExecuteUpdate.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'MultisigTransaction',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$MultisigTransaction {

 Object get data;

  /// Serializes this MultisigTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultisigTransaction&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'MultisigTransaction(data: $data)';
}


}

/// @nodoc
class $MultisigTransactionCopyWith<$Res>  {
$MultisigTransactionCopyWith(MultisigTransaction _, $Res Function(MultisigTransaction) __);
}


/// Adds pattern-matching-related methods to [MultisigTransaction].
extension MultisigTransactionPatterns on MultisigTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MultisigTransactionSend value)?  send,TResult Function( MultisigTransactionSubmit value)?  submit,TResult Function( MultisigTransactionConfirm value)?  confirm,TResult Function( MultisigTransactionSubmitUpdate value)?  submitUpdate,TResult Function( MultisigTransactionConfirmUpdate value)?  confirmUpdate,TResult Function( MultisigTransactionExecuteUpdate value)?  executeUpdate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MultisigTransactionSend() when send != null:
return send(_that);case MultisigTransactionSubmit() when submit != null:
return submit(_that);case MultisigTransactionConfirm() when confirm != null:
return confirm(_that);case MultisigTransactionSubmitUpdate() when submitUpdate != null:
return submitUpdate(_that);case MultisigTransactionConfirmUpdate() when confirmUpdate != null:
return confirmUpdate(_that);case MultisigTransactionExecuteUpdate() when executeUpdate != null:
return executeUpdate(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MultisigTransactionSend value)  send,required TResult Function( MultisigTransactionSubmit value)  submit,required TResult Function( MultisigTransactionConfirm value)  confirm,required TResult Function( MultisigTransactionSubmitUpdate value)  submitUpdate,required TResult Function( MultisigTransactionConfirmUpdate value)  confirmUpdate,required TResult Function( MultisigTransactionExecuteUpdate value)  executeUpdate,}){
final _that = this;
switch (_that) {
case MultisigTransactionSend():
return send(_that);case MultisigTransactionSubmit():
return submit(_that);case MultisigTransactionConfirm():
return confirm(_that);case MultisigTransactionSubmitUpdate():
return submitUpdate(_that);case MultisigTransactionConfirmUpdate():
return confirmUpdate(_that);case MultisigTransactionExecuteUpdate():
return executeUpdate(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MultisigTransactionSend value)?  send,TResult? Function( MultisigTransactionSubmit value)?  submit,TResult? Function( MultisigTransactionConfirm value)?  confirm,TResult? Function( MultisigTransactionSubmitUpdate value)?  submitUpdate,TResult? Function( MultisigTransactionConfirmUpdate value)?  confirmUpdate,TResult? Function( MultisigTransactionExecuteUpdate value)?  executeUpdate,}){
final _that = this;
switch (_that) {
case MultisigTransactionSend() when send != null:
return send(_that);case MultisigTransactionSubmit() when submit != null:
return submit(_that);case MultisigTransactionConfirm() when confirm != null:
return confirm(_that);case MultisigTransactionSubmitUpdate() when submitUpdate != null:
return submitUpdate(_that);case MultisigTransactionConfirmUpdate() when confirmUpdate != null:
return confirmUpdate(_that);case MultisigTransactionExecuteUpdate() when executeUpdate != null:
return executeUpdate(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MultisigSendTransaction data)?  send,TResult Function( MultisigSubmitTransaction data)?  submit,TResult Function( MultisigConfirmTransaction data)?  confirm,TResult Function( MultisigSubmitUpdateTransaction data)?  submitUpdate,TResult Function( MultisigConfirmUpdateTransaction data)?  confirmUpdate,TResult Function( MultisigExecuteUpdateTransaction data)?  executeUpdate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MultisigTransactionSend() when send != null:
return send(_that.data);case MultisigTransactionSubmit() when submit != null:
return submit(_that.data);case MultisigTransactionConfirm() when confirm != null:
return confirm(_that.data);case MultisigTransactionSubmitUpdate() when submitUpdate != null:
return submitUpdate(_that.data);case MultisigTransactionConfirmUpdate() when confirmUpdate != null:
return confirmUpdate(_that.data);case MultisigTransactionExecuteUpdate() when executeUpdate != null:
return executeUpdate(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MultisigSendTransaction data)  send,required TResult Function( MultisigSubmitTransaction data)  submit,required TResult Function( MultisigConfirmTransaction data)  confirm,required TResult Function( MultisigSubmitUpdateTransaction data)  submitUpdate,required TResult Function( MultisigConfirmUpdateTransaction data)  confirmUpdate,required TResult Function( MultisigExecuteUpdateTransaction data)  executeUpdate,}) {final _that = this;
switch (_that) {
case MultisigTransactionSend():
return send(_that.data);case MultisigTransactionSubmit():
return submit(_that.data);case MultisigTransactionConfirm():
return confirm(_that.data);case MultisigTransactionSubmitUpdate():
return submitUpdate(_that.data);case MultisigTransactionConfirmUpdate():
return confirmUpdate(_that.data);case MultisigTransactionExecuteUpdate():
return executeUpdate(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MultisigSendTransaction data)?  send,TResult? Function( MultisigSubmitTransaction data)?  submit,TResult? Function( MultisigConfirmTransaction data)?  confirm,TResult? Function( MultisigSubmitUpdateTransaction data)?  submitUpdate,TResult? Function( MultisigConfirmUpdateTransaction data)?  confirmUpdate,TResult? Function( MultisigExecuteUpdateTransaction data)?  executeUpdate,}) {final _that = this;
switch (_that) {
case MultisigTransactionSend() when send != null:
return send(_that.data);case MultisigTransactionSubmit() when submit != null:
return submit(_that.data);case MultisigTransactionConfirm() when confirm != null:
return confirm(_that.data);case MultisigTransactionSubmitUpdate() when submitUpdate != null:
return submitUpdate(_that.data);case MultisigTransactionConfirmUpdate() when confirmUpdate != null:
return confirmUpdate(_that.data);case MultisigTransactionExecuteUpdate() when executeUpdate != null:
return executeUpdate(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class MultisigTransactionSend implements MultisigTransaction {
  const MultisigTransactionSend(this.data, {final  String? $type}): $type = $type ?? 'send';
  factory MultisigTransactionSend.fromJson(Map<String, dynamic> json) => _$MultisigTransactionSendFromJson(json);

@override final  MultisigSendTransaction data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultisigTransactionSendCopyWith<MultisigTransactionSend> get copyWith => _$MultisigTransactionSendCopyWithImpl<MultisigTransactionSend>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultisigTransactionSendToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultisigTransactionSend&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'MultisigTransaction.send(data: $data)';
}


}

/// @nodoc
abstract mixin class $MultisigTransactionSendCopyWith<$Res> implements $MultisigTransactionCopyWith<$Res> {
  factory $MultisigTransactionSendCopyWith(MultisigTransactionSend value, $Res Function(MultisigTransactionSend) _then) = _$MultisigTransactionSendCopyWithImpl;
@useResult
$Res call({
 MultisigSendTransaction data
});


$MultisigSendTransactionCopyWith<$Res> get data;

}
/// @nodoc
class _$MultisigTransactionSendCopyWithImpl<$Res>
    implements $MultisigTransactionSendCopyWith<$Res> {
  _$MultisigTransactionSendCopyWithImpl(this._self, this._then);

  final MultisigTransactionSend _self;
  final $Res Function(MultisigTransactionSend) _then;

/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(MultisigTransactionSend(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MultisigSendTransaction,
  ));
}

/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MultisigSendTransactionCopyWith<$Res> get data {
  
  return $MultisigSendTransactionCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class MultisigTransactionSubmit implements MultisigTransaction {
  const MultisigTransactionSubmit(this.data, {final  String? $type}): $type = $type ?? 'submit';
  factory MultisigTransactionSubmit.fromJson(Map<String, dynamic> json) => _$MultisigTransactionSubmitFromJson(json);

@override final  MultisigSubmitTransaction data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultisigTransactionSubmitCopyWith<MultisigTransactionSubmit> get copyWith => _$MultisigTransactionSubmitCopyWithImpl<MultisigTransactionSubmit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultisigTransactionSubmitToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultisigTransactionSubmit&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'MultisigTransaction.submit(data: $data)';
}


}

/// @nodoc
abstract mixin class $MultisigTransactionSubmitCopyWith<$Res> implements $MultisigTransactionCopyWith<$Res> {
  factory $MultisigTransactionSubmitCopyWith(MultisigTransactionSubmit value, $Res Function(MultisigTransactionSubmit) _then) = _$MultisigTransactionSubmitCopyWithImpl;
@useResult
$Res call({
 MultisigSubmitTransaction data
});


$MultisigSubmitTransactionCopyWith<$Res> get data;

}
/// @nodoc
class _$MultisigTransactionSubmitCopyWithImpl<$Res>
    implements $MultisigTransactionSubmitCopyWith<$Res> {
  _$MultisigTransactionSubmitCopyWithImpl(this._self, this._then);

  final MultisigTransactionSubmit _self;
  final $Res Function(MultisigTransactionSubmit) _then;

/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(MultisigTransactionSubmit(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MultisigSubmitTransaction,
  ));
}

/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MultisigSubmitTransactionCopyWith<$Res> get data {
  
  return $MultisigSubmitTransactionCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class MultisigTransactionConfirm implements MultisigTransaction {
  const MultisigTransactionConfirm(this.data, {final  String? $type}): $type = $type ?? 'confirm';
  factory MultisigTransactionConfirm.fromJson(Map<String, dynamic> json) => _$MultisigTransactionConfirmFromJson(json);

@override final  MultisigConfirmTransaction data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultisigTransactionConfirmCopyWith<MultisigTransactionConfirm> get copyWith => _$MultisigTransactionConfirmCopyWithImpl<MultisigTransactionConfirm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultisigTransactionConfirmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultisigTransactionConfirm&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'MultisigTransaction.confirm(data: $data)';
}


}

/// @nodoc
abstract mixin class $MultisigTransactionConfirmCopyWith<$Res> implements $MultisigTransactionCopyWith<$Res> {
  factory $MultisigTransactionConfirmCopyWith(MultisigTransactionConfirm value, $Res Function(MultisigTransactionConfirm) _then) = _$MultisigTransactionConfirmCopyWithImpl;
@useResult
$Res call({
 MultisigConfirmTransaction data
});


$MultisigConfirmTransactionCopyWith<$Res> get data;

}
/// @nodoc
class _$MultisigTransactionConfirmCopyWithImpl<$Res>
    implements $MultisigTransactionConfirmCopyWith<$Res> {
  _$MultisigTransactionConfirmCopyWithImpl(this._self, this._then);

  final MultisigTransactionConfirm _self;
  final $Res Function(MultisigTransactionConfirm) _then;

/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(MultisigTransactionConfirm(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MultisigConfirmTransaction,
  ));
}

/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MultisigConfirmTransactionCopyWith<$Res> get data {
  
  return $MultisigConfirmTransactionCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class MultisigTransactionSubmitUpdate implements MultisigTransaction {
  const MultisigTransactionSubmitUpdate(this.data, {final  String? $type}): $type = $type ?? 'submitUpdate';
  factory MultisigTransactionSubmitUpdate.fromJson(Map<String, dynamic> json) => _$MultisigTransactionSubmitUpdateFromJson(json);

@override final  MultisigSubmitUpdateTransaction data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultisigTransactionSubmitUpdateCopyWith<MultisigTransactionSubmitUpdate> get copyWith => _$MultisigTransactionSubmitUpdateCopyWithImpl<MultisigTransactionSubmitUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultisigTransactionSubmitUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultisigTransactionSubmitUpdate&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'MultisigTransaction.submitUpdate(data: $data)';
}


}

/// @nodoc
abstract mixin class $MultisigTransactionSubmitUpdateCopyWith<$Res> implements $MultisigTransactionCopyWith<$Res> {
  factory $MultisigTransactionSubmitUpdateCopyWith(MultisigTransactionSubmitUpdate value, $Res Function(MultisigTransactionSubmitUpdate) _then) = _$MultisigTransactionSubmitUpdateCopyWithImpl;
@useResult
$Res call({
 MultisigSubmitUpdateTransaction data
});


$MultisigSubmitUpdateTransactionCopyWith<$Res> get data;

}
/// @nodoc
class _$MultisigTransactionSubmitUpdateCopyWithImpl<$Res>
    implements $MultisigTransactionSubmitUpdateCopyWith<$Res> {
  _$MultisigTransactionSubmitUpdateCopyWithImpl(this._self, this._then);

  final MultisigTransactionSubmitUpdate _self;
  final $Res Function(MultisigTransactionSubmitUpdate) _then;

/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(MultisigTransactionSubmitUpdate(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MultisigSubmitUpdateTransaction,
  ));
}

/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MultisigSubmitUpdateTransactionCopyWith<$Res> get data {
  
  return $MultisigSubmitUpdateTransactionCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class MultisigTransactionConfirmUpdate implements MultisigTransaction {
  const MultisigTransactionConfirmUpdate(this.data, {final  String? $type}): $type = $type ?? 'confirmUpdate';
  factory MultisigTransactionConfirmUpdate.fromJson(Map<String, dynamic> json) => _$MultisigTransactionConfirmUpdateFromJson(json);

@override final  MultisigConfirmUpdateTransaction data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultisigTransactionConfirmUpdateCopyWith<MultisigTransactionConfirmUpdate> get copyWith => _$MultisigTransactionConfirmUpdateCopyWithImpl<MultisigTransactionConfirmUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultisigTransactionConfirmUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultisigTransactionConfirmUpdate&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'MultisigTransaction.confirmUpdate(data: $data)';
}


}

/// @nodoc
abstract mixin class $MultisigTransactionConfirmUpdateCopyWith<$Res> implements $MultisigTransactionCopyWith<$Res> {
  factory $MultisigTransactionConfirmUpdateCopyWith(MultisigTransactionConfirmUpdate value, $Res Function(MultisigTransactionConfirmUpdate) _then) = _$MultisigTransactionConfirmUpdateCopyWithImpl;
@useResult
$Res call({
 MultisigConfirmUpdateTransaction data
});


$MultisigConfirmUpdateTransactionCopyWith<$Res> get data;

}
/// @nodoc
class _$MultisigTransactionConfirmUpdateCopyWithImpl<$Res>
    implements $MultisigTransactionConfirmUpdateCopyWith<$Res> {
  _$MultisigTransactionConfirmUpdateCopyWithImpl(this._self, this._then);

  final MultisigTransactionConfirmUpdate _self;
  final $Res Function(MultisigTransactionConfirmUpdate) _then;

/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(MultisigTransactionConfirmUpdate(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MultisigConfirmUpdateTransaction,
  ));
}

/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MultisigConfirmUpdateTransactionCopyWith<$Res> get data {
  
  return $MultisigConfirmUpdateTransactionCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class MultisigTransactionExecuteUpdate implements MultisigTransaction {
  const MultisigTransactionExecuteUpdate(this.data, {final  String? $type}): $type = $type ?? 'executeUpdate';
  factory MultisigTransactionExecuteUpdate.fromJson(Map<String, dynamic> json) => _$MultisigTransactionExecuteUpdateFromJson(json);

@override final  MultisigExecuteUpdateTransaction data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultisigTransactionExecuteUpdateCopyWith<MultisigTransactionExecuteUpdate> get copyWith => _$MultisigTransactionExecuteUpdateCopyWithImpl<MultisigTransactionExecuteUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultisigTransactionExecuteUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultisigTransactionExecuteUpdate&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'MultisigTransaction.executeUpdate(data: $data)';
}


}

/// @nodoc
abstract mixin class $MultisigTransactionExecuteUpdateCopyWith<$Res> implements $MultisigTransactionCopyWith<$Res> {
  factory $MultisigTransactionExecuteUpdateCopyWith(MultisigTransactionExecuteUpdate value, $Res Function(MultisigTransactionExecuteUpdate) _then) = _$MultisigTransactionExecuteUpdateCopyWithImpl;
@useResult
$Res call({
 MultisigExecuteUpdateTransaction data
});


$MultisigExecuteUpdateTransactionCopyWith<$Res> get data;

}
/// @nodoc
class _$MultisigTransactionExecuteUpdateCopyWithImpl<$Res>
    implements $MultisigTransactionExecuteUpdateCopyWith<$Res> {
  _$MultisigTransactionExecuteUpdateCopyWithImpl(this._self, this._then);

  final MultisigTransactionExecuteUpdate _self;
  final $Res Function(MultisigTransactionExecuteUpdate) _then;

/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(MultisigTransactionExecuteUpdate(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MultisigExecuteUpdateTransaction,
  ));
}

/// Create a copy of MultisigTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MultisigExecuteUpdateTransactionCopyWith<$Res> get data {
  
  return $MultisigExecuteUpdateTransactionCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
