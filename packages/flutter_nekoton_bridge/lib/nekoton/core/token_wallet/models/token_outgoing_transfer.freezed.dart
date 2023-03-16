// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_outgoing_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenOutgoingTransfer _$TokenOutgoingTransferFromJson(
    Map<String, dynamic> json) {
  return _TokenOutgoingTransfer.fromJson(json);
}

/// @nodoc
mixin _$TokenOutgoingTransfer {
  TransferRecipient get to => throw _privateConstructorUsedError;
  String get tokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenOutgoingTransferCopyWith<TokenOutgoingTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenOutgoingTransferCopyWith<$Res> {
  factory $TokenOutgoingTransferCopyWith(TokenOutgoingTransfer value,
          $Res Function(TokenOutgoingTransfer) then) =
      _$TokenOutgoingTransferCopyWithImpl<$Res>;
  $Res call({TransferRecipient to, String tokens});

  $TransferRecipientCopyWith<$Res> get to;
}

/// @nodoc
class _$TokenOutgoingTransferCopyWithImpl<$Res>
    implements $TokenOutgoingTransferCopyWith<$Res> {
  _$TokenOutgoingTransferCopyWithImpl(this._value, this._then);

  final TokenOutgoingTransfer _value;
  // ignore: unused_field
  final $Res Function(TokenOutgoingTransfer) _then;

  @override
  $Res call({
    Object? to = freezed,
    Object? tokens = freezed,
  }) {
    return _then(_value.copyWith(
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as TransferRecipient,
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $TransferRecipientCopyWith<$Res> get to {
    return $TransferRecipientCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc
abstract class _$$_TokenOutgoingTransferCopyWith<$Res>
    implements $TokenOutgoingTransferCopyWith<$Res> {
  factory _$$_TokenOutgoingTransferCopyWith(_$_TokenOutgoingTransfer value,
          $Res Function(_$_TokenOutgoingTransfer) then) =
      __$$_TokenOutgoingTransferCopyWithImpl<$Res>;
  @override
  $Res call({TransferRecipient to, String tokens});

  @override
  $TransferRecipientCopyWith<$Res> get to;
}

/// @nodoc
class __$$_TokenOutgoingTransferCopyWithImpl<$Res>
    extends _$TokenOutgoingTransferCopyWithImpl<$Res>
    implements _$$_TokenOutgoingTransferCopyWith<$Res> {
  __$$_TokenOutgoingTransferCopyWithImpl(_$_TokenOutgoingTransfer _value,
      $Res Function(_$_TokenOutgoingTransfer) _then)
      : super(_value, (v) => _then(v as _$_TokenOutgoingTransfer));

  @override
  _$_TokenOutgoingTransfer get _value =>
      super._value as _$_TokenOutgoingTransfer;

  @override
  $Res call({
    Object? to = freezed,
    Object? tokens = freezed,
  }) {
    return _then(_$_TokenOutgoingTransfer(
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as TransferRecipient,
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenOutgoingTransfer implements _TokenOutgoingTransfer {
  const _$_TokenOutgoingTransfer({required this.to, required this.tokens});

  factory _$_TokenOutgoingTransfer.fromJson(Map<String, dynamic> json) =>
      _$$_TokenOutgoingTransferFromJson(json);

  @override
  final TransferRecipient to;
  @override
  final String tokens;

  @override
  String toString() {
    return 'TokenOutgoingTransfer(to: $to, tokens: $tokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenOutgoingTransfer &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.tokens, tokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(tokens));

  @JsonKey(ignore: true)
  @override
  _$$_TokenOutgoingTransferCopyWith<_$_TokenOutgoingTransfer> get copyWith =>
      __$$_TokenOutgoingTransferCopyWithImpl<_$_TokenOutgoingTransfer>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenOutgoingTransferToJson(
      this,
    );
  }
}

abstract class _TokenOutgoingTransfer implements TokenOutgoingTransfer {
  const factory _TokenOutgoingTransfer(
      {required final TransferRecipient to,
      required final String tokens}) = _$_TokenOutgoingTransfer;

  factory _TokenOutgoingTransfer.fromJson(Map<String, dynamic> json) =
      _$_TokenOutgoingTransfer.fromJson;

  @override
  TransferRecipient get to;
  @override
  String get tokens;
  @override
  @JsonKey(ignore: true)
  _$$_TokenOutgoingTransferCopyWith<_$_TokenOutgoingTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}
