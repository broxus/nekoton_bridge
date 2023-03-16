// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ton_wallet_asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TonWalletAsset _$TonWalletAssetFromJson(Map<String, dynamic> json) {
  return _TonWalletAsset.fromJson(json);
}

/// @nodoc
mixin _$TonWalletAsset {
  String get address => throw _privateConstructorUsedError;
  String get publicKey => throw _privateConstructorUsedError;
  WalletType get contract => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TonWalletAssetCopyWith<TonWalletAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TonWalletAssetCopyWith<$Res> {
  factory $TonWalletAssetCopyWith(
          TonWalletAsset value, $Res Function(TonWalletAsset) then) =
      _$TonWalletAssetCopyWithImpl<$Res>;
  $Res call({String address, String publicKey, WalletType contract});

  $WalletTypeCopyWith<$Res> get contract;
}

/// @nodoc
class _$TonWalletAssetCopyWithImpl<$Res>
    implements $TonWalletAssetCopyWith<$Res> {
  _$TonWalletAssetCopyWithImpl(this._value, this._then);

  final TonWalletAsset _value;
  // ignore: unused_field
  final $Res Function(TonWalletAsset) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? publicKey = freezed,
    Object? contract = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      contract: contract == freezed
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as WalletType,
    ));
  }

  @override
  $WalletTypeCopyWith<$Res> get contract {
    return $WalletTypeCopyWith<$Res>(_value.contract, (value) {
      return _then(_value.copyWith(contract: value));
    });
  }
}

/// @nodoc
abstract class _$$_TonWalletAssetCopyWith<$Res>
    implements $TonWalletAssetCopyWith<$Res> {
  factory _$$_TonWalletAssetCopyWith(
          _$_TonWalletAsset value, $Res Function(_$_TonWalletAsset) then) =
      __$$_TonWalletAssetCopyWithImpl<$Res>;
  @override
  $Res call({String address, String publicKey, WalletType contract});

  @override
  $WalletTypeCopyWith<$Res> get contract;
}

/// @nodoc
class __$$_TonWalletAssetCopyWithImpl<$Res>
    extends _$TonWalletAssetCopyWithImpl<$Res>
    implements _$$_TonWalletAssetCopyWith<$Res> {
  __$$_TonWalletAssetCopyWithImpl(
      _$_TonWalletAsset _value, $Res Function(_$_TonWalletAsset) _then)
      : super(_value, (v) => _then(v as _$_TonWalletAsset));

  @override
  _$_TonWalletAsset get _value => super._value as _$_TonWalletAsset;

  @override
  $Res call({
    Object? address = freezed,
    Object? publicKey = freezed,
    Object? contract = freezed,
  }) {
    return _then(_$_TonWalletAsset(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      contract: contract == freezed
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as WalletType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TonWalletAsset extends _TonWalletAsset {
  const _$_TonWalletAsset(
      {required this.address, required this.publicKey, required this.contract})
      : super._();

  factory _$_TonWalletAsset.fromJson(Map<String, dynamic> json) =>
      _$$_TonWalletAssetFromJson(json);

  @override
  final String address;
  @override
  final String publicKey;
  @override
  final WalletType contract;

  @override
  String toString() {
    return 'TonWalletAsset(address: $address, publicKey: $publicKey, contract: $contract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TonWalletAsset &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
            const DeepCollectionEquality().equals(other.contract, contract));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(publicKey),
      const DeepCollectionEquality().hash(contract));

  @JsonKey(ignore: true)
  @override
  _$$_TonWalletAssetCopyWith<_$_TonWalletAsset> get copyWith =>
      __$$_TonWalletAssetCopyWithImpl<_$_TonWalletAsset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TonWalletAssetToJson(
      this,
    );
  }
}

abstract class _TonWalletAsset extends TonWalletAsset {
  const factory _TonWalletAsset(
      {required final String address,
      required final String publicKey,
      required final WalletType contract}) = _$_TonWalletAsset;
  const _TonWalletAsset._() : super._();

  factory _TonWalletAsset.fromJson(Map<String, dynamic> json) =
      _$_TonWalletAsset.fromJson;

  @override
  String get address;
  @override
  String get publicKey;
  @override
  WalletType get contract;
  @override
  @JsonKey(ignore: true)
  _$$_TonWalletAssetCopyWith<_$_TonWalletAsset> get copyWith =>
      throw _privateConstructorUsedError;
}
