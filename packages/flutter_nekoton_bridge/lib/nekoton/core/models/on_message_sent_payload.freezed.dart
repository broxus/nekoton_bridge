// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_message_sent_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnMessageSentPayload {

 PendingTransaction get pendingTransaction; Transaction? get transaction;
/// Create a copy of OnMessageSentPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnMessageSentPayloadCopyWith<OnMessageSentPayload> get copyWith => _$OnMessageSentPayloadCopyWithImpl<OnMessageSentPayload>(this as OnMessageSentPayload, _$identity);

  /// Serializes this OnMessageSentPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnMessageSentPayload&&(identical(other.pendingTransaction, pendingTransaction) || other.pendingTransaction == pendingTransaction)&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pendingTransaction,transaction);

@override
String toString() {
  return 'OnMessageSentPayload(pendingTransaction: $pendingTransaction, transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class $OnMessageSentPayloadCopyWith<$Res>  {
  factory $OnMessageSentPayloadCopyWith(OnMessageSentPayload value, $Res Function(OnMessageSentPayload) _then) = _$OnMessageSentPayloadCopyWithImpl;
@useResult
$Res call({
 PendingTransaction pendingTransaction, Transaction? transaction
});


$PendingTransactionCopyWith<$Res> get pendingTransaction;$TransactionCopyWith<$Res>? get transaction;

}
/// @nodoc
class _$OnMessageSentPayloadCopyWithImpl<$Res>
    implements $OnMessageSentPayloadCopyWith<$Res> {
  _$OnMessageSentPayloadCopyWithImpl(this._self, this._then);

  final OnMessageSentPayload _self;
  final $Res Function(OnMessageSentPayload) _then;

/// Create a copy of OnMessageSentPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pendingTransaction = null,Object? transaction = freezed,}) {
  return _then(_self.copyWith(
pendingTransaction: null == pendingTransaction ? _self.pendingTransaction : pendingTransaction // ignore: cast_nullable_to_non_nullable
as PendingTransaction,transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction?,
  ));
}
/// Create a copy of OnMessageSentPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PendingTransactionCopyWith<$Res> get pendingTransaction {
  
  return $PendingTransactionCopyWith<$Res>(_self.pendingTransaction, (value) {
    return _then(_self.copyWith(pendingTransaction: value));
  });
}/// Create a copy of OnMessageSentPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $TransactionCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// Adds pattern-matching-related methods to [OnMessageSentPayload].
extension OnMessageSentPayloadPatterns on OnMessageSentPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnMessageSentPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnMessageSentPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnMessageSentPayload value)  $default,){
final _that = this;
switch (_that) {
case _OnMessageSentPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnMessageSentPayload value)?  $default,){
final _that = this;
switch (_that) {
case _OnMessageSentPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PendingTransaction pendingTransaction,  Transaction? transaction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnMessageSentPayload() when $default != null:
return $default(_that.pendingTransaction,_that.transaction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PendingTransaction pendingTransaction,  Transaction? transaction)  $default,) {final _that = this;
switch (_that) {
case _OnMessageSentPayload():
return $default(_that.pendingTransaction,_that.transaction);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PendingTransaction pendingTransaction,  Transaction? transaction)?  $default,) {final _that = this;
switch (_that) {
case _OnMessageSentPayload() when $default != null:
return $default(_that.pendingTransaction,_that.transaction);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _OnMessageSentPayload implements OnMessageSentPayload {
  const _OnMessageSentPayload({required this.pendingTransaction, this.transaction});
  factory _OnMessageSentPayload.fromJson(Map<String, dynamic> json) => _$OnMessageSentPayloadFromJson(json);

@override final  PendingTransaction pendingTransaction;
@override final  Transaction? transaction;

/// Create a copy of OnMessageSentPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnMessageSentPayloadCopyWith<_OnMessageSentPayload> get copyWith => __$OnMessageSentPayloadCopyWithImpl<_OnMessageSentPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnMessageSentPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnMessageSentPayload&&(identical(other.pendingTransaction, pendingTransaction) || other.pendingTransaction == pendingTransaction)&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pendingTransaction,transaction);

@override
String toString() {
  return 'OnMessageSentPayload(pendingTransaction: $pendingTransaction, transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class _$OnMessageSentPayloadCopyWith<$Res> implements $OnMessageSentPayloadCopyWith<$Res> {
  factory _$OnMessageSentPayloadCopyWith(_OnMessageSentPayload value, $Res Function(_OnMessageSentPayload) _then) = __$OnMessageSentPayloadCopyWithImpl;
@override @useResult
$Res call({
 PendingTransaction pendingTransaction, Transaction? transaction
});


@override $PendingTransactionCopyWith<$Res> get pendingTransaction;@override $TransactionCopyWith<$Res>? get transaction;

}
/// @nodoc
class __$OnMessageSentPayloadCopyWithImpl<$Res>
    implements _$OnMessageSentPayloadCopyWith<$Res> {
  __$OnMessageSentPayloadCopyWithImpl(this._self, this._then);

  final _OnMessageSentPayload _self;
  final $Res Function(_OnMessageSentPayload) _then;

/// Create a copy of OnMessageSentPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pendingTransaction = null,Object? transaction = freezed,}) {
  return _then(_OnMessageSentPayload(
pendingTransaction: null == pendingTransaction ? _self.pendingTransaction : pendingTransaction // ignore: cast_nullable_to_non_nullable
as PendingTransaction,transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction?,
  ));
}

/// Create a copy of OnMessageSentPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PendingTransactionCopyWith<$Res> get pendingTransaction {
  
  return $PendingTransactionCopyWith<$Res>(_self.pendingTransaction, (value) {
    return _then(_self.copyWith(pendingTransaction: value));
  });
}/// Create a copy of OnMessageSentPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $TransactionCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}

// dart format on
