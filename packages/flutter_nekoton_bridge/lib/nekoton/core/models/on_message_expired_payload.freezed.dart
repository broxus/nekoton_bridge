// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_message_expired_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnMessageExpiredPayload {

 PendingTransaction get pendingTransaction;
/// Create a copy of OnMessageExpiredPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnMessageExpiredPayloadCopyWith<OnMessageExpiredPayload> get copyWith => _$OnMessageExpiredPayloadCopyWithImpl<OnMessageExpiredPayload>(this as OnMessageExpiredPayload, _$identity);

  /// Serializes this OnMessageExpiredPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnMessageExpiredPayload&&(identical(other.pendingTransaction, pendingTransaction) || other.pendingTransaction == pendingTransaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pendingTransaction);

@override
String toString() {
  return 'OnMessageExpiredPayload(pendingTransaction: $pendingTransaction)';
}


}

/// @nodoc
abstract mixin class $OnMessageExpiredPayloadCopyWith<$Res>  {
  factory $OnMessageExpiredPayloadCopyWith(OnMessageExpiredPayload value, $Res Function(OnMessageExpiredPayload) _then) = _$OnMessageExpiredPayloadCopyWithImpl;
@useResult
$Res call({
 PendingTransaction pendingTransaction
});


$PendingTransactionCopyWith<$Res> get pendingTransaction;

}
/// @nodoc
class _$OnMessageExpiredPayloadCopyWithImpl<$Res>
    implements $OnMessageExpiredPayloadCopyWith<$Res> {
  _$OnMessageExpiredPayloadCopyWithImpl(this._self, this._then);

  final OnMessageExpiredPayload _self;
  final $Res Function(OnMessageExpiredPayload) _then;

/// Create a copy of OnMessageExpiredPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pendingTransaction = null,}) {
  return _then(_self.copyWith(
pendingTransaction: null == pendingTransaction ? _self.pendingTransaction : pendingTransaction // ignore: cast_nullable_to_non_nullable
as PendingTransaction,
  ));
}
/// Create a copy of OnMessageExpiredPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PendingTransactionCopyWith<$Res> get pendingTransaction {
  
  return $PendingTransactionCopyWith<$Res>(_self.pendingTransaction, (value) {
    return _then(_self.copyWith(pendingTransaction: value));
  });
}
}


/// Adds pattern-matching-related methods to [OnMessageExpiredPayload].
extension OnMessageExpiredPayloadPatterns on OnMessageExpiredPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnMessageExpiredPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnMessageExpiredPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnMessageExpiredPayload value)  $default,){
final _that = this;
switch (_that) {
case _OnMessageExpiredPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnMessageExpiredPayload value)?  $default,){
final _that = this;
switch (_that) {
case _OnMessageExpiredPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PendingTransaction pendingTransaction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnMessageExpiredPayload() when $default != null:
return $default(_that.pendingTransaction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PendingTransaction pendingTransaction)  $default,) {final _that = this;
switch (_that) {
case _OnMessageExpiredPayload():
return $default(_that.pendingTransaction);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PendingTransaction pendingTransaction)?  $default,) {final _that = this;
switch (_that) {
case _OnMessageExpiredPayload() when $default != null:
return $default(_that.pendingTransaction);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _OnMessageExpiredPayload implements OnMessageExpiredPayload {
  const _OnMessageExpiredPayload({required this.pendingTransaction});
  factory _OnMessageExpiredPayload.fromJson(Map<String, dynamic> json) => _$OnMessageExpiredPayloadFromJson(json);

@override final  PendingTransaction pendingTransaction;

/// Create a copy of OnMessageExpiredPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnMessageExpiredPayloadCopyWith<_OnMessageExpiredPayload> get copyWith => __$OnMessageExpiredPayloadCopyWithImpl<_OnMessageExpiredPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnMessageExpiredPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnMessageExpiredPayload&&(identical(other.pendingTransaction, pendingTransaction) || other.pendingTransaction == pendingTransaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pendingTransaction);

@override
String toString() {
  return 'OnMessageExpiredPayload(pendingTransaction: $pendingTransaction)';
}


}

/// @nodoc
abstract mixin class _$OnMessageExpiredPayloadCopyWith<$Res> implements $OnMessageExpiredPayloadCopyWith<$Res> {
  factory _$OnMessageExpiredPayloadCopyWith(_OnMessageExpiredPayload value, $Res Function(_OnMessageExpiredPayload) _then) = __$OnMessageExpiredPayloadCopyWithImpl;
@override @useResult
$Res call({
 PendingTransaction pendingTransaction
});


@override $PendingTransactionCopyWith<$Res> get pendingTransaction;

}
/// @nodoc
class __$OnMessageExpiredPayloadCopyWithImpl<$Res>
    implements _$OnMessageExpiredPayloadCopyWith<$Res> {
  __$OnMessageExpiredPayloadCopyWithImpl(this._self, this._then);

  final _OnMessageExpiredPayload _self;
  final $Res Function(_OnMessageExpiredPayload) _then;

/// Create a copy of OnMessageExpiredPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pendingTransaction = null,}) {
  return _then(_OnMessageExpiredPayload(
pendingTransaction: null == pendingTransaction ? _self.pendingTransaction : pendingTransaction // ignore: cast_nullable_to_non_nullable
as PendingTransaction,
  ));
}

/// Create a copy of OnMessageExpiredPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PendingTransactionCopyWith<$Res> get pendingTransaction {
  
  return $PendingTransactionCopyWith<$Res>(_self.pendingTransaction, (value) {
    return _then(_self.copyWith(pendingTransaction: value));
  });
}
}

// dart format on
