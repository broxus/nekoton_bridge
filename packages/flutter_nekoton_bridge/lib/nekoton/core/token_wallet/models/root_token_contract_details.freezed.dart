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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  String get ownerAddress => throw _privateConstructorUsedError;
  String get totalSupply => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      String ownerAddress,
      String totalSupply});
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
              as String,
      totalSupply: null == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RootTokenContractDetailsCopyWith<$Res>
    implements $RootTokenContractDetailsCopyWith<$Res> {
  factory _$$_RootTokenContractDetailsCopyWith(
          _$_RootTokenContractDetails value,
          $Res Function(_$_RootTokenContractDetails) then) =
      __$$_RootTokenContractDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TokenWalletVersion version,
      String name,
      String symbol,
      int decimals,
      String ownerAddress,
      String totalSupply});
}

/// @nodoc
class __$$_RootTokenContractDetailsCopyWithImpl<$Res>
    extends _$RootTokenContractDetailsCopyWithImpl<$Res,
        _$_RootTokenContractDetails>
    implements _$$_RootTokenContractDetailsCopyWith<$Res> {
  __$$_RootTokenContractDetailsCopyWithImpl(_$_RootTokenContractDetails _value,
      $Res Function(_$_RootTokenContractDetails) _then)
      : super(_value, _then);

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
    return _then(_$_RootTokenContractDetails(
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
              as String,
      totalSupply: null == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_RootTokenContractDetails implements _RootTokenContractDetails {
  const _$_RootTokenContractDetails(
      {required this.version,
      required this.name,
      required this.symbol,
      required this.decimals,
      required this.ownerAddress,
      required this.totalSupply});

  factory _$_RootTokenContractDetails.fromJson(Map<String, dynamic> json) =>
      _$$_RootTokenContractDetailsFromJson(json);

  @override
  final TokenWalletVersion version;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final int decimals;
  @override
  final String ownerAddress;
  @override
  final String totalSupply;

  @override
  String toString() {
    return 'RootTokenContractDetails(version: $version, name: $name, symbol: $symbol, decimals: $decimals, ownerAddress: $ownerAddress, totalSupply: $totalSupply)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RootTokenContractDetails &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, version, name, symbol, decimals, ownerAddress, totalSupply);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RootTokenContractDetailsCopyWith<_$_RootTokenContractDetails>
      get copyWith => __$$_RootTokenContractDetailsCopyWithImpl<
          _$_RootTokenContractDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RootTokenContractDetailsToJson(
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
      required final String ownerAddress,
      required final String totalSupply}) = _$_RootTokenContractDetails;

  factory _RootTokenContractDetails.fromJson(Map<String, dynamic> json) =
      _$_RootTokenContractDetails.fromJson;

  @override
  TokenWalletVersion get version;
  @override
  String get name;
  @override
  String get symbol;
  @override
  int get decimals;
  @override
  String get ownerAddress;
  @override
  String get totalSupply;
  @override
  @JsonKey(ignore: true)
  _$$_RootTokenContractDetailsCopyWith<_$_RootTokenContractDetails>
      get copyWith => throw _privateConstructorUsedError;
}
