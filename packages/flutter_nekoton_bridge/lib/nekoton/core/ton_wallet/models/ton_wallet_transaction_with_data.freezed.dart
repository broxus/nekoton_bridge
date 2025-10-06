// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ton_wallet_transaction_with_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TonWalletTransactionWithData {

 Transaction get transaction; TransactionAdditionalInfo? get data;
/// Create a copy of TonWalletTransactionWithData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TonWalletTransactionWithDataCopyWith<TonWalletTransactionWithData> get copyWith => _$TonWalletTransactionWithDataCopyWithImpl<TonWalletTransactionWithData>(this as TonWalletTransactionWithData, _$identity);

  /// Serializes this TonWalletTransactionWithData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TonWalletTransactionWithData&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction,data);

@override
String toString() {
  return 'TonWalletTransactionWithData(transaction: $transaction, data: $data)';
}


}

/// @nodoc
abstract mixin class $TonWalletTransactionWithDataCopyWith<$Res>  {
  factory $TonWalletTransactionWithDataCopyWith(TonWalletTransactionWithData value, $Res Function(TonWalletTransactionWithData) _then) = _$TonWalletTransactionWithDataCopyWithImpl;
@useResult
$Res call({
 Transaction transaction, TransactionAdditionalInfo? data
});


$TransactionCopyWith<$Res> get transaction;$TransactionAdditionalInfoCopyWith<$Res>? get data;

}
/// @nodoc
class _$TonWalletTransactionWithDataCopyWithImpl<$Res>
    implements $TonWalletTransactionWithDataCopyWith<$Res> {
  _$TonWalletTransactionWithDataCopyWithImpl(this._self, this._then);

  final TonWalletTransactionWithData _self;
  final $Res Function(TonWalletTransactionWithData) _then;

/// Create a copy of TonWalletTransactionWithData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transaction = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TransactionAdditionalInfo?,
  ));
}
/// Create a copy of TonWalletTransactionWithData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res> get transaction {
  
  return $TransactionCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}/// Create a copy of TonWalletTransactionWithData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionAdditionalInfoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $TransactionAdditionalInfoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [TonWalletTransactionWithData].
extension TonWalletTransactionWithDataPatterns on TonWalletTransactionWithData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TonWalletTransactionWithData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TonWalletTransactionWithData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TonWalletTransactionWithData value)  $default,){
final _that = this;
switch (_that) {
case _TonWalletTransactionWithData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TonWalletTransactionWithData value)?  $default,){
final _that = this;
switch (_that) {
case _TonWalletTransactionWithData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Transaction transaction,  TransactionAdditionalInfo? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TonWalletTransactionWithData() when $default != null:
return $default(_that.transaction,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Transaction transaction,  TransactionAdditionalInfo? data)  $default,) {final _that = this;
switch (_that) {
case _TonWalletTransactionWithData():
return $default(_that.transaction,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Transaction transaction,  TransactionAdditionalInfo? data)?  $default,) {final _that = this;
switch (_that) {
case _TonWalletTransactionWithData() when $default != null:
return $default(_that.transaction,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TonWalletTransactionWithData extends TonWalletTransactionWithData {
  const _TonWalletTransactionWithData({required this.transaction, this.data}): super._();
  factory _TonWalletTransactionWithData.fromJson(Map<String, dynamic> json) => _$TonWalletTransactionWithDataFromJson(json);

@override final  Transaction transaction;
@override final  TransactionAdditionalInfo? data;

/// Create a copy of TonWalletTransactionWithData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TonWalletTransactionWithDataCopyWith<_TonWalletTransactionWithData> get copyWith => __$TonWalletTransactionWithDataCopyWithImpl<_TonWalletTransactionWithData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TonWalletTransactionWithDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TonWalletTransactionWithData&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction,data);

@override
String toString() {
  return 'TonWalletTransactionWithData(transaction: $transaction, data: $data)';
}


}

/// @nodoc
abstract mixin class _$TonWalletTransactionWithDataCopyWith<$Res> implements $TonWalletTransactionWithDataCopyWith<$Res> {
  factory _$TonWalletTransactionWithDataCopyWith(_TonWalletTransactionWithData value, $Res Function(_TonWalletTransactionWithData) _then) = __$TonWalletTransactionWithDataCopyWithImpl;
@override @useResult
$Res call({
 Transaction transaction, TransactionAdditionalInfo? data
});


@override $TransactionCopyWith<$Res> get transaction;@override $TransactionAdditionalInfoCopyWith<$Res>? get data;

}
/// @nodoc
class __$TonWalletTransactionWithDataCopyWithImpl<$Res>
    implements _$TonWalletTransactionWithDataCopyWith<$Res> {
  __$TonWalletTransactionWithDataCopyWithImpl(this._self, this._then);

  final _TonWalletTransactionWithData _self;
  final $Res Function(_TonWalletTransactionWithData) _then;

/// Create a copy of TonWalletTransactionWithData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transaction = null,Object? data = freezed,}) {
  return _then(_TonWalletTransactionWithData(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TransactionAdditionalInfo?,
  ));
}

/// Create a copy of TonWalletTransactionWithData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res> get transaction {
  
  return $TransactionCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}/// Create a copy of TonWalletTransactionWithData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionAdditionalInfoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $TransactionAdditionalInfoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
