// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'root_token_contract_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RootTokenContractDetails _$RootTokenContractDetailsFromJson(
    Map<String, dynamic> json) {
  return _RootTokenContractDetails.fromJson(json);
}

/// @nodoc
mixin _$RootTokenContractDetails {
  TokenWalletVersion get version => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  int get decimals => throw _privateConstructorUsedError;
  Address get ownerAddress => throw _privateConstructorUsedError;
  String get totalSupply => throw _privateConstructorUsedError;

  /// Serializes this RootTokenContractDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RootTokenContractDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RootTokenContractDetailsCopyWith<RootTokenContractDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootTokenContractDetailsCopyWith<$Res> {
  factory $RootTokenContractDetailsCopyWith(RootTokenContractDetails value,
          $Res Function(RootTokenContractDetails) then) =
      _$RootTokenContractDetailsCopyWithImpl<$Res, RootTokenContractDetails>;
  @useResult
  $Res call(
      {TokenWalletVersion version,
      String name,
      String symbol,
      int decimals,
      Address ownerAddress,
      String totalSupply});

  $AddressCopyWith<$Res> get ownerAddress;
}

/// @nodoc
class _$RootTokenContractDetailsCopyWithImpl<$Res,
        $Val extends RootTokenContractDetails>
    implements $RootTokenContractDetailsCopyWith<$Res> {
  _$RootTokenContractDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RootTokenContractDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? name = null,
    Object? symbol = null,
    Object? decimals = null,
    Object? ownerAddress = null,
    Object? totalSupply = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as TokenWalletVersion,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      ownerAddress: null == ownerAddress
          ? _value.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      totalSupply: null == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of RootTokenContractDetails
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
abstract class _$$RootTokenContractDetailsImplCopyWith<$Res>
    implements $RootTokenContractDetailsCopyWith<$Res> {
  factory _$$RootTokenContractDetailsImplCopyWith(
          _$RootTokenContractDetailsImpl value,
          $Res Function(_$RootTokenContractDetailsImpl) then) =
      __$$RootTokenContractDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TokenWalletVersion version,
      String name,
      String symbol,
      int decimals,
      Address ownerAddress,
      String totalSupply});

  @override
  $AddressCopyWith<$Res> get ownerAddress;
}

/// @nodoc
class __$$RootTokenContractDetailsImplCopyWithImpl<$Res>
    extends _$RootTokenContractDetailsCopyWithImpl<$Res,
        _$RootTokenContractDetailsImpl>
    implements _$$RootTokenContractDetailsImplCopyWith<$Res> {
  __$$RootTokenContractDetailsImplCopyWithImpl(
      _$RootTokenContractDetailsImpl _value,
      $Res Function(_$RootTokenContractDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RootTokenContractDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? name = null,
    Object? symbol = null,
    Object? decimals = null,
    Object? ownerAddress = null,
    Object? totalSupply = null,
  }) {
    return _then(_$RootTokenContractDetailsImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as TokenWalletVersion,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      ownerAddress: null == ownerAddress
          ? _value.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      totalSupply: null == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RootTokenContractDetailsImpl implements _RootTokenContractDetails {
  const _$RootTokenContractDetailsImpl(
      {required this.version,
      required this.name,
      required this.symbol,
      required this.decimals,
      required this.ownerAddress,
      required this.totalSupply});

  factory _$RootTokenContractDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RootTokenContractDetailsImplFromJson(json);

  @override
  final TokenWalletVersion version;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final int decimals;
  @override
  final Address ownerAddress;
  @override
  final String totalSupply;

  @override
  String toString() {
    return 'RootTokenContractDetails(version: $version, name: $name, symbol: $symbol, decimals: $decimals, ownerAddress: $ownerAddress, totalSupply: $totalSupply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RootTokenContractDetailsImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.ownerAddress, ownerAddress) ||
                other.ownerAddress == ownerAddress) &&
            (identical(other.totalSupply, totalSupply) ||
                other.totalSupply == totalSupply));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, version, name, symbol, decimals, ownerAddress, totalSupply);

  /// Create a copy of RootTokenContractDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RootTokenContractDetailsImplCopyWith<_$RootTokenContractDetailsImpl>
      get copyWith => __$$RootTokenContractDetailsImplCopyWithImpl<
          _$RootTokenContractDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RootTokenContractDetailsImplToJson(
      this,
    );
  }
}

abstract class _RootTokenContractDetails implements RootTokenContractDetails {
  const factory _RootTokenContractDetails(
      {required final TokenWalletVersion version,
      required final String name,
      required final String symbol,
      required final int decimals,
      required final Address ownerAddress,
      required final String totalSupply}) = _$RootTokenContractDetailsImpl;

  factory _RootTokenContractDetails.fromJson(Map<String, dynamic> json) =
      _$RootTokenContractDetailsImpl.fromJson;

  @override
  TokenWalletVersion get version;
  @override
  String get name;
  @override
  String get symbol;
  @override
  int get decimals;
  @override
  Address get ownerAddress;
  @override
  String get totalSupply;

  /// Create a copy of RootTokenContractDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RootTokenContractDetailsImplCopyWith<_$RootTokenContractDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
