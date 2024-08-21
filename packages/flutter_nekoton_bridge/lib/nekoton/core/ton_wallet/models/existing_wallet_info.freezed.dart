// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'existing_wallet_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExistingWalletInfo _$ExistingWalletInfoFromJson(Map<String, dynamic> json) {
  return _ExistingWalletInfo.fromJson(json);
}

/// @nodoc
mixin _$ExistingWalletInfo {
  Address get address => throw _privateConstructorUsedError;
  PublicKey get publicKey => throw _privateConstructorUsedError;
  WalletType get walletType => throw _privateConstructorUsedError;
  ContractState get contractState => throw _privateConstructorUsedError;

  /// Serializes this ExistingWalletInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExistingWalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExistingWalletInfoCopyWith<ExistingWalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExistingWalletInfoCopyWith<$Res> {
  factory $ExistingWalletInfoCopyWith(
          ExistingWalletInfo value, $Res Function(ExistingWalletInfo) then) =
      _$ExistingWalletInfoCopyWithImpl<$Res, ExistingWalletInfo>;
  @useResult
  $Res call(
      {Address address,
      PublicKey publicKey,
      WalletType walletType,
      ContractState contractState});

  $AddressCopyWith<$Res> get address;
  $PublicKeyCopyWith<$Res> get publicKey;
  $WalletTypeCopyWith<$Res> get walletType;
  $ContractStateCopyWith<$Res> get contractState;
}

/// @nodoc
class _$ExistingWalletInfoCopyWithImpl<$Res, $Val extends ExistingWalletInfo>
    implements $ExistingWalletInfoCopyWith<$Res> {
  _$ExistingWalletInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExistingWalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? publicKey = null,
    Object? walletType = null,
    Object? contractState = null,
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
      walletType: null == walletType
          ? _value.walletType
          : walletType // ignore: cast_nullable_to_non_nullable
              as WalletType,
      contractState: null == contractState
          ? _value.contractState
          : contractState // ignore: cast_nullable_to_non_nullable
              as ContractState,
    ) as $Val);
  }

  /// Create a copy of ExistingWalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of ExistingWalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_value.publicKey, (value) {
      return _then(_value.copyWith(publicKey: value) as $Val);
    });
  }

  /// Create a copy of ExistingWalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletTypeCopyWith<$Res> get walletType {
    return $WalletTypeCopyWith<$Res>(_value.walletType, (value) {
      return _then(_value.copyWith(walletType: value) as $Val);
    });
  }

  /// Create a copy of ExistingWalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContractStateCopyWith<$Res> get contractState {
    return $ContractStateCopyWith<$Res>(_value.contractState, (value) {
      return _then(_value.copyWith(contractState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExistingWalletInfoImplCopyWith<$Res>
    implements $ExistingWalletInfoCopyWith<$Res> {
  factory _$$ExistingWalletInfoImplCopyWith(_$ExistingWalletInfoImpl value,
          $Res Function(_$ExistingWalletInfoImpl) then) =
      __$$ExistingWalletInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address address,
      PublicKey publicKey,
      WalletType walletType,
      ContractState contractState});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $PublicKeyCopyWith<$Res> get publicKey;
  @override
  $WalletTypeCopyWith<$Res> get walletType;
  @override
  $ContractStateCopyWith<$Res> get contractState;
}

/// @nodoc
class __$$ExistingWalletInfoImplCopyWithImpl<$Res>
    extends _$ExistingWalletInfoCopyWithImpl<$Res, _$ExistingWalletInfoImpl>
    implements _$$ExistingWalletInfoImplCopyWith<$Res> {
  __$$ExistingWalletInfoImplCopyWithImpl(_$ExistingWalletInfoImpl _value,
      $Res Function(_$ExistingWalletInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExistingWalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? publicKey = null,
    Object? walletType = null,
    Object? contractState = null,
  }) {
    return _then(_$ExistingWalletInfoImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      walletType: null == walletType
          ? _value.walletType
          : walletType // ignore: cast_nullable_to_non_nullable
              as WalletType,
      contractState: null == contractState
          ? _value.contractState
          : contractState // ignore: cast_nullable_to_non_nullable
              as ContractState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExistingWalletInfoImpl implements _ExistingWalletInfo {
  const _$ExistingWalletInfoImpl(
      {required this.address,
      required this.publicKey,
      required this.walletType,
      required this.contractState});

  factory _$ExistingWalletInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExistingWalletInfoImplFromJson(json);

  @override
  final Address address;
  @override
  final PublicKey publicKey;
  @override
  final WalletType walletType;
  @override
  final ContractState contractState;

  @override
  String toString() {
    return 'ExistingWalletInfo(address: $address, publicKey: $publicKey, walletType: $walletType, contractState: $contractState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExistingWalletInfoImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.walletType, walletType) ||
                other.walletType == walletType) &&
            (identical(other.contractState, contractState) ||
                other.contractState == contractState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, address, publicKey, walletType, contractState);

  /// Create a copy of ExistingWalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExistingWalletInfoImplCopyWith<_$ExistingWalletInfoImpl> get copyWith =>
      __$$ExistingWalletInfoImplCopyWithImpl<_$ExistingWalletInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExistingWalletInfoImplToJson(
      this,
    );
  }
}

abstract class _ExistingWalletInfo implements ExistingWalletInfo {
  const factory _ExistingWalletInfo(
      {required final Address address,
      required final PublicKey publicKey,
      required final WalletType walletType,
      required final ContractState contractState}) = _$ExistingWalletInfoImpl;

  factory _ExistingWalletInfo.fromJson(Map<String, dynamic> json) =
      _$ExistingWalletInfoImpl.fromJson;

  @override
  Address get address;
  @override
  PublicKey get publicKey;
  @override
  WalletType get walletType;
  @override
  ContractState get contractState;

  /// Create a copy of ExistingWalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExistingWalletInfoImplCopyWith<_$ExistingWalletInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
