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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenWalletDetails _$TokenWalletDetailsFromJson(Map<String, dynamic> json) {
  return _TokenWalletDetails.fromJson(json);
}

/// @nodoc
mixin _$TokenWalletDetails {
  String get rootAddress => throw _privateConstructorUsedError;
  String get ownerAddress => throw _privateConstructorUsedError;
  String get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenWalletDetailsCopyWith<TokenWalletDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenWalletDetailsCopyWith<$Res> {
  factory $TokenWalletDetailsCopyWith(
          TokenWalletDetails value, $Res Function(TokenWalletDetails) then) =
      _$TokenWalletDetailsCopyWithImpl<$Res, TokenWalletDetails>;
  @useResult
  $Res call({String rootAddress, String ownerAddress, String balance});
}

/// @nodoc
class _$TokenWalletDetailsCopyWithImpl<$Res, $Val extends TokenWalletDetails>
    implements $TokenWalletDetailsCopyWith<$Res> {
  _$TokenWalletDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as String,
      ownerAddress: null == ownerAddress
          ? _value.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenWalletDetailsCopyWith<$Res>
    implements $TokenWalletDetailsCopyWith<$Res> {
  factory _$$_TokenWalletDetailsCopyWith(_$_TokenWalletDetails value,
          $Res Function(_$_TokenWalletDetails) then) =
      __$$_TokenWalletDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rootAddress, String ownerAddress, String balance});
}

/// @nodoc
class __$$_TokenWalletDetailsCopyWithImpl<$Res>
    extends _$TokenWalletDetailsCopyWithImpl<$Res, _$_TokenWalletDetails>
    implements _$$_TokenWalletDetailsCopyWith<$Res> {
  __$$_TokenWalletDetailsCopyWithImpl(
      _$_TokenWalletDetails _value, $Res Function(_$_TokenWalletDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rootAddress = null,
    Object? ownerAddress = null,
    Object? balance = null,
  }) {
    return _then(_$_TokenWalletDetails(
      rootAddress: null == rootAddress
          ? _value.rootAddress
          : rootAddress // ignore: cast_nullable_to_non_nullable
              as String,
      ownerAddress: null == ownerAddress
          ? _value.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenWalletDetails implements _TokenWalletDetails {
  const _$_TokenWalletDetails(
      {required this.rootAddress,
      required this.ownerAddress,
      required this.balance});

  factory _$_TokenWalletDetails.fromJson(Map<String, dynamic> json) =>
      _$$_TokenWalletDetailsFromJson(json);

  @override
  final String rootAddress;
  @override
  final String ownerAddress;
  @override
  final String balance;

  @override
  String toString() {
    return 'TokenWalletDetails(rootAddress: $rootAddress, ownerAddress: $ownerAddress, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenWalletDetails &&
            (identical(other.rootAddress, rootAddress) ||
                other.rootAddress == rootAddress) &&
            (identical(other.ownerAddress, ownerAddress) ||
                other.ownerAddress == ownerAddress) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rootAddress, ownerAddress, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenWalletDetailsCopyWith<_$_TokenWalletDetails> get copyWith =>
      __$$_TokenWalletDetailsCopyWithImpl<_$_TokenWalletDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenWalletDetailsToJson(
      this,
    );
  }
}

abstract class _TokenWalletDetails implements TokenWalletDetails {
  const factory _TokenWalletDetails(
      {required final String rootAddress,
      required final String ownerAddress,
      required final String balance}) = _$_TokenWalletDetails;

  factory _TokenWalletDetails.fromJson(Map<String, dynamic> json) =
      _$_TokenWalletDetails.fromJson;

  @override
  String get rootAddress;
  @override
  String get ownerAddress;
  @override
  String get balance;
  @override
  @JsonKey(ignore: true)
  _$$_TokenWalletDetailsCopyWith<_$_TokenWalletDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
