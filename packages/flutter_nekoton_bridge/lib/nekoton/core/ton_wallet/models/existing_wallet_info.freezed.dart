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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExistingWalletInfo _$ExistingWalletInfoFromJson(Map<String, dynamic> json) {
  return _ExistingWalletInfo.fromJson(json);
}

/// @nodoc
mixin _$ExistingWalletInfo {
  String get address => throw _privateConstructorUsedError;
  String get publicKey => throw _privateConstructorUsedError;
  WalletType get walletType => throw _privateConstructorUsedError;
  ContractState get contractState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      {String address,
      String publicKey,
      WalletType walletType,
      ContractState contractState});

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
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
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

  @override
  @pragma('vm:prefer-inline')
  $WalletTypeCopyWith<$Res> get walletType {
    return $WalletTypeCopyWith<$Res>(_value.walletType, (value) {
      return _then(_value.copyWith(walletType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractStateCopyWith<$Res> get contractState {
    return $ContractStateCopyWith<$Res>(_value.contractState, (value) {
      return _then(_value.copyWith(contractState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExistingWalletInfoCopyWith<$Res>
    implements $ExistingWalletInfoCopyWith<$Res> {
  factory _$$_ExistingWalletInfoCopyWith(_$_ExistingWalletInfo value,
          $Res Function(_$_ExistingWalletInfo) then) =
      __$$_ExistingWalletInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String publicKey,
      WalletType walletType,
      ContractState contractState});

  @override
  $WalletTypeCopyWith<$Res> get walletType;
  @override
  $ContractStateCopyWith<$Res> get contractState;
}

/// @nodoc
class __$$_ExistingWalletInfoCopyWithImpl<$Res>
    extends _$ExistingWalletInfoCopyWithImpl<$Res, _$_ExistingWalletInfo>
    implements _$$_ExistingWalletInfoCopyWith<$Res> {
  __$$_ExistingWalletInfoCopyWithImpl(
      _$_ExistingWalletInfo _value, $Res Function(_$_ExistingWalletInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? publicKey = null,
    Object? walletType = null,
    Object? contractState = null,
  }) {
    return _then(_$_ExistingWalletInfo(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_ExistingWalletInfo implements _ExistingWalletInfo {
  const _$_ExistingWalletInfo(
      {required this.address,
      required this.publicKey,
      required this.walletType,
      required this.contractState});

  factory _$_ExistingWalletInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ExistingWalletInfoFromJson(json);

  @override
  final String address;
  @override
  final String publicKey;
  @override
  final WalletType walletType;
  @override
  final ContractState contractState;

  @override
  String toString() {
    return 'ExistingWalletInfo(address: $address, publicKey: $publicKey, walletType: $walletType, contractState: $contractState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExistingWalletInfo &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.walletType, walletType) ||
                other.walletType == walletType) &&
            (identical(other.contractState, contractState) ||
                other.contractState == contractState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, address, publicKey, walletType, contractState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExistingWalletInfoCopyWith<_$_ExistingWalletInfo> get copyWith =>
      __$$_ExistingWalletInfoCopyWithImpl<_$_ExistingWalletInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExistingWalletInfoToJson(
      this,
    );
  }
}

abstract class _ExistingWalletInfo implements ExistingWalletInfo {
  const factory _ExistingWalletInfo(
      {required final String address,
      required final String publicKey,
      required final WalletType walletType,
      required final ContractState contractState}) = _$_ExistingWalletInfo;

  factory _ExistingWalletInfo.fromJson(Map<String, dynamic> json) =
      _$_ExistingWalletInfo.fromJson;

  @override
  String get address;
  @override
  String get publicKey;
  @override
  WalletType get walletType;
  @override
  ContractState get contractState;
  @override
  @JsonKey(ignore: true)
  _$$_ExistingWalletInfoCopyWith<_$_ExistingWalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
