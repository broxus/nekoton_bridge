// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_incoming_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenIncomingTransfer _$TokenIncomingTransferFromJson(
    Map<String, dynamic> json) {
  return _TokenIncomingTransfer.fromJson(json);
}

/// @nodoc
mixin _$TokenIncomingTransfer {
  String get tokens => throw _privateConstructorUsedError;
  String get senderAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenIncomingTransferCopyWith<TokenIncomingTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenIncomingTransferCopyWith<$Res> {
  factory $TokenIncomingTransferCopyWith(TokenIncomingTransfer value,
          $Res Function(TokenIncomingTransfer) then) =
      _$TokenIncomingTransferCopyWithImpl<$Res>;
  $Res call({String tokens, String senderAddress});
}

/// @nodoc
class _$TokenIncomingTransferCopyWithImpl<$Res>
    implements $TokenIncomingTransferCopyWith<$Res> {
  _$TokenIncomingTransferCopyWithImpl(this._value, this._then);

  final TokenIncomingTransfer _value;
  // ignore: unused_field
  final $Res Function(TokenIncomingTransfer) _then;

  @override
  $Res call({
    Object? tokens = freezed,
    Object? senderAddress = freezed,
  }) {
    return _then(_value.copyWith(
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as String,
      senderAddress: senderAddress == freezed
          ? _value.senderAddress
          : senderAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TokenIncomingTransferCopyWith<$Res>
    implements $TokenIncomingTransferCopyWith<$Res> {
  factory _$$_TokenIncomingTransferCopyWith(_$_TokenIncomingTransfer value,
          $Res Function(_$_TokenIncomingTransfer) then) =
      __$$_TokenIncomingTransferCopyWithImpl<$Res>;
  @override
  $Res call({String tokens, String senderAddress});
}

/// @nodoc
class __$$_TokenIncomingTransferCopyWithImpl<$Res>
    extends _$TokenIncomingTransferCopyWithImpl<$Res>
    implements _$$_TokenIncomingTransferCopyWith<$Res> {
  __$$_TokenIncomingTransferCopyWithImpl(_$_TokenIncomingTransfer _value,
      $Res Function(_$_TokenIncomingTransfer) _then)
      : super(_value, (v) => _then(v as _$_TokenIncomingTransfer));

  @override
  _$_TokenIncomingTransfer get _value =>
      super._value as _$_TokenIncomingTransfer;

  @override
  $Res call({
    Object? tokens = freezed,
    Object? senderAddress = freezed,
  }) {
    return _then(_$_TokenIncomingTransfer(
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as String,
      senderAddress: senderAddress == freezed
          ? _value.senderAddress
          : senderAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenIncomingTransfer implements _TokenIncomingTransfer {
  const _$_TokenIncomingTransfer(
      {required this.tokens, required this.senderAddress});

  factory _$_TokenIncomingTransfer.fromJson(Map<String, dynamic> json) =>
      _$$_TokenIncomingTransferFromJson(json);

  @override
  final String tokens;
  @override
  final String senderAddress;

  @override
  String toString() {
    return 'TokenIncomingTransfer(tokens: $tokens, senderAddress: $senderAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenIncomingTransfer &&
            const DeepCollectionEquality().equals(other.tokens, tokens) &&
            const DeepCollectionEquality()
                .equals(other.senderAddress, senderAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tokens),
      const DeepCollectionEquality().hash(senderAddress));

  @JsonKey(ignore: true)
  @override
  _$$_TokenIncomingTransferCopyWith<_$_TokenIncomingTransfer> get copyWith =>
      __$$_TokenIncomingTransferCopyWithImpl<_$_TokenIncomingTransfer>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenIncomingTransferToJson(
      this,
    );
  }
}

abstract class _TokenIncomingTransfer implements TokenIncomingTransfer {
  const factory _TokenIncomingTransfer(
      {required final String tokens,
      required final String senderAddress}) = _$_TokenIncomingTransfer;

  factory _TokenIncomingTransfer.fromJson(Map<String, dynamic> json) =
      _$_TokenIncomingTransfer.fromJson;

  @override
  String get tokens;
  @override
  String get senderAddress;
  @override
  @JsonKey(ignore: true)
  _$$_TokenIncomingTransferCopyWith<_$_TokenIncomingTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}
