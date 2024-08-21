// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_signature_context.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LedgerSignatureContext _$LedgerSignatureContextFromJson(
    Map<String, dynamic> json) {
  return _LedgerSignatureContext.fromJson(json);
}

/// @nodoc
mixin _$LedgerSignatureContext {
  int get decimals => throw _privateConstructorUsedError;
  String get asset => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get amount => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;

  /// Serializes this LedgerSignatureContext to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LedgerSignatureContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LedgerSignatureContextCopyWith<LedgerSignatureContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerSignatureContextCopyWith<$Res> {
  factory $LedgerSignatureContextCopyWith(LedgerSignatureContext value,
          $Res Function(LedgerSignatureContext) then) =
      _$LedgerSignatureContextCopyWithImpl<$Res, LedgerSignatureContext>;
  @useResult
  $Res call(
      {int decimals,
      String asset,
      @amountJsonConverter BigInt amount,
      Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$LedgerSignatureContextCopyWithImpl<$Res,
        $Val extends LedgerSignatureContext>
    implements $LedgerSignatureContextCopyWith<$Res> {
  _$LedgerSignatureContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LedgerSignatureContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decimals = null,
    Object? asset = null,
    Object? amount = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ) as $Val);
  }

  /// Create a copy of LedgerSignatureContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LedgerSignatureContextImplCopyWith<$Res>
    implements $LedgerSignatureContextCopyWith<$Res> {
  factory _$$LedgerSignatureContextImplCopyWith(
          _$LedgerSignatureContextImpl value,
          $Res Function(_$LedgerSignatureContextImpl) then) =
      __$$LedgerSignatureContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int decimals,
      String asset,
      @amountJsonConverter BigInt amount,
      Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$LedgerSignatureContextImplCopyWithImpl<$Res>
    extends _$LedgerSignatureContextCopyWithImpl<$Res,
        _$LedgerSignatureContextImpl>
    implements _$$LedgerSignatureContextImplCopyWith<$Res> {
  __$$LedgerSignatureContextImplCopyWithImpl(
      _$LedgerSignatureContextImpl _value,
      $Res Function(_$LedgerSignatureContextImpl) _then)
      : super(_value, _then);

  /// Create a copy of LedgerSignatureContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decimals = null,
    Object? asset = null,
    Object? amount = null,
    Object? address = null,
  }) {
    return _then(_$LedgerSignatureContextImpl(
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LedgerSignatureContextImpl implements _LedgerSignatureContext {
  const _$LedgerSignatureContextImpl(
      {required this.decimals,
      required this.asset,
      @amountJsonConverter required this.amount,
      required this.address});

  factory _$LedgerSignatureContextImpl.fromJson(Map<String, dynamic> json) =>
      _$$LedgerSignatureContextImplFromJson(json);

  @override
  final int decimals;
  @override
  final String asset;
  @override
  @amountJsonConverter
  final BigInt amount;
  @override
  final Address address;

  @override
  String toString() {
    return 'LedgerSignatureContext(decimals: $decimals, asset: $asset, amount: $amount, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LedgerSignatureContextImpl &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, decimals, asset, amount, address);

  /// Create a copy of LedgerSignatureContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LedgerSignatureContextImplCopyWith<_$LedgerSignatureContextImpl>
      get copyWith => __$$LedgerSignatureContextImplCopyWithImpl<
          _$LedgerSignatureContextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LedgerSignatureContextImplToJson(
      this,
    );
  }
}

abstract class _LedgerSignatureContext implements LedgerSignatureContext {
  const factory _LedgerSignatureContext(
      {required final int decimals,
      required final String asset,
      @amountJsonConverter required final BigInt amount,
      required final Address address}) = _$LedgerSignatureContextImpl;

  factory _LedgerSignatureContext.fromJson(Map<String, dynamic> json) =
      _$LedgerSignatureContextImpl.fromJson;

  @override
  int get decimals;
  @override
  String get asset;
  @override
  @amountJsonConverter
  BigInt get amount;
  @override
  Address get address;

  /// Create a copy of LedgerSignatureContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LedgerSignatureContextImplCopyWith<_$LedgerSignatureContextImpl>
      get copyWith => throw _privateConstructorUsedError;
}
