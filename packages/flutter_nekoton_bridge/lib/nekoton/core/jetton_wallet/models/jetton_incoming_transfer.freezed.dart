// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jetton_incoming_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JettonIncomingTransfer {
  BigInt get tokens;
  Address get from;

  /// Create a copy of JettonIncomingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JettonIncomingTransferCopyWith<JettonIncomingTransfer> get copyWith =>
      _$JettonIncomingTransferCopyWithImpl<JettonIncomingTransfer>(
          this as JettonIncomingTransfer, _$identity);

  /// Serializes this JettonIncomingTransfer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JettonIncomingTransfer &&
            (identical(other.tokens, tokens) || other.tokens == tokens) &&
            (identical(other.from, from) || other.from == from));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tokens, from);

  @override
  String toString() {
    return 'JettonIncomingTransfer(tokens: $tokens, from: $from)';
  }
}

/// @nodoc
abstract mixin class $JettonIncomingTransferCopyWith<$Res> {
  factory $JettonIncomingTransferCopyWith(JettonIncomingTransfer value,
          $Res Function(JettonIncomingTransfer) _then) =
      _$JettonIncomingTransferCopyWithImpl;
  @useResult
  $Res call({BigInt tokens, Address from});

  $AddressCopyWith<$Res> get from;
}

/// @nodoc
class _$JettonIncomingTransferCopyWithImpl<$Res>
    implements $JettonIncomingTransferCopyWith<$Res> {
  _$JettonIncomingTransferCopyWithImpl(this._self, this._then);

  final JettonIncomingTransfer _self;
  final $Res Function(JettonIncomingTransfer) _then;

  /// Create a copy of JettonIncomingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? from = null,
  }) {
    return _then(_self.copyWith(
      tokens: null == tokens
          ? _self.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as BigInt,
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  /// Create a copy of JettonIncomingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get from {
    return $AddressCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _JettonIncomingTransfer implements JettonIncomingTransfer {
  const _JettonIncomingTransfer({required this.tokens, required this.from});
  factory _JettonIncomingTransfer.fromJson(Map<String, dynamic> json) =>
      _$JettonIncomingTransferFromJson(json);

  @override
  final BigInt tokens;
  @override
  final Address from;

  /// Create a copy of JettonIncomingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JettonIncomingTransferCopyWith<_JettonIncomingTransfer> get copyWith =>
      __$JettonIncomingTransferCopyWithImpl<_JettonIncomingTransfer>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JettonIncomingTransferToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JettonIncomingTransfer &&
            (identical(other.tokens, tokens) || other.tokens == tokens) &&
            (identical(other.from, from) || other.from == from));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tokens, from);

  @override
  String toString() {
    return 'JettonIncomingTransfer(tokens: $tokens, from: $from)';
  }
}

/// @nodoc
abstract mixin class _$JettonIncomingTransferCopyWith<$Res>
    implements $JettonIncomingTransferCopyWith<$Res> {
  factory _$JettonIncomingTransferCopyWith(_JettonIncomingTransfer value,
          $Res Function(_JettonIncomingTransfer) _then) =
      __$JettonIncomingTransferCopyWithImpl;
  @override
  @useResult
  $Res call({BigInt tokens, Address from});

  @override
  $AddressCopyWith<$Res> get from;
}

/// @nodoc
class __$JettonIncomingTransferCopyWithImpl<$Res>
    implements _$JettonIncomingTransferCopyWith<$Res> {
  __$JettonIncomingTransferCopyWithImpl(this._self, this._then);

  final _JettonIncomingTransfer _self;
  final $Res Function(_JettonIncomingTransfer) _then;

  /// Create a copy of JettonIncomingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tokens = null,
    Object? from = null,
  }) {
    return _then(_JettonIncomingTransfer(
      tokens: null == tokens
          ? _self.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as BigInt,
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  /// Create a copy of JettonIncomingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get from {
    return $AddressCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }
}

// dart format on
