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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LedgerSignatureContext _$LedgerSignatureContextFromJson(
    Map<String, dynamic> json) {
  return _LedgerSignatureContext.fromJson(json);
}

/// @nodoc
mixin _$LedgerSignatureContext {
  int get decimals => throw _privateConstructorUsedError;
  String get asset => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LedgerSignatureContextCopyWith<LedgerSignatureContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerSignatureContextCopyWith<$Res> {
  factory $LedgerSignatureContextCopyWith(LedgerSignatureContext value,
          $Res Function(LedgerSignatureContext) then) =
      _$LedgerSignatureContextCopyWithImpl<$Res, LedgerSignatureContext>;
  @useResult
  $Res call({int decimals, String asset, String amount, String address});
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
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LedgerSignatureContextCopyWith<$Res>
    implements $LedgerSignatureContextCopyWith<$Res> {
  factory _$$_LedgerSignatureContextCopyWith(_$_LedgerSignatureContext value,
          $Res Function(_$_LedgerSignatureContext) then) =
      __$$_LedgerSignatureContextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int decimals, String asset, String amount, String address});
}

/// @nodoc
class __$$_LedgerSignatureContextCopyWithImpl<$Res>
    extends _$LedgerSignatureContextCopyWithImpl<$Res,
        _$_LedgerSignatureContext>
    implements _$$_LedgerSignatureContextCopyWith<$Res> {
  __$$_LedgerSignatureContextCopyWithImpl(_$_LedgerSignatureContext _value,
      $Res Function(_$_LedgerSignatureContext) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decimals = null,
    Object? asset = null,
    Object? amount = null,
    Object? address = null,
  }) {
    return _then(_$_LedgerSignatureContext(
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
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LedgerSignatureContext implements _LedgerSignatureContext {
  const _$_LedgerSignatureContext(
      {required this.decimals,
      required this.asset,
      required this.amount,
      required this.address});

  factory _$_LedgerSignatureContext.fromJson(Map<String, dynamic> json) =>
      _$$_LedgerSignatureContextFromJson(json);

  @override
  final int decimals;
  @override
  final String asset;
  @override
  final String amount;
  @override
  final String address;

  @override
  String toString() {
    return 'LedgerSignatureContext(decimals: $decimals, asset: $asset, amount: $amount, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LedgerSignatureContext &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, decimals, asset, amount, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LedgerSignatureContextCopyWith<_$_LedgerSignatureContext> get copyWith =>
      __$$_LedgerSignatureContextCopyWithImpl<_$_LedgerSignatureContext>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LedgerSignatureContextToJson(
      this,
    );
  }
}

abstract class _LedgerSignatureContext implements LedgerSignatureContext {
  const factory _LedgerSignatureContext(
      {required final int decimals,
      required final String asset,
      required final String amount,
      required final String address}) = _$_LedgerSignatureContext;

  factory _LedgerSignatureContext.fromJson(Map<String, dynamic> json) =
      _$_LedgerSignatureContext.fromJson;

  @override
  int get decimals;
  @override
  String get asset;
  @override
  String get amount;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_LedgerSignatureContextCopyWith<_$_LedgerSignatureContext> get copyWith =>
      throw _privateConstructorUsedError;
}
