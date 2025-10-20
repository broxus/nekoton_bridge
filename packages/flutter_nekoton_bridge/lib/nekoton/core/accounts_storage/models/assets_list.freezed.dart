// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assets_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssetsList {

 String get name; TonWalletAsset get tonWallet;// List of Token assets that are owned by this wallet.
// key - should be <Transport.group>, value - list of tokens.
// key will be specified from <AccountsStorage.addTokenWallet> method
 Map<String, AdditionalAssets> get additionalAssets;
/// Create a copy of AssetsList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetsListCopyWith<AssetsList> get copyWith => _$AssetsListCopyWithImpl<AssetsList>(this as AssetsList, _$identity);

  /// Serializes this AssetsList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetsList&&(identical(other.name, name) || other.name == name)&&(identical(other.tonWallet, tonWallet) || other.tonWallet == tonWallet)&&const DeepCollectionEquality().equals(other.additionalAssets, additionalAssets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,tonWallet,const DeepCollectionEquality().hash(additionalAssets));

@override
String toString() {
  return 'AssetsList(name: $name, tonWallet: $tonWallet, additionalAssets: $additionalAssets)';
}


}

/// @nodoc
abstract mixin class $AssetsListCopyWith<$Res>  {
  factory $AssetsListCopyWith(AssetsList value, $Res Function(AssetsList) _then) = _$AssetsListCopyWithImpl;
@useResult
$Res call({
 String name, TonWalletAsset tonWallet, Map<String, AdditionalAssets> additionalAssets
});


$TonWalletAssetCopyWith<$Res> get tonWallet;

}
/// @nodoc
class _$AssetsListCopyWithImpl<$Res>
    implements $AssetsListCopyWith<$Res> {
  _$AssetsListCopyWithImpl(this._self, this._then);

  final AssetsList _self;
  final $Res Function(AssetsList) _then;

/// Create a copy of AssetsList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? tonWallet = null,Object? additionalAssets = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,tonWallet: null == tonWallet ? _self.tonWallet : tonWallet // ignore: cast_nullable_to_non_nullable
as TonWalletAsset,additionalAssets: null == additionalAssets ? _self.additionalAssets : additionalAssets // ignore: cast_nullable_to_non_nullable
as Map<String, AdditionalAssets>,
  ));
}
/// Create a copy of AssetsList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TonWalletAssetCopyWith<$Res> get tonWallet {
  
  return $TonWalletAssetCopyWith<$Res>(_self.tonWallet, (value) {
    return _then(_self.copyWith(tonWallet: value));
  });
}
}


/// Adds pattern-matching-related methods to [AssetsList].
extension AssetsListPatterns on AssetsList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssetsList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssetsList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssetsList value)  $default,){
final _that = this;
switch (_that) {
case _AssetsList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssetsList value)?  $default,){
final _that = this;
switch (_that) {
case _AssetsList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  TonWalletAsset tonWallet,  Map<String, AdditionalAssets> additionalAssets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetsList() when $default != null:
return $default(_that.name,_that.tonWallet,_that.additionalAssets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  TonWalletAsset tonWallet,  Map<String, AdditionalAssets> additionalAssets)  $default,) {final _that = this;
switch (_that) {
case _AssetsList():
return $default(_that.name,_that.tonWallet,_that.additionalAssets);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  TonWalletAsset tonWallet,  Map<String, AdditionalAssets> additionalAssets)?  $default,) {final _that = this;
switch (_that) {
case _AssetsList() when $default != null:
return $default(_that.name,_that.tonWallet,_that.additionalAssets);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssetsList extends AssetsList {
  const _AssetsList({required this.name, required this.tonWallet, required final  Map<String, AdditionalAssets> additionalAssets}): _additionalAssets = additionalAssets,super._();
  factory _AssetsList.fromJson(Map<String, dynamic> json) => _$AssetsListFromJson(json);

@override final  String name;
@override final  TonWalletAsset tonWallet;
// List of Token assets that are owned by this wallet.
// key - should be <Transport.group>, value - list of tokens.
// key will be specified from <AccountsStorage.addTokenWallet> method
 final  Map<String, AdditionalAssets> _additionalAssets;
// List of Token assets that are owned by this wallet.
// key - should be <Transport.group>, value - list of tokens.
// key will be specified from <AccountsStorage.addTokenWallet> method
@override Map<String, AdditionalAssets> get additionalAssets {
  if (_additionalAssets is EqualUnmodifiableMapView) return _additionalAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_additionalAssets);
}


/// Create a copy of AssetsList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetsListCopyWith<_AssetsList> get copyWith => __$AssetsListCopyWithImpl<_AssetsList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssetsListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetsList&&(identical(other.name, name) || other.name == name)&&(identical(other.tonWallet, tonWallet) || other.tonWallet == tonWallet)&&const DeepCollectionEquality().equals(other._additionalAssets, _additionalAssets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,tonWallet,const DeepCollectionEquality().hash(_additionalAssets));

@override
String toString() {
  return 'AssetsList(name: $name, tonWallet: $tonWallet, additionalAssets: $additionalAssets)';
}


}

/// @nodoc
abstract mixin class _$AssetsListCopyWith<$Res> implements $AssetsListCopyWith<$Res> {
  factory _$AssetsListCopyWith(_AssetsList value, $Res Function(_AssetsList) _then) = __$AssetsListCopyWithImpl;
@override @useResult
$Res call({
 String name, TonWalletAsset tonWallet, Map<String, AdditionalAssets> additionalAssets
});


@override $TonWalletAssetCopyWith<$Res> get tonWallet;

}
/// @nodoc
class __$AssetsListCopyWithImpl<$Res>
    implements _$AssetsListCopyWith<$Res> {
  __$AssetsListCopyWithImpl(this._self, this._then);

  final _AssetsList _self;
  final $Res Function(_AssetsList) _then;

/// Create a copy of AssetsList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? tonWallet = null,Object? additionalAssets = null,}) {
  return _then(_AssetsList(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,tonWallet: null == tonWallet ? _self.tonWallet : tonWallet // ignore: cast_nullable_to_non_nullable
as TonWalletAsset,additionalAssets: null == additionalAssets ? _self._additionalAssets : additionalAssets // ignore: cast_nullable_to_non_nullable
as Map<String, AdditionalAssets>,
  ));
}

/// Create a copy of AssetsList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TonWalletAssetCopyWith<$Res> get tonWallet {
  
  return $TonWalletAssetCopyWith<$Res>(_self.tonWallet, (value) {
    return _then(_self.copyWith(tonWallet: value));
  });
}
}

// dart format on
