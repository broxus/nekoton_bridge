// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'root_token_contract_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RootTokenContractDetails {
  TokenWalletVersion get version;
  String get name;
  String get symbol;
  int get decimals;
  Address get ownerAddress;
  String get totalSupply;

  /// Create a copy of RootTokenContractDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RootTokenContractDetailsCopyWith<RootTokenContractDetails> get copyWith =>
      _$RootTokenContractDetailsCopyWithImpl<RootTokenContractDetails>(
          this as RootTokenContractDetails, _$identity);

  /// Serializes this RootTokenContractDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RootTokenContractDetails &&
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

  @override
  String toString() {
    return 'RootTokenContractDetails(version: $version, name: $name, symbol: $symbol, decimals: $decimals, ownerAddress: $ownerAddress, totalSupply: $totalSupply)';
  }
}

/// @nodoc
abstract mixin class $RootTokenContractDetailsCopyWith<$Res> {
  factory $RootTokenContractDetailsCopyWith(RootTokenContractDetails value,
          $Res Function(RootTokenContractDetails) _then) =
      _$RootTokenContractDetailsCopyWithImpl;
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
class _$RootTokenContractDetailsCopyWithImpl<$Res>
    implements $RootTokenContractDetailsCopyWith<$Res> {
  _$RootTokenContractDetailsCopyWithImpl(this._self, this._then);

  final RootTokenContractDetails _self;
  final $Res Function(RootTokenContractDetails) _then;

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
    return _then(_self.copyWith(
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as TokenWalletVersion,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _self.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      ownerAddress: null == ownerAddress
          ? _self.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      totalSupply: null == totalSupply
          ? _self.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RootTokenContractDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get ownerAddress {
    return $AddressCopyWith<$Res>(_self.ownerAddress, (value) {
      return _then(_self.copyWith(ownerAddress: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _RootTokenContractDetails implements RootTokenContractDetails {
  const _RootTokenContractDetails(
      {required this.version,
      required this.name,
      required this.symbol,
      required this.decimals,
      required this.ownerAddress,
      required this.totalSupply});
  factory _RootTokenContractDetails.fromJson(Map<String, dynamic> json) =>
      _$RootTokenContractDetailsFromJson(json);

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

  /// Create a copy of RootTokenContractDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RootTokenContractDetailsCopyWith<_RootTokenContractDetails> get copyWith =>
      __$RootTokenContractDetailsCopyWithImpl<_RootTokenContractDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RootTokenContractDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RootTokenContractDetails &&
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

  @override
  String toString() {
    return 'RootTokenContractDetails(version: $version, name: $name, symbol: $symbol, decimals: $decimals, ownerAddress: $ownerAddress, totalSupply: $totalSupply)';
  }
}

/// @nodoc
abstract mixin class _$RootTokenContractDetailsCopyWith<$Res>
    implements $RootTokenContractDetailsCopyWith<$Res> {
  factory _$RootTokenContractDetailsCopyWith(_RootTokenContractDetails value,
          $Res Function(_RootTokenContractDetails) _then) =
      __$RootTokenContractDetailsCopyWithImpl;
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
class __$RootTokenContractDetailsCopyWithImpl<$Res>
    implements _$RootTokenContractDetailsCopyWith<$Res> {
  __$RootTokenContractDetailsCopyWithImpl(this._self, this._then);

  final _RootTokenContractDetails _self;
  final $Res Function(_RootTokenContractDetails) _then;

  /// Create a copy of RootTokenContractDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? version = null,
    Object? name = null,
    Object? symbol = null,
    Object? decimals = null,
    Object? ownerAddress = null,
    Object? totalSupply = null,
  }) {
    return _then(_RootTokenContractDetails(
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as TokenWalletVersion,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _self.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      ownerAddress: null == ownerAddress
          ? _self.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      totalSupply: null == totalSupply
          ? _self.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RootTokenContractDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get ownerAddress {
    return $AddressCopyWith<$Res>(_self.ownerAddress, (value) {
      return _then(_self.copyWith(ownerAddress: value));
    });
  }
}

// dart format on
