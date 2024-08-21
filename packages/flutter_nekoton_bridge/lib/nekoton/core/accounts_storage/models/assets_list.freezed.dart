// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assets_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssetsList _$AssetsListFromJson(Map<String, dynamic> json) {
  return _AssetsList.fromJson(json);
}

/// @nodoc
mixin _$AssetsList {
  String get name => throw _privateConstructorUsedError;
  TonWalletAsset get tonWallet =>
      throw _privateConstructorUsedError; // List of Token assets that are owned by this wallet.
// key - should be <Transport.group>, value - list of tokens.
// key will be specified from <AccountsStorage.addTokenWallet> method
  Map<String, AdditionalAssets> get additionalAssets =>
      throw _privateConstructorUsedError;

  /// Serializes this AssetsList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssetsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssetsListCopyWith<AssetsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetsListCopyWith<$Res> {
  factory $AssetsListCopyWith(
          AssetsList value, $Res Function(AssetsList) then) =
      _$AssetsListCopyWithImpl<$Res, AssetsList>;
  @useResult
  $Res call(
      {String name,
      TonWalletAsset tonWallet,
      Map<String, AdditionalAssets> additionalAssets});

  $TonWalletAssetCopyWith<$Res> get tonWallet;
}

/// @nodoc
class _$AssetsListCopyWithImpl<$Res, $Val extends AssetsList>
    implements $AssetsListCopyWith<$Res> {
  _$AssetsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssetsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? tonWallet = null,
    Object? additionalAssets = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tonWallet: null == tonWallet
          ? _value.tonWallet
          : tonWallet // ignore: cast_nullable_to_non_nullable
              as TonWalletAsset,
      additionalAssets: null == additionalAssets
          ? _value.additionalAssets
          : additionalAssets // ignore: cast_nullable_to_non_nullable
              as Map<String, AdditionalAssets>,
    ) as $Val);
  }

  /// Create a copy of AssetsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TonWalletAssetCopyWith<$Res> get tonWallet {
    return $TonWalletAssetCopyWith<$Res>(_value.tonWallet, (value) {
      return _then(_value.copyWith(tonWallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AssetsListImplCopyWith<$Res>
    implements $AssetsListCopyWith<$Res> {
  factory _$$AssetsListImplCopyWith(
          _$AssetsListImpl value, $Res Function(_$AssetsListImpl) then) =
      __$$AssetsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      TonWalletAsset tonWallet,
      Map<String, AdditionalAssets> additionalAssets});

  @override
  $TonWalletAssetCopyWith<$Res> get tonWallet;
}

/// @nodoc
class __$$AssetsListImplCopyWithImpl<$Res>
    extends _$AssetsListCopyWithImpl<$Res, _$AssetsListImpl>
    implements _$$AssetsListImplCopyWith<$Res> {
  __$$AssetsListImplCopyWithImpl(
      _$AssetsListImpl _value, $Res Function(_$AssetsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? tonWallet = null,
    Object? additionalAssets = null,
  }) {
    return _then(_$AssetsListImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tonWallet: null == tonWallet
          ? _value.tonWallet
          : tonWallet // ignore: cast_nullable_to_non_nullable
              as TonWalletAsset,
      additionalAssets: null == additionalAssets
          ? _value._additionalAssets
          : additionalAssets // ignore: cast_nullable_to_non_nullable
              as Map<String, AdditionalAssets>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssetsListImpl extends _AssetsList {
  const _$AssetsListImpl(
      {required this.name,
      required this.tonWallet,
      required final Map<String, AdditionalAssets> additionalAssets})
      : _additionalAssets = additionalAssets,
        super._();

  factory _$AssetsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssetsListImplFromJson(json);

  @override
  final String name;
  @override
  final TonWalletAsset tonWallet;
// List of Token assets that are owned by this wallet.
// key - should be <Transport.group>, value - list of tokens.
// key will be specified from <AccountsStorage.addTokenWallet> method
  final Map<String, AdditionalAssets> _additionalAssets;
// List of Token assets that are owned by this wallet.
// key - should be <Transport.group>, value - list of tokens.
// key will be specified from <AccountsStorage.addTokenWallet> method
  @override
  Map<String, AdditionalAssets> get additionalAssets {
    if (_additionalAssets is EqualUnmodifiableMapView) return _additionalAssets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_additionalAssets);
  }

  @override
  String toString() {
    return 'AssetsList(name: $name, tonWallet: $tonWallet, additionalAssets: $additionalAssets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetsListImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tonWallet, tonWallet) ||
                other.tonWallet == tonWallet) &&
            const DeepCollectionEquality()
                .equals(other._additionalAssets, _additionalAssets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, tonWallet,
      const DeepCollectionEquality().hash(_additionalAssets));

  /// Create a copy of AssetsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetsListImplCopyWith<_$AssetsListImpl> get copyWith =>
      __$$AssetsListImplCopyWithImpl<_$AssetsListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssetsListImplToJson(
      this,
    );
  }
}

abstract class _AssetsList extends AssetsList {
  const factory _AssetsList(
          {required final String name,
          required final TonWalletAsset tonWallet,
          required final Map<String, AdditionalAssets> additionalAssets}) =
      _$AssetsListImpl;
  const _AssetsList._() : super._();

  factory _AssetsList.fromJson(Map<String, dynamic> json) =
      _$AssetsListImpl.fromJson;

  @override
  String get name;
  @override
  TonWalletAsset
      get tonWallet; // List of Token assets that are owned by this wallet.
// key - should be <Transport.group>, value - list of tokens.
// key will be specified from <AccountsStorage.addTokenWallet> method
  @override
  Map<String, AdditionalAssets> get additionalAssets;

  /// Create a copy of AssetsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssetsListImplCopyWith<_$AssetsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
