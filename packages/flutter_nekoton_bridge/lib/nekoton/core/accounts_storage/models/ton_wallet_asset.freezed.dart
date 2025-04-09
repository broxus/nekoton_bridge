// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ton_wallet_asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TonWalletAsset {
  Address get address;
  PublicKey get publicKey;
  WalletType get contract;

  /// Create a copy of TonWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TonWalletAssetCopyWith<TonWalletAsset> get copyWith =>
      _$TonWalletAssetCopyWithImpl<TonWalletAsset>(
          this as TonWalletAsset, _$identity);

  /// Serializes this TonWalletAsset to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TonWalletAsset &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, publicKey, contract);

  @override
  String toString() {
    return 'TonWalletAsset(address: $address, publicKey: $publicKey, contract: $contract)';
  }
}

/// @nodoc
abstract mixin class $TonWalletAssetCopyWith<$Res> {
  factory $TonWalletAssetCopyWith(
          TonWalletAsset value, $Res Function(TonWalletAsset) _then) =
      _$TonWalletAssetCopyWithImpl;
  @useResult
  $Res call({Address address, PublicKey publicKey, WalletType contract});

  $AddressCopyWith<$Res> get address;
  $PublicKeyCopyWith<$Res> get publicKey;
  $WalletTypeCopyWith<$Res> get contract;
}

/// @nodoc
class _$TonWalletAssetCopyWithImpl<$Res>
    implements $TonWalletAssetCopyWith<$Res> {
  _$TonWalletAssetCopyWithImpl(this._self, this._then);

  final TonWalletAsset _self;
  final $Res Function(TonWalletAsset) _then;

  /// Create a copy of TonWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? publicKey = null,
    Object? contract = null,
  }) {
    return _then(_self.copyWith(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      contract: null == contract
          ? _self.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as WalletType,
    ));
  }

  /// Create a copy of TonWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of TonWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }

  /// Create a copy of TonWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletTypeCopyWith<$Res> get contract {
    return $WalletTypeCopyWith<$Res>(_self.contract, (value) {
      return _then(_self.copyWith(contract: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _TonWalletAsset extends TonWalletAsset {
  const _TonWalletAsset(
      {required this.address, required this.publicKey, required this.contract})
      : super._();
  factory _TonWalletAsset.fromJson(Map<String, dynamic> json) =>
      _$TonWalletAssetFromJson(json);

  @override
  final Address address;
  @override
  final PublicKey publicKey;
  @override
  final WalletType contract;

  /// Create a copy of TonWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TonWalletAssetCopyWith<_TonWalletAsset> get copyWith =>
      __$TonWalletAssetCopyWithImpl<_TonWalletAsset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TonWalletAssetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TonWalletAsset &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, publicKey, contract);

  @override
  String toString() {
    return 'TonWalletAsset(address: $address, publicKey: $publicKey, contract: $contract)';
  }
}

/// @nodoc
abstract mixin class _$TonWalletAssetCopyWith<$Res>
    implements $TonWalletAssetCopyWith<$Res> {
  factory _$TonWalletAssetCopyWith(
          _TonWalletAsset value, $Res Function(_TonWalletAsset) _then) =
      __$TonWalletAssetCopyWithImpl;
  @override
  @useResult
  $Res call({Address address, PublicKey publicKey, WalletType contract});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $PublicKeyCopyWith<$Res> get publicKey;
  @override
  $WalletTypeCopyWith<$Res> get contract;
}

/// @nodoc
class __$TonWalletAssetCopyWithImpl<$Res>
    implements _$TonWalletAssetCopyWith<$Res> {
  __$TonWalletAssetCopyWithImpl(this._self, this._then);

  final _TonWalletAsset _self;
  final $Res Function(_TonWalletAsset) _then;

  /// Create a copy of TonWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? publicKey = null,
    Object? contract = null,
  }) {
    return _then(_TonWalletAsset(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      contract: null == contract
          ? _self.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as WalletType,
    ));
  }

  /// Create a copy of TonWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of TonWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }

  /// Create a copy of TonWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletTypeCopyWith<$Res> get contract {
    return $WalletTypeCopyWith<$Res>(_self.contract, (value) {
      return _then(_self.copyWith(contract: value));
    });
  }
}

// dart format on
