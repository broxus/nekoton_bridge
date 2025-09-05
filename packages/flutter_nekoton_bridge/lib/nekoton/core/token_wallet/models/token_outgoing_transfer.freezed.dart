// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_outgoing_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenOutgoingTransfer {
  TransferRecipient get to;
  BigInt get tokens;

  /// Create a copy of TokenOutgoingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenOutgoingTransferCopyWith<TokenOutgoingTransfer> get copyWith =>
      _$TokenOutgoingTransferCopyWithImpl<TokenOutgoingTransfer>(
          this as TokenOutgoingTransfer, _$identity);

  /// Serializes this TokenOutgoingTransfer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenOutgoingTransfer &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.tokens, tokens) || other.tokens == tokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, to, tokens);

  @override
  String toString() {
    return 'TokenOutgoingTransfer(to: $to, tokens: $tokens)';
  }
}

/// @nodoc
abstract mixin class $TokenOutgoingTransferCopyWith<$Res> {
  factory $TokenOutgoingTransferCopyWith(TokenOutgoingTransfer value,
          $Res Function(TokenOutgoingTransfer) _then) =
      _$TokenOutgoingTransferCopyWithImpl;
  @useResult
  $Res call({TransferRecipient to, BigInt tokens});

  $TransferRecipientCopyWith<$Res> get to;
}

/// @nodoc
class _$TokenOutgoingTransferCopyWithImpl<$Res>
    implements $TokenOutgoingTransferCopyWith<$Res> {
  _$TokenOutgoingTransferCopyWithImpl(this._self, this._then);

  final TokenOutgoingTransfer _self;
  final $Res Function(TokenOutgoingTransfer) _then;

  /// Create a copy of TokenOutgoingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? tokens = null,
  }) {
    return _then(_self.copyWith(
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as TransferRecipient,
      tokens: null == tokens
          ? _self.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  /// Create a copy of TokenOutgoingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransferRecipientCopyWith<$Res> get to {
    return $TransferRecipientCopyWith<$Res>(_self.to, (value) {
      return _then(_self.copyWith(to: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _TokenOutgoingTransfer implements TokenOutgoingTransfer {
  const _TokenOutgoingTransfer({required this.to, required this.tokens});
  factory _TokenOutgoingTransfer.fromJson(Map<String, dynamic> json) =>
      _$TokenOutgoingTransferFromJson(json);

  @override
  final TransferRecipient to;
  @override
  final BigInt tokens;

  /// Create a copy of TokenOutgoingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TokenOutgoingTransferCopyWith<_TokenOutgoingTransfer> get copyWith =>
      __$TokenOutgoingTransferCopyWithImpl<_TokenOutgoingTransfer>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenOutgoingTransferToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenOutgoingTransfer &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.tokens, tokens) || other.tokens == tokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, to, tokens);

  @override
  String toString() {
    return 'TokenOutgoingTransfer(to: $to, tokens: $tokens)';
  }
}

/// @nodoc
abstract mixin class _$TokenOutgoingTransferCopyWith<$Res>
    implements $TokenOutgoingTransferCopyWith<$Res> {
  factory _$TokenOutgoingTransferCopyWith(_TokenOutgoingTransfer value,
          $Res Function(_TokenOutgoingTransfer) _then) =
      __$TokenOutgoingTransferCopyWithImpl;
  @override
  @useResult
  $Res call({TransferRecipient to, BigInt tokens});

  @override
  $TransferRecipientCopyWith<$Res> get to;
}

/// @nodoc
class __$TokenOutgoingTransferCopyWithImpl<$Res>
    implements _$TokenOutgoingTransferCopyWith<$Res> {
  __$TokenOutgoingTransferCopyWithImpl(this._self, this._then);

  final _TokenOutgoingTransfer _self;
  final $Res Function(_TokenOutgoingTransfer) _then;

  /// Create a copy of TokenOutgoingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? to = null,
    Object? tokens = null,
  }) {
    return _then(_TokenOutgoingTransfer(
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as TransferRecipient,
      tokens: null == tokens
          ? _self.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  /// Create a copy of TokenOutgoingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransferRecipientCopyWith<$Res> get to {
    return $TransferRecipientCopyWith<$Res>(_self.to, (value) {
      return _then(_self.copyWith(to: value));
    });
  }
}

// dart format on
