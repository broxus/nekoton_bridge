// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_incoming_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenIncomingTransfer _$TokenIncomingTransferFromJson(
    Map<String, dynamic> json) {
  return _TokenIncomingTransfer.fromJson(json);
}

/// @nodoc
mixin _$TokenIncomingTransfer {
  @amountJsonConverter
  BigInt get tokens => throw _privateConstructorUsedError;
  Address get senderAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenIncomingTransferCopyWith<TokenIncomingTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenIncomingTransferCopyWith<$Res> {
  factory $TokenIncomingTransferCopyWith(TokenIncomingTransfer value,
          $Res Function(TokenIncomingTransfer) then) =
      _$TokenIncomingTransferCopyWithImpl<$Res, TokenIncomingTransfer>;
  @useResult
  $Res call({@amountJsonConverter BigInt tokens, Address senderAddress});

  $AddressCopyWith<$Res> get senderAddress;
}

/// @nodoc
class _$TokenIncomingTransferCopyWithImpl<$Res,
        $Val extends TokenIncomingTransfer>
    implements $TokenIncomingTransferCopyWith<$Res> {
  _$TokenIncomingTransferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? senderAddress = null,
  }) {
    return _then(_value.copyWith(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as BigInt,
      senderAddress: null == senderAddress
          ? _value.senderAddress
          : senderAddress // ignore: cast_nullable_to_non_nullable
              as Address,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get senderAddress {
    return $AddressCopyWith<$Res>(_value.senderAddress, (value) {
      return _then(_value.copyWith(senderAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokenIncomingTransferImplCopyWith<$Res>
    implements $TokenIncomingTransferCopyWith<$Res> {
  factory _$$TokenIncomingTransferImplCopyWith(
          _$TokenIncomingTransferImpl value,
          $Res Function(_$TokenIncomingTransferImpl) then) =
      __$$TokenIncomingTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@amountJsonConverter BigInt tokens, Address senderAddress});

  @override
  $AddressCopyWith<$Res> get senderAddress;
}

/// @nodoc
class __$$TokenIncomingTransferImplCopyWithImpl<$Res>
    extends _$TokenIncomingTransferCopyWithImpl<$Res,
        _$TokenIncomingTransferImpl>
    implements _$$TokenIncomingTransferImplCopyWith<$Res> {
  __$$TokenIncomingTransferImplCopyWithImpl(_$TokenIncomingTransferImpl _value,
      $Res Function(_$TokenIncomingTransferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? senderAddress = null,
  }) {
    return _then(_$TokenIncomingTransferImpl(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as BigInt,
      senderAddress: null == senderAddress
          ? _value.senderAddress
          : senderAddress // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenIncomingTransferImpl implements _TokenIncomingTransfer {
  const _$TokenIncomingTransferImpl(
      {@amountJsonConverter required this.tokens, required this.senderAddress});

  factory _$TokenIncomingTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenIncomingTransferImplFromJson(json);

  @override
  @amountJsonConverter
  final BigInt tokens;
  @override
  final Address senderAddress;

  @override
  String toString() {
    return 'TokenIncomingTransfer(tokens: $tokens, senderAddress: $senderAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenIncomingTransferImpl &&
            (identical(other.tokens, tokens) || other.tokens == tokens) &&
            (identical(other.senderAddress, senderAddress) ||
                other.senderAddress == senderAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tokens, senderAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenIncomingTransferImplCopyWith<_$TokenIncomingTransferImpl>
      get copyWith => __$$TokenIncomingTransferImplCopyWithImpl<
          _$TokenIncomingTransferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenIncomingTransferImplToJson(
      this,
    );
  }
}

abstract class _TokenIncomingTransfer implements TokenIncomingTransfer {
  const factory _TokenIncomingTransfer(
      {@amountJsonConverter required final BigInt tokens,
      required final Address senderAddress}) = _$TokenIncomingTransferImpl;

  factory _TokenIncomingTransfer.fromJson(Map<String, dynamic> json) =
      _$TokenIncomingTransferImpl.fromJson;

  @override
  @amountJsonConverter
  BigInt get tokens;
  @override
  Address get senderAddress;
  @override
  @JsonKey(ignore: true)
  _$$TokenIncomingTransferImplCopyWith<_$TokenIncomingTransferImpl>
      get copyWith => throw _privateConstructorUsedError;
}
