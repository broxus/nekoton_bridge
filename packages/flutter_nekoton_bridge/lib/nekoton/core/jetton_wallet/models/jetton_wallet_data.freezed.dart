// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jetton_wallet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JettonWalletData _$JettonWalletDataFromJson(Map<String, dynamic> json) {
  return _JettonWalletData.fromJson(json);
}

/// @nodoc
mixin _$JettonWalletData {
  Address get rootAddress => throw _privateConstructorUsedError;
  Address get ownerAddress => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get balance => throw _privateConstructorUsedError;

  /// Serializes this JettonWalletData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JettonWalletData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JettonWalletDataCopyWith<JettonWalletData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JettonWalletDataCopyWith<$Res> {
  factory $JettonWalletDataCopyWith(
          JettonWalletData value, $Res Function(JettonWalletData) then) =
      _$JettonWalletDataCopyWithImpl<$Res, JettonWalletData>;
  @useResult
  $Res call(
      {Address rootAddress,
      Address ownerAddress,
      @amountJsonConverter BigInt balance});

  $AddressCopyWith<$Res> get rootAddress;
  $AddressCopyWith<$Res> get ownerAddress;
}

/// @nodoc
class _$JettonWalletDataCopyWithImpl<$Res, $Val extends JettonWalletData>
    implements $JettonWalletDataCopyWith<$Res> {
  _$JettonWalletDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JettonWalletData
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

  /// Create a copy of JettonWalletData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get rootAddress {
    return $AddressCopyWith<$Res>(_value.rootAddress, (value) {
      return _then(_value.copyWith(rootAddress: value) as $Val);
    });
  }

  /// Create a copy of JettonWalletData
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
abstract class _$$JettonWalletDataImplCopyWith<$Res>
    implements $JettonWalletDataCopyWith<$Res> {
  factory _$$JettonWalletDataImplCopyWith(_$JettonWalletDataImpl value,
          $Res Function(_$JettonWalletDataImpl) then) =
      __$$JettonWalletDataImplCopyWithImpl<$Res>;
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
class __$$JettonWalletDataImplCopyWithImpl<$Res>
    extends _$JettonWalletDataCopyWithImpl<$Res, _$JettonWalletDataImpl>
    implements _$$JettonWalletDataImplCopyWith<$Res> {
  __$$JettonWalletDataImplCopyWithImpl(_$JettonWalletDataImpl _value,
      $Res Function(_$JettonWalletDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of JettonWalletData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rootAddress = null,
    Object? ownerAddress = null,
    Object? balance = null,
  }) {
    return _then(_$JettonWalletDataImpl(
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
class _$JettonWalletDataImpl implements _JettonWalletData {
  const _$JettonWalletDataImpl(
      {required this.rootAddress,
      required this.ownerAddress,
      @amountJsonConverter required this.balance});

  factory _$JettonWalletDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$JettonWalletDataImplFromJson(json);

  @override
  final Address rootAddress;
  @override
  final Address ownerAddress;
  @override
  @amountJsonConverter
  final BigInt balance;

  @override
  String toString() {
    return 'JettonWalletData(rootAddress: $rootAddress, ownerAddress: $ownerAddress, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JettonWalletDataImpl &&
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

  /// Create a copy of JettonWalletData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JettonWalletDataImplCopyWith<_$JettonWalletDataImpl> get copyWith =>
      __$$JettonWalletDataImplCopyWithImpl<_$JettonWalletDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JettonWalletDataImplToJson(
      this,
    );
  }
}

abstract class _JettonWalletData implements JettonWalletData {
  const factory _JettonWalletData(
          {required final Address rootAddress,
          required final Address ownerAddress,
          @amountJsonConverter required final BigInt balance}) =
      _$JettonWalletDataImpl;

  factory _JettonWalletData.fromJson(Map<String, dynamic> json) =
      _$JettonWalletDataImpl.fromJson;

  @override
  Address get rootAddress;
  @override
  Address get ownerAddress;
  @override
  @amountJsonConverter
  BigInt get balance;

  /// Create a copy of JettonWalletData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JettonWalletDataImplCopyWith<_$JettonWalletDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
