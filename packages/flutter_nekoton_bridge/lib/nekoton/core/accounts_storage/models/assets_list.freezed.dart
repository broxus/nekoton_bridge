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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssetsList _$AssetsListFromJson(Map<String, dynamic> json) {
  return _AssetsList.fromJson(json);
}

/// @nodoc
mixin _$AssetsList {
  String get name => throw _privateConstructorUsedError;
  TonWalletAsset get tonWallet => throw _privateConstructorUsedError;
  Map<String, AdditionalAssets> get additionalAssets =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @override
  @pragma('vm:prefer-inline')
  $TonWalletAssetCopyWith<$Res> get tonWallet {
    return $TonWalletAssetCopyWith<$Res>(_value.tonWallet, (value) {
      return _then(_value.copyWith(tonWallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AssetsListCopyWith<$Res>
    implements $AssetsListCopyWith<$Res> {
  factory _$$_AssetsListCopyWith(
          _$_AssetsList value, $Res Function(_$_AssetsList) then) =
      __$$_AssetsListCopyWithImpl<$Res>;
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
class __$$_AssetsListCopyWithImpl<$Res>
    extends _$AssetsListCopyWithImpl<$Res, _$_AssetsList>
    implements _$$_AssetsListCopyWith<$Res> {
  __$$_AssetsListCopyWithImpl(
      _$_AssetsList _value, $Res Function(_$_AssetsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? tonWallet = null,
    Object? additionalAssets = null,
  }) {
    return _then(_$_AssetsList(
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
class _$_AssetsList extends _AssetsList {
  const _$_AssetsList(
      {required this.name,
      required this.tonWallet,
      required final Map<String, AdditionalAssets> additionalAssets})
      : _additionalAssets = additionalAssets,
        super._();

  factory _$_AssetsList.fromJson(Map<String, dynamic> json) =>
      _$$_AssetsListFromJson(json);

  @override
  final String name;
  @override
  final TonWalletAsset tonWallet;
  final Map<String, AdditionalAssets> _additionalAssets;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssetsList &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tonWallet, tonWallet) ||
                other.tonWallet == tonWallet) &&
            const DeepCollectionEquality()
                .equals(other._additionalAssets, _additionalAssets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, tonWallet,
      const DeepCollectionEquality().hash(_additionalAssets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssetsListCopyWith<_$_AssetsList> get copyWith =>
      __$$_AssetsListCopyWithImpl<_$_AssetsList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssetsListToJson(
      this,
    );
  }
}

abstract class _AssetsList extends AssetsList {
  const factory _AssetsList(
          {required final String name,
          required final TonWalletAsset tonWallet,
          required final Map<String, AdditionalAssets> additionalAssets}) =
      _$_AssetsList;
  const _AssetsList._() : super._();

  factory _AssetsList.fromJson(Map<String, dynamic> json) =
      _$_AssetsList.fromJson;

  @override
  String get name;
  @override
  TonWalletAsset get tonWallet;
  @override
  Map<String, AdditionalAssets> get additionalAssets;
  @override
  @JsonKey(ignore: true)
  _$$_AssetsListCopyWith<_$_AssetsList> get copyWith =>
      throw _privateConstructorUsedError;
}
