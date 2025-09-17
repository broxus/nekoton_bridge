// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_sign_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LedgerSignInput {

 WalletType get wallet; PublicKey get publicKey; LedgerSignatureContext? get context;
/// Create a copy of LedgerSignInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedgerSignInputCopyWith<LedgerSignInput> get copyWith => _$LedgerSignInputCopyWithImpl<LedgerSignInput>(this as LedgerSignInput, _$identity);

  /// Serializes this LedgerSignInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LedgerSignInput&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.context, context) || other.context == context));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wallet,publicKey,context);

@override
String toString() {
  return 'LedgerSignInput(wallet: $wallet, publicKey: $publicKey, context: $context)';
}


}

/// @nodoc
abstract mixin class $LedgerSignInputCopyWith<$Res>  {
  factory $LedgerSignInputCopyWith(LedgerSignInput value, $Res Function(LedgerSignInput) _then) = _$LedgerSignInputCopyWithImpl;
@useResult
$Res call({
 WalletType wallet, PublicKey publicKey, LedgerSignatureContext? context
});


$WalletTypeCopyWith<$Res> get wallet;$PublicKeyCopyWith<$Res> get publicKey;$LedgerSignatureContextCopyWith<$Res>? get context;

}
/// @nodoc
class _$LedgerSignInputCopyWithImpl<$Res>
    implements $LedgerSignInputCopyWith<$Res> {
  _$LedgerSignInputCopyWithImpl(this._self, this._then);

  final LedgerSignInput _self;
  final $Res Function(LedgerSignInput) _then;

/// Create a copy of LedgerSignInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wallet = null,Object? publicKey = null,Object? context = freezed,}) {
  return _then(_self.copyWith(
wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as WalletType,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as PublicKey,context: freezed == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as LedgerSignatureContext?,
  ));
}
/// Create a copy of LedgerSignInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletTypeCopyWith<$Res> get wallet {
  
  return $WalletTypeCopyWith<$Res>(_self.wallet, (value) {
    return _then(_self.copyWith(wallet: value));
  });
}/// Create a copy of LedgerSignInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get publicKey {
  
  return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
    return _then(_self.copyWith(publicKey: value));
  });
}/// Create a copy of LedgerSignInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSignatureContextCopyWith<$Res>? get context {
    if (_self.context == null) {
    return null;
  }

  return $LedgerSignatureContextCopyWith<$Res>(_self.context!, (value) {
    return _then(_self.copyWith(context: value));
  });
}
}


/// Adds pattern-matching-related methods to [LedgerSignInput].
extension LedgerSignInputPatterns on LedgerSignInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LedgerSignInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LedgerSignInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LedgerSignInput value)  $default,){
final _that = this;
switch (_that) {
case _LedgerSignInput():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LedgerSignInput value)?  $default,){
final _that = this;
switch (_that) {
case _LedgerSignInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WalletType wallet,  PublicKey publicKey,  LedgerSignatureContext? context)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LedgerSignInput() when $default != null:
return $default(_that.wallet,_that.publicKey,_that.context);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WalletType wallet,  PublicKey publicKey,  LedgerSignatureContext? context)  $default,) {final _that = this;
switch (_that) {
case _LedgerSignInput():
return $default(_that.wallet,_that.publicKey,_that.context);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WalletType wallet,  PublicKey publicKey,  LedgerSignatureContext? context)?  $default,) {final _that = this;
switch (_that) {
case _LedgerSignInput() when $default != null:
return $default(_that.wallet,_that.publicKey,_that.context);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LedgerSignInput implements LedgerSignInput {
  const _LedgerSignInput({required this.wallet, required this.publicKey, this.context});
  factory _LedgerSignInput.fromJson(Map<String, dynamic> json) => _$LedgerSignInputFromJson(json);

@override final  WalletType wallet;
@override final  PublicKey publicKey;
@override final  LedgerSignatureContext? context;

/// Create a copy of LedgerSignInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LedgerSignInputCopyWith<_LedgerSignInput> get copyWith => __$LedgerSignInputCopyWithImpl<_LedgerSignInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LedgerSignInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LedgerSignInput&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.context, context) || other.context == context));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wallet,publicKey,context);

@override
String toString() {
  return 'LedgerSignInput(wallet: $wallet, publicKey: $publicKey, context: $context)';
}


}

/// @nodoc
abstract mixin class _$LedgerSignInputCopyWith<$Res> implements $LedgerSignInputCopyWith<$Res> {
  factory _$LedgerSignInputCopyWith(_LedgerSignInput value, $Res Function(_LedgerSignInput) _then) = __$LedgerSignInputCopyWithImpl;
@override @useResult
$Res call({
 WalletType wallet, PublicKey publicKey, LedgerSignatureContext? context
});


@override $WalletTypeCopyWith<$Res> get wallet;@override $PublicKeyCopyWith<$Res> get publicKey;@override $LedgerSignatureContextCopyWith<$Res>? get context;

}
/// @nodoc
class __$LedgerSignInputCopyWithImpl<$Res>
    implements _$LedgerSignInputCopyWith<$Res> {
  __$LedgerSignInputCopyWithImpl(this._self, this._then);

  final _LedgerSignInput _self;
  final $Res Function(_LedgerSignInput) _then;

/// Create a copy of LedgerSignInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wallet = null,Object? publicKey = null,Object? context = freezed,}) {
  return _then(_LedgerSignInput(
wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as WalletType,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as PublicKey,context: freezed == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as LedgerSignatureContext?,
  ));
}

/// Create a copy of LedgerSignInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletTypeCopyWith<$Res> get wallet {
  
  return $WalletTypeCopyWith<$Res>(_self.wallet, (value) {
    return _then(_self.copyWith(wallet: value));
  });
}/// Create a copy of LedgerSignInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PublicKeyCopyWith<$Res> get publicKey {
  
  return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
    return _then(_self.copyWith(publicKey: value));
  });
}/// Create a copy of LedgerSignInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSignatureContextCopyWith<$Res>? get context {
    if (_self.context == null) {
    return null;
  }

  return $LedgerSignatureContextCopyWith<$Res>(_self.context!, (value) {
    return _then(_self.copyWith(context: value));
  });
}
}

// dart format on
