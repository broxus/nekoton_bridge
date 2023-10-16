// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  Address get address => throw _privateConstructorUsedError;
  PublicKey get publicKey => throw _privateConstructorUsedError;
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
      _$TonWalletAssetCopyWithImpl<$Res, TonWalletAsset>;
  @useResult
  $Res call({Address address, PublicKey publicKey, WalletType contract});

  $AddressCopyWith<$Res> get address;
  $PublicKeyCopyWith<$Res> get publicKey;
  $WalletTypeCopyWith<$Res> get contract;
}

/// @nodoc
class _$TonWalletAssetCopyWithImpl<$Res, $Val extends TonWalletAsset>
    implements $TonWalletAssetCopyWith<$Res> {
  _$TonWalletAssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? publicKey = null,
    Object? contract = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as WalletType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_value.publicKey, (value) {
      return _then(_value.copyWith(publicKey: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletTypeCopyWith<$Res> get contract {
    return $WalletTypeCopyWith<$Res>(_value.contract, (value) {
      return _then(_value.copyWith(contract: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TonWalletAssetImplCopyWith<$Res>
    implements $TonWalletAssetCopyWith<$Res> {
  factory _$$TonWalletAssetImplCopyWith(_$TonWalletAssetImpl value,
          $Res Function(_$TonWalletAssetImpl) then) =
      __$$TonWalletAssetImplCopyWithImpl<$Res>;
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
class __$$TonWalletAssetImplCopyWithImpl<$Res>
    extends _$TonWalletAssetCopyWithImpl<$Res, _$TonWalletAssetImpl>
    implements _$$TonWalletAssetImplCopyWith<$Res> {
  __$$TonWalletAssetImplCopyWithImpl(
      _$TonWalletAssetImpl _value, $Res Function(_$TonWalletAssetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? publicKey = null,
    Object? contract = null,
  }) {
    return _then(_$TonWalletAssetImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as WalletType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TonWalletAssetImpl extends _TonWalletAsset {
  const _$TonWalletAssetImpl(
      {required this.address, required this.publicKey, required this.contract})
      : super._();

  factory _$TonWalletAssetImpl.fromJson(Map<String, dynamic> json) =>
      _$$TonWalletAssetImplFromJson(json);

  @override
  final Address address;
  @override
  final PublicKey publicKey;
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
            other is _$TonWalletAssetImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, publicKey, contract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TonWalletAssetImplCopyWith<_$TonWalletAssetImpl> get copyWith =>
      __$$TonWalletAssetImplCopyWithImpl<_$TonWalletAssetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TonWalletAssetImplToJson(
      this,
    );
  }
}

abstract class _TonWalletAsset extends TonWalletAsset {
  const factory _TonWalletAsset(
      {required final Address address,
      required final PublicKey publicKey,
      required final WalletType contract}) = _$TonWalletAssetImpl;
  const _TonWalletAsset._() : super._();

  factory _TonWalletAsset.fromJson(Map<String, dynamic> json) =
      _$TonWalletAssetImpl.fromJson;

  @override
  Address get address;
  @override
  PublicKey get publicKey;
  @override
  WalletType get contract;
  @override
  @JsonKey(ignore: true)
  _$$TonWalletAssetImplCopyWith<_$TonWalletAssetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
