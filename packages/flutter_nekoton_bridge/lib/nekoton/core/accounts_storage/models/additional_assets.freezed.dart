// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'additional_assets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdditionalAssets {
  List<TokenWalletAsset> get tokenWallets;
  List<DePoolAsset> get depools;

  /// Create a copy of AdditionalAssets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdditionalAssetsCopyWith<AdditionalAssets> get copyWith =>
      _$AdditionalAssetsCopyWithImpl<AdditionalAssets>(
          this as AdditionalAssets, _$identity);

  /// Serializes this AdditionalAssets to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdditionalAssets &&
            const DeepCollectionEquality()
                .equals(other.tokenWallets, tokenWallets) &&
            const DeepCollectionEquality().equals(other.depools, depools));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tokenWallets),
      const DeepCollectionEquality().hash(depools));

  @override
  String toString() {
    return 'AdditionalAssets(tokenWallets: $tokenWallets, depools: $depools)';
  }
}

/// @nodoc
abstract mixin class $AdditionalAssetsCopyWith<$Res> {
  factory $AdditionalAssetsCopyWith(
          AdditionalAssets value, $Res Function(AdditionalAssets) _then) =
      _$AdditionalAssetsCopyWithImpl;
  @useResult
  $Res call({List<TokenWalletAsset> tokenWallets, List<DePoolAsset> depools});
}

/// @nodoc
class _$AdditionalAssetsCopyWithImpl<$Res>
    implements $AdditionalAssetsCopyWith<$Res> {
  _$AdditionalAssetsCopyWithImpl(this._self, this._then);

  final AdditionalAssets _self;
  final $Res Function(AdditionalAssets) _then;

  /// Create a copy of AdditionalAssets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenWallets = null,
    Object? depools = null,
  }) {
    return _then(_self.copyWith(
      tokenWallets: null == tokenWallets
          ? _self.tokenWallets
          : tokenWallets // ignore: cast_nullable_to_non_nullable
              as List<TokenWalletAsset>,
      depools: null == depools
          ? _self.depools
          : depools // ignore: cast_nullable_to_non_nullable
              as List<DePoolAsset>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _AdditionalAssets implements AdditionalAssets {
  const _AdditionalAssets(
      {required final List<TokenWalletAsset> tokenWallets,
      required final List<DePoolAsset> depools})
      : _tokenWallets = tokenWallets,
        _depools = depools;
  factory _AdditionalAssets.fromJson(Map<String, dynamic> json) =>
      _$AdditionalAssetsFromJson(json);

  final List<TokenWalletAsset> _tokenWallets;
  @override
  List<TokenWalletAsset> get tokenWallets {
    if (_tokenWallets is EqualUnmodifiableListView) return _tokenWallets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokenWallets);
  }

  final List<DePoolAsset> _depools;
  @override
  List<DePoolAsset> get depools {
    if (_depools is EqualUnmodifiableListView) return _depools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_depools);
  }

  /// Create a copy of AdditionalAssets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdditionalAssetsCopyWith<_AdditionalAssets> get copyWith =>
      __$AdditionalAssetsCopyWithImpl<_AdditionalAssets>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdditionalAssetsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdditionalAssets &&
            const DeepCollectionEquality()
                .equals(other._tokenWallets, _tokenWallets) &&
            const DeepCollectionEquality().equals(other._depools, _depools));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tokenWallets),
      const DeepCollectionEquality().hash(_depools));

  @override
  String toString() {
    return 'AdditionalAssets(tokenWallets: $tokenWallets, depools: $depools)';
  }
}

/// @nodoc
abstract mixin class _$AdditionalAssetsCopyWith<$Res>
    implements $AdditionalAssetsCopyWith<$Res> {
  factory _$AdditionalAssetsCopyWith(
          _AdditionalAssets value, $Res Function(_AdditionalAssets) _then) =
      __$AdditionalAssetsCopyWithImpl;
  @override
  @useResult
  $Res call({List<TokenWalletAsset> tokenWallets, List<DePoolAsset> depools});
}

/// @nodoc
class __$AdditionalAssetsCopyWithImpl<$Res>
    implements _$AdditionalAssetsCopyWith<$Res> {
  __$AdditionalAssetsCopyWithImpl(this._self, this._then);

  final _AdditionalAssets _self;
  final $Res Function(_AdditionalAssets) _then;

  /// Create a copy of AdditionalAssets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tokenWallets = null,
    Object? depools = null,
  }) {
    return _then(_AdditionalAssets(
      tokenWallets: null == tokenWallets
          ? _self._tokenWallets
          : tokenWallets // ignore: cast_nullable_to_non_nullable
              as List<TokenWalletAsset>,
      depools: null == depools
          ? _self._depools
          : depools // ignore: cast_nullable_to_non_nullable
              as List<DePoolAsset>,
    ));
  }
}

// dart format on
