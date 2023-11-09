// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'additional_assets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdditionalAssets _$AdditionalAssetsFromJson(Map<String, dynamic> json) {
  return _AdditionalAssets.fromJson(json);
}

/// @nodoc
mixin _$AdditionalAssets {
  List<TokenWalletAsset> get tokenWallets => throw _privateConstructorUsedError;
  List<DePoolAsset> get depools => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalAssetsCopyWith<AdditionalAssets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalAssetsCopyWith<$Res> {
  factory $AdditionalAssetsCopyWith(
          AdditionalAssets value, $Res Function(AdditionalAssets) then) =
      _$AdditionalAssetsCopyWithImpl<$Res, AdditionalAssets>;
  @useResult
  $Res call({List<TokenWalletAsset> tokenWallets, List<DePoolAsset> depools});
}

/// @nodoc
class _$AdditionalAssetsCopyWithImpl<$Res, $Val extends AdditionalAssets>
    implements $AdditionalAssetsCopyWith<$Res> {
  _$AdditionalAssetsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenWallets = null,
    Object? depools = null,
  }) {
    return _then(_value.copyWith(
      tokenWallets: null == tokenWallets
          ? _value.tokenWallets
          : tokenWallets // ignore: cast_nullable_to_non_nullable
              as List<TokenWalletAsset>,
      depools: null == depools
          ? _value.depools
          : depools // ignore: cast_nullable_to_non_nullable
              as List<DePoolAsset>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdditionalAssetsCopyWith<$Res>
    implements $AdditionalAssetsCopyWith<$Res> {
  factory _$$_AdditionalAssetsCopyWith(
          _$_AdditionalAssets value, $Res Function(_$_AdditionalAssets) then) =
      __$$_AdditionalAssetsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TokenWalletAsset> tokenWallets, List<DePoolAsset> depools});
}

/// @nodoc
class __$$_AdditionalAssetsCopyWithImpl<$Res>
    extends _$AdditionalAssetsCopyWithImpl<$Res, _$_AdditionalAssets>
    implements _$$_AdditionalAssetsCopyWith<$Res> {
  __$$_AdditionalAssetsCopyWithImpl(
      _$_AdditionalAssets _value, $Res Function(_$_AdditionalAssets) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenWallets = null,
    Object? depools = null,
  }) {
    return _then(_$_AdditionalAssets(
      tokenWallets: null == tokenWallets
          ? _value._tokenWallets
          : tokenWallets // ignore: cast_nullable_to_non_nullable
              as List<TokenWalletAsset>,
      depools: null == depools
          ? _value._depools
          : depools // ignore: cast_nullable_to_non_nullable
              as List<DePoolAsset>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_AdditionalAssets implements _AdditionalAssets {
  const _$_AdditionalAssets(
      {required final List<TokenWalletAsset> tokenWallets,
      required final List<DePoolAsset> depools})
      : _tokenWallets = tokenWallets,
        _depools = depools;

  factory _$_AdditionalAssets.fromJson(Map<String, dynamic> json) =>
      _$$_AdditionalAssetsFromJson(json);

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

  @override
  String toString() {
    return 'AdditionalAssets(tokenWallets: $tokenWallets, depools: $depools)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdditionalAssets &&
            const DeepCollectionEquality()
                .equals(other._tokenWallets, _tokenWallets) &&
            const DeepCollectionEquality().equals(other._depools, _depools));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tokenWallets),
      const DeepCollectionEquality().hash(_depools));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdditionalAssetsCopyWith<_$_AdditionalAssets> get copyWith =>
      __$$_AdditionalAssetsCopyWithImpl<_$_AdditionalAssets>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdditionalAssetsToJson(
      this,
    );
  }
}

abstract class _AdditionalAssets implements AdditionalAssets {
  const factory _AdditionalAssets(
      {required final List<TokenWalletAsset> tokenWallets,
      required final List<DePoolAsset> depools}) = _$_AdditionalAssets;

  factory _AdditionalAssets.fromJson(Map<String, dynamic> json) =
      _$_AdditionalAssets.fromJson;

  @override
  List<TokenWalletAsset> get tokenWallets;
  @override
  List<DePoolAsset> get depools;
  @override
  @JsonKey(ignore: true)
  _$$_AdditionalAssetsCopyWith<_$_AdditionalAssets> get copyWith =>
      throw _privateConstructorUsedError;
}
