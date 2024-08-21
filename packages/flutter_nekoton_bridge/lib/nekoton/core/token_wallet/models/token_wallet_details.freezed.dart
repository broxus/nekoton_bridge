// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_wallet_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenWalletDetails _$TokenWalletDetailsFromJson(Map<String, dynamic> json) {
  return _TokenWalletDetails.fromJson(json);
}

/// @nodoc
mixin _$TokenWalletDetails {
  Address get rootAddress => throw _privateConstructorUsedError;
  Address get ownerAddress => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get balance => throw _privateConstructorUsedError;

  /// Serializes this TokenWalletDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenWalletDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenWalletDetailsCopyWith<TokenWalletDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenWalletDetailsCopyWith<$Res> {
  factory $TokenWalletDetailsCopyWith(
          TokenWalletDetails value, $Res Function(TokenWalletDetails) then) =
      _$TokenWalletDetailsCopyWithImpl<$Res, TokenWalletDetails>;
  @useResult
  $Res call(
      {Address rootAddress,
      Address ownerAddress,
      @amountJsonConverter BigInt balance});

  $AddressCopyWith<$Res> get rootAddress;
  $AddressCopyWith<$Res> get ownerAddress;
}

/// @nodoc
class _$TokenWalletDetailsCopyWithImpl<$Res, $Val extends TokenWalletDetails>
    implements $TokenWalletDetailsCopyWith<$Res> {
  _$TokenWalletDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenWalletDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rootAddress = null,
    Object? ownerAddress = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      rootAddress: null == rootAddress
          ? _value.rootAddress
          : rootAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      ownerAddress: null == ownerAddress
          ? _value.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }

  /// Create a copy of TokenWalletDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get rootAddress {
    return $AddressCopyWith<$Res>(_value.rootAddress, (value) {
      return _then(_value.copyWith(rootAddress: value) as $Val);
    });
  }

  /// Create a copy of TokenWalletDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get ownerAddress {
    return $AddressCopyWith<$Res>(_value.ownerAddress, (value) {
      return _then(_value.copyWith(ownerAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokenWalletDetailsImplCopyWith<$Res>
    implements $TokenWalletDetailsCopyWith<$Res> {
  factory _$$TokenWalletDetailsImplCopyWith(_$TokenWalletDetailsImpl value,
          $Res Function(_$TokenWalletDetailsImpl) then) =
      __$$TokenWalletDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address rootAddress,
      Address ownerAddress,
      @amountJsonConverter BigInt balance});

  @override
  $AddressCopyWith<$Res> get rootAddress;
  @override
  $AddressCopyWith<$Res> get ownerAddress;
}

/// @nodoc
class __$$TokenWalletDetailsImplCopyWithImpl<$Res>
    extends _$TokenWalletDetailsCopyWithImpl<$Res, _$TokenWalletDetailsImpl>
    implements _$$TokenWalletDetailsImplCopyWith<$Res> {
  __$$TokenWalletDetailsImplCopyWithImpl(_$TokenWalletDetailsImpl _value,
      $Res Function(_$TokenWalletDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenWalletDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rootAddress = null,
    Object? ownerAddress = null,
    Object? balance = null,
  }) {
    return _then(_$TokenWalletDetailsImpl(
      rootAddress: null == rootAddress
          ? _value.rootAddress
          : rootAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      ownerAddress: null == ownerAddress
          ? _value.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenWalletDetailsImpl implements _TokenWalletDetails {
  const _$TokenWalletDetailsImpl(
      {required this.rootAddress,
      required this.ownerAddress,
      @amountJsonConverter required this.balance});

  factory _$TokenWalletDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenWalletDetailsImplFromJson(json);

  @override
  final Address rootAddress;
  @override
  final Address ownerAddress;
  @override
  @amountJsonConverter
  final BigInt balance;

  @override
  String toString() {
    return 'TokenWalletDetails(rootAddress: $rootAddress, ownerAddress: $ownerAddress, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenWalletDetailsImpl &&
            (identical(other.rootAddress, rootAddress) ||
                other.rootAddress == rootAddress) &&
            (identical(other.ownerAddress, ownerAddress) ||
                other.ownerAddress == ownerAddress) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rootAddress, ownerAddress, balance);

  /// Create a copy of TokenWalletDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenWalletDetailsImplCopyWith<_$TokenWalletDetailsImpl> get copyWith =>
      __$$TokenWalletDetailsImplCopyWithImpl<_$TokenWalletDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenWalletDetailsImplToJson(
      this,
    );
  }
}

abstract class _TokenWalletDetails implements TokenWalletDetails {
  const factory _TokenWalletDetails(
          {required final Address rootAddress,
          required final Address ownerAddress,
          @amountJsonConverter required final BigInt balance}) =
      _$TokenWalletDetailsImpl;

  factory _TokenWalletDetails.fromJson(Map<String, dynamic> json) =
      _$TokenWalletDetailsImpl.fromJson;

  @override
  Address get rootAddress;
  @override
  Address get ownerAddress;
  @override
  @amountJsonConverter
  BigInt get balance;

  /// Create a copy of TokenWalletDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenWalletDetailsImplCopyWith<_$TokenWalletDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
