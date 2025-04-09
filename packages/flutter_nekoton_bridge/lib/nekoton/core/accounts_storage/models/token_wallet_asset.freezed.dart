// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_wallet_asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenWalletAsset {
  Address get rootTokenContract;

  /// Create a copy of TokenWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenWalletAssetCopyWith<TokenWalletAsset> get copyWith =>
      _$TokenWalletAssetCopyWithImpl<TokenWalletAsset>(
          this as TokenWalletAsset, _$identity);

  /// Serializes this TokenWalletAsset to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenWalletAsset &&
            (identical(other.rootTokenContract, rootTokenContract) ||
                other.rootTokenContract == rootTokenContract));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rootTokenContract);

  @override
  String toString() {
    return 'TokenWalletAsset(rootTokenContract: $rootTokenContract)';
  }
}

/// @nodoc
abstract mixin class $TokenWalletAssetCopyWith<$Res> {
  factory $TokenWalletAssetCopyWith(
          TokenWalletAsset value, $Res Function(TokenWalletAsset) _then) =
      _$TokenWalletAssetCopyWithImpl;
  @useResult
  $Res call({Address rootTokenContract});

  $AddressCopyWith<$Res> get rootTokenContract;
}

/// @nodoc
class _$TokenWalletAssetCopyWithImpl<$Res>
    implements $TokenWalletAssetCopyWith<$Res> {
  _$TokenWalletAssetCopyWithImpl(this._self, this._then);

  final TokenWalletAsset _self;
  final $Res Function(TokenWalletAsset) _then;

  /// Create a copy of TokenWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rootTokenContract = null,
  }) {
    return _then(_self.copyWith(
      rootTokenContract: null == rootTokenContract
          ? _self.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  /// Create a copy of TokenWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get rootTokenContract {
    return $AddressCopyWith<$Res>(_self.rootTokenContract, (value) {
      return _then(_self.copyWith(rootTokenContract: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _TokenWalletAsset implements TokenWalletAsset {
  const _TokenWalletAsset({required this.rootTokenContract});
  factory _TokenWalletAsset.fromJson(Map<String, dynamic> json) =>
      _$TokenWalletAssetFromJson(json);

  @override
  final Address rootTokenContract;

  /// Create a copy of TokenWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TokenWalletAssetCopyWith<_TokenWalletAsset> get copyWith =>
      __$TokenWalletAssetCopyWithImpl<_TokenWalletAsset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenWalletAssetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenWalletAsset &&
            (identical(other.rootTokenContract, rootTokenContract) ||
                other.rootTokenContract == rootTokenContract));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rootTokenContract);

  @override
  String toString() {
    return 'TokenWalletAsset(rootTokenContract: $rootTokenContract)';
  }
}

/// @nodoc
abstract mixin class _$TokenWalletAssetCopyWith<$Res>
    implements $TokenWalletAssetCopyWith<$Res> {
  factory _$TokenWalletAssetCopyWith(
          _TokenWalletAsset value, $Res Function(_TokenWalletAsset) _then) =
      __$TokenWalletAssetCopyWithImpl;
  @override
  @useResult
  $Res call({Address rootTokenContract});

  @override
  $AddressCopyWith<$Res> get rootTokenContract;
}

/// @nodoc
class __$TokenWalletAssetCopyWithImpl<$Res>
    implements _$TokenWalletAssetCopyWith<$Res> {
  __$TokenWalletAssetCopyWithImpl(this._self, this._then);

  final _TokenWalletAsset _self;
  final $Res Function(_TokenWalletAsset) _then;

  /// Create a copy of TokenWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rootTokenContract = null,
  }) {
    return _then(_TokenWalletAsset(
      rootTokenContract: null == rootTokenContract
          ? _self.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  /// Create a copy of TokenWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get rootTokenContract {
    return $AddressCopyWith<$Res>(_self.rootTokenContract, (value) {
      return _then(_self.copyWith(rootTokenContract: value));
    });
  }
}

// dart format on
