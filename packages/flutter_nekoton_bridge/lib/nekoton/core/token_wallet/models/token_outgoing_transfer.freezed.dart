// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_outgoing_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenOutgoingTransfer _$TokenOutgoingTransferFromJson(
    Map<String, dynamic> json) {
  return _TokenOutgoingTransfer.fromJson(json);
}

/// @nodoc
mixin _$TokenOutgoingTransfer {
  TransferRecipient get to => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get tokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenOutgoingTransferCopyWith<TokenOutgoingTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenOutgoingTransferCopyWith<$Res> {
  factory $TokenOutgoingTransferCopyWith(TokenOutgoingTransfer value,
          $Res Function(TokenOutgoingTransfer) then) =
      _$TokenOutgoingTransferCopyWithImpl<$Res, TokenOutgoingTransfer>;
  @useResult
  $Res call({TransferRecipient to, @amountJsonConverter BigInt tokens});

  $TransferRecipientCopyWith<$Res> get to;
}

/// @nodoc
class _$TokenOutgoingTransferCopyWithImpl<$Res,
        $Val extends TokenOutgoingTransfer>
    implements $TokenOutgoingTransferCopyWith<$Res> {
  _$TokenOutgoingTransferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? tokens = null,
  }) {
    return _then(_value.copyWith(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as TransferRecipient,
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransferRecipientCopyWith<$Res> get to {
    return $TransferRecipientCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokenOutgoingTransferImplCopyWith<$Res>
    implements $TokenOutgoingTransferCopyWith<$Res> {
  factory _$$TokenOutgoingTransferImplCopyWith(
          _$TokenOutgoingTransferImpl value,
          $Res Function(_$TokenOutgoingTransferImpl) then) =
      __$$TokenOutgoingTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TransferRecipient to, @amountJsonConverter BigInt tokens});

  @override
  $TransferRecipientCopyWith<$Res> get to;
}

/// @nodoc
class __$$TokenOutgoingTransferImplCopyWithImpl<$Res>
    extends _$TokenOutgoingTransferCopyWithImpl<$Res,
        _$TokenOutgoingTransferImpl>
    implements _$$TokenOutgoingTransferImplCopyWith<$Res> {
  __$$TokenOutgoingTransferImplCopyWithImpl(_$TokenOutgoingTransferImpl _value,
      $Res Function(_$TokenOutgoingTransferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? tokens = null,
  }) {
    return _then(_$TokenOutgoingTransferImpl(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as TransferRecipient,
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenOutgoingTransferImpl implements _TokenOutgoingTransfer {
  const _$TokenOutgoingTransferImpl(
      {required this.to, @amountJsonConverter required this.tokens});

  factory _$TokenOutgoingTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenOutgoingTransferImplFromJson(json);

  @override
  final TransferRecipient to;
  @override
  @amountJsonConverter
  final BigInt tokens;

  @override
  String toString() {
    return 'TokenOutgoingTransfer(to: $to, tokens: $tokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenOutgoingTransferImpl &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.tokens, tokens) || other.tokens == tokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, to, tokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenOutgoingTransferImplCopyWith<_$TokenOutgoingTransferImpl>
      get copyWith => __$$TokenOutgoingTransferImplCopyWithImpl<
          _$TokenOutgoingTransferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenOutgoingTransferImplToJson(
      this,
    );
  }
}

abstract class _TokenOutgoingTransfer implements TokenOutgoingTransfer {
  const factory _TokenOutgoingTransfer(
          {required final TransferRecipient to,
          @amountJsonConverter required final BigInt tokens}) =
      _$TokenOutgoingTransferImpl;

  factory _TokenOutgoingTransfer.fromJson(Map<String, dynamic> json) =
      _$TokenOutgoingTransferImpl.fromJson;

  @override
  TransferRecipient get to;
  @override
  @amountJsonConverter
  BigInt get tokens;
  @override
  @JsonKey(ignore: true)
  _$$TokenOutgoingTransferImplCopyWith<_$TokenOutgoingTransferImpl>
      get copyWith => throw _privateConstructorUsedError;
}
