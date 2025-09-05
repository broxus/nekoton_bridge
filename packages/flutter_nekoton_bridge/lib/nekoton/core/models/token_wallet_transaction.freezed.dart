// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_wallet_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
TokenWalletTransaction _$TokenWalletTransactionFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'transfer':
      return TokenWalletTransactionTransfer.fromJson(json);
    case 'internal_transfer':
      return TokenWalletTransactionInternalTransfer.fromJson(json);
    case 'incoming_transfer':
      return TokenWalletTransactionIncomingTransfer.fromJson(json);
    case 'outgoing_transfer':
      return TokenWalletTransactionOutgoingTransfer.fromJson(json);
    case 'swap_back':
      return TokenWalletTransactionSwapBack.fromJson(json);
    case 'accept':
      return TokenWalletTransactionAccept.fromJson(json);
    case 'transfer_bounced':
      return TokenWalletTransactionTransferBounced.fromJson(json);
    case 'swap_back_bounced':
      return TokenWalletTransactionSwapBackBounced.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'TokenWalletTransaction',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$TokenWalletTransaction {
  Object get data;

  /// Serializes this TokenWalletTransaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenWalletTransaction &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'TokenWalletTransaction(data: $data)';
  }
}

/// @nodoc
class $TokenWalletTransactionCopyWith<$Res> {
  $TokenWalletTransactionCopyWith(
      TokenWalletTransaction _, $Res Function(TokenWalletTransaction) __);
}

/// @nodoc
@JsonSerializable()
class TokenWalletTransactionTransfer implements TokenWalletTransaction {
  const TokenWalletTransactionTransfer(this.data, {final String? $type})
      : $type = $type ?? 'transfer';
  factory TokenWalletTransactionTransfer.fromJson(Map<String, dynamic> json) =>
      _$TokenWalletTransactionTransferFromJson(json);

  @override
  final JettonOutgoingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenWalletTransactionTransferCopyWith<TokenWalletTransactionTransfer>
      get copyWith => _$TokenWalletTransactionTransferCopyWithImpl<
          TokenWalletTransactionTransfer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenWalletTransactionTransferToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenWalletTransactionTransfer &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TokenWalletTransaction.transfer(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TokenWalletTransactionTransferCopyWith<$Res>
    implements $TokenWalletTransactionCopyWith<$Res> {
  factory $TokenWalletTransactionTransferCopyWith(
          TokenWalletTransactionTransfer value,
          $Res Function(TokenWalletTransactionTransfer) _then) =
      _$TokenWalletTransactionTransferCopyWithImpl;
  @useResult
  $Res call({JettonOutgoingTransfer data});

  $JettonOutgoingTransferCopyWith<$Res> get data;
}

/// @nodoc
class _$TokenWalletTransactionTransferCopyWithImpl<$Res>
    implements $TokenWalletTransactionTransferCopyWith<$Res> {
  _$TokenWalletTransactionTransferCopyWithImpl(this._self, this._then);

  final TokenWalletTransactionTransfer _self;
  final $Res Function(TokenWalletTransactionTransfer) _then;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TokenWalletTransactionTransfer(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as JettonOutgoingTransfer,
    ));
  }

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JettonOutgoingTransferCopyWith<$Res> get data {
    return $JettonOutgoingTransferCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TokenWalletTransactionInternalTransfer implements TokenWalletTransaction {
  const TokenWalletTransactionInternalTransfer(this.data, {final String? $type})
      : $type = $type ?? 'internal_transfer';
  factory TokenWalletTransactionInternalTransfer.fromJson(
          Map<String, dynamic> json) =>
      _$TokenWalletTransactionInternalTransferFromJson(json);

  @override
  final JettonIncomingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenWalletTransactionInternalTransferCopyWith<
          TokenWalletTransactionInternalTransfer>
      get copyWith => _$TokenWalletTransactionInternalTransferCopyWithImpl<
          TokenWalletTransactionInternalTransfer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenWalletTransactionInternalTransferToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenWalletTransactionInternalTransfer &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TokenWalletTransaction.internalTransfer(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TokenWalletTransactionInternalTransferCopyWith<$Res>
    implements $TokenWalletTransactionCopyWith<$Res> {
  factory $TokenWalletTransactionInternalTransferCopyWith(
          TokenWalletTransactionInternalTransfer value,
          $Res Function(TokenWalletTransactionInternalTransfer) _then) =
      _$TokenWalletTransactionInternalTransferCopyWithImpl;
  @useResult
  $Res call({JettonIncomingTransfer data});

  $JettonIncomingTransferCopyWith<$Res> get data;
}

/// @nodoc
class _$TokenWalletTransactionInternalTransferCopyWithImpl<$Res>
    implements $TokenWalletTransactionInternalTransferCopyWith<$Res> {
  _$TokenWalletTransactionInternalTransferCopyWithImpl(this._self, this._then);

  final TokenWalletTransactionInternalTransfer _self;
  final $Res Function(TokenWalletTransactionInternalTransfer) _then;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TokenWalletTransactionInternalTransfer(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as JettonIncomingTransfer,
    ));
  }

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JettonIncomingTransferCopyWith<$Res> get data {
    return $JettonIncomingTransferCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TokenWalletTransactionIncomingTransfer implements TokenWalletTransaction {
  const TokenWalletTransactionIncomingTransfer(this.data, {final String? $type})
      : $type = $type ?? 'incoming_transfer';
  factory TokenWalletTransactionIncomingTransfer.fromJson(
          Map<String, dynamic> json) =>
      _$TokenWalletTransactionIncomingTransferFromJson(json);

  @override
  final TokenIncomingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenWalletTransactionIncomingTransferCopyWith<
          TokenWalletTransactionIncomingTransfer>
      get copyWith => _$TokenWalletTransactionIncomingTransferCopyWithImpl<
          TokenWalletTransactionIncomingTransfer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenWalletTransactionIncomingTransferToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenWalletTransactionIncomingTransfer &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TokenWalletTransaction.incomingTransfer(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TokenWalletTransactionIncomingTransferCopyWith<$Res>
    implements $TokenWalletTransactionCopyWith<$Res> {
  factory $TokenWalletTransactionIncomingTransferCopyWith(
          TokenWalletTransactionIncomingTransfer value,
          $Res Function(TokenWalletTransactionIncomingTransfer) _then) =
      _$TokenWalletTransactionIncomingTransferCopyWithImpl;
  @useResult
  $Res call({TokenIncomingTransfer data});

  $TokenIncomingTransferCopyWith<$Res> get data;
}

/// @nodoc
class _$TokenWalletTransactionIncomingTransferCopyWithImpl<$Res>
    implements $TokenWalletTransactionIncomingTransferCopyWith<$Res> {
  _$TokenWalletTransactionIncomingTransferCopyWithImpl(this._self, this._then);

  final TokenWalletTransactionIncomingTransfer _self;
  final $Res Function(TokenWalletTransactionIncomingTransfer) _then;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TokenWalletTransactionIncomingTransfer(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenIncomingTransfer,
    ));
  }

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenIncomingTransferCopyWith<$Res> get data {
    return $TokenIncomingTransferCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TokenWalletTransactionOutgoingTransfer implements TokenWalletTransaction {
  const TokenWalletTransactionOutgoingTransfer(this.data, {final String? $type})
      : $type = $type ?? 'outgoing_transfer';
  factory TokenWalletTransactionOutgoingTransfer.fromJson(
          Map<String, dynamic> json) =>
      _$TokenWalletTransactionOutgoingTransferFromJson(json);

  @override
  final TokenOutgoingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenWalletTransactionOutgoingTransferCopyWith<
          TokenWalletTransactionOutgoingTransfer>
      get copyWith => _$TokenWalletTransactionOutgoingTransferCopyWithImpl<
          TokenWalletTransactionOutgoingTransfer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenWalletTransactionOutgoingTransferToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenWalletTransactionOutgoingTransfer &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TokenWalletTransaction.outgoingTransfer(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TokenWalletTransactionOutgoingTransferCopyWith<$Res>
    implements $TokenWalletTransactionCopyWith<$Res> {
  factory $TokenWalletTransactionOutgoingTransferCopyWith(
          TokenWalletTransactionOutgoingTransfer value,
          $Res Function(TokenWalletTransactionOutgoingTransfer) _then) =
      _$TokenWalletTransactionOutgoingTransferCopyWithImpl;
  @useResult
  $Res call({TokenOutgoingTransfer data});

  $TokenOutgoingTransferCopyWith<$Res> get data;
}

/// @nodoc
class _$TokenWalletTransactionOutgoingTransferCopyWithImpl<$Res>
    implements $TokenWalletTransactionOutgoingTransferCopyWith<$Res> {
  _$TokenWalletTransactionOutgoingTransferCopyWithImpl(this._self, this._then);

  final TokenWalletTransactionOutgoingTransfer _self;
  final $Res Function(TokenWalletTransactionOutgoingTransfer) _then;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TokenWalletTransactionOutgoingTransfer(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenOutgoingTransfer,
    ));
  }

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenOutgoingTransferCopyWith<$Res> get data {
    return $TokenOutgoingTransferCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TokenWalletTransactionSwapBack implements TokenWalletTransaction {
  const TokenWalletTransactionSwapBack(this.data, {final String? $type})
      : $type = $type ?? 'swap_back';
  factory TokenWalletTransactionSwapBack.fromJson(Map<String, dynamic> json) =>
      _$TokenWalletTransactionSwapBackFromJson(json);

  @override
  final TokenSwapBack data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenWalletTransactionSwapBackCopyWith<TokenWalletTransactionSwapBack>
      get copyWith => _$TokenWalletTransactionSwapBackCopyWithImpl<
          TokenWalletTransactionSwapBack>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenWalletTransactionSwapBackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenWalletTransactionSwapBack &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TokenWalletTransaction.swapBack(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TokenWalletTransactionSwapBackCopyWith<$Res>
    implements $TokenWalletTransactionCopyWith<$Res> {
  factory $TokenWalletTransactionSwapBackCopyWith(
          TokenWalletTransactionSwapBack value,
          $Res Function(TokenWalletTransactionSwapBack) _then) =
      _$TokenWalletTransactionSwapBackCopyWithImpl;
  @useResult
  $Res call({TokenSwapBack data});

  $TokenSwapBackCopyWith<$Res> get data;
}

/// @nodoc
class _$TokenWalletTransactionSwapBackCopyWithImpl<$Res>
    implements $TokenWalletTransactionSwapBackCopyWith<$Res> {
  _$TokenWalletTransactionSwapBackCopyWithImpl(this._self, this._then);

  final TokenWalletTransactionSwapBack _self;
  final $Res Function(TokenWalletTransactionSwapBack) _then;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TokenWalletTransactionSwapBack(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenSwapBack,
    ));
  }

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenSwapBackCopyWith<$Res> get data {
    return $TokenSwapBackCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TokenWalletTransactionAccept implements TokenWalletTransaction {
  const TokenWalletTransactionAccept(this.data, {final String? $type})
      : $type = $type ?? 'accept';
  factory TokenWalletTransactionAccept.fromJson(Map<String, dynamic> json) =>
      _$TokenWalletTransactionAcceptFromJson(json);

  @override
  final BigInt data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenWalletTransactionAcceptCopyWith<TokenWalletTransactionAccept>
      get copyWith => _$TokenWalletTransactionAcceptCopyWithImpl<
          TokenWalletTransactionAccept>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenWalletTransactionAcceptToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenWalletTransactionAccept &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TokenWalletTransaction.accept(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TokenWalletTransactionAcceptCopyWith<$Res>
    implements $TokenWalletTransactionCopyWith<$Res> {
  factory $TokenWalletTransactionAcceptCopyWith(
          TokenWalletTransactionAccept value,
          $Res Function(TokenWalletTransactionAccept) _then) =
      _$TokenWalletTransactionAcceptCopyWithImpl;
  @useResult
  $Res call({BigInt data});
}

/// @nodoc
class _$TokenWalletTransactionAcceptCopyWithImpl<$Res>
    implements $TokenWalletTransactionAcceptCopyWith<$Res> {
  _$TokenWalletTransactionAcceptCopyWithImpl(this._self, this._then);

  final TokenWalletTransactionAccept _self;
  final $Res Function(TokenWalletTransactionAccept) _then;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TokenWalletTransactionAccept(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TokenWalletTransactionTransferBounced implements TokenWalletTransaction {
  const TokenWalletTransactionTransferBounced(this.data, {final String? $type})
      : $type = $type ?? 'transfer_bounced';
  factory TokenWalletTransactionTransferBounced.fromJson(
          Map<String, dynamic> json) =>
      _$TokenWalletTransactionTransferBouncedFromJson(json);

  @override
  final BigInt data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenWalletTransactionTransferBouncedCopyWith<
          TokenWalletTransactionTransferBounced>
      get copyWith => _$TokenWalletTransactionTransferBouncedCopyWithImpl<
          TokenWalletTransactionTransferBounced>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenWalletTransactionTransferBouncedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenWalletTransactionTransferBounced &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TokenWalletTransaction.transferBounced(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TokenWalletTransactionTransferBouncedCopyWith<$Res>
    implements $TokenWalletTransactionCopyWith<$Res> {
  factory $TokenWalletTransactionTransferBouncedCopyWith(
          TokenWalletTransactionTransferBounced value,
          $Res Function(TokenWalletTransactionTransferBounced) _then) =
      _$TokenWalletTransactionTransferBouncedCopyWithImpl;
  @useResult
  $Res call({BigInt data});
}

/// @nodoc
class _$TokenWalletTransactionTransferBouncedCopyWithImpl<$Res>
    implements $TokenWalletTransactionTransferBouncedCopyWith<$Res> {
  _$TokenWalletTransactionTransferBouncedCopyWithImpl(this._self, this._then);

  final TokenWalletTransactionTransferBounced _self;
  final $Res Function(TokenWalletTransactionTransferBounced) _then;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TokenWalletTransactionTransferBounced(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TokenWalletTransactionSwapBackBounced implements TokenWalletTransaction {
  const TokenWalletTransactionSwapBackBounced(this.data, {final String? $type})
      : $type = $type ?? 'swap_back_bounced';
  factory TokenWalletTransactionSwapBackBounced.fromJson(
          Map<String, dynamic> json) =>
      _$TokenWalletTransactionSwapBackBouncedFromJson(json);

  @override
  final BigInt data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenWalletTransactionSwapBackBouncedCopyWith<
          TokenWalletTransactionSwapBackBounced>
      get copyWith => _$TokenWalletTransactionSwapBackBouncedCopyWithImpl<
          TokenWalletTransactionSwapBackBounced>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenWalletTransactionSwapBackBouncedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenWalletTransactionSwapBackBounced &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TokenWalletTransaction.swapBackBounced(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TokenWalletTransactionSwapBackBouncedCopyWith<$Res>
    implements $TokenWalletTransactionCopyWith<$Res> {
  factory $TokenWalletTransactionSwapBackBouncedCopyWith(
          TokenWalletTransactionSwapBackBounced value,
          $Res Function(TokenWalletTransactionSwapBackBounced) _then) =
      _$TokenWalletTransactionSwapBackBouncedCopyWithImpl;
  @useResult
  $Res call({BigInt data});
}

/// @nodoc
class _$TokenWalletTransactionSwapBackBouncedCopyWithImpl<$Res>
    implements $TokenWalletTransactionSwapBackBouncedCopyWith<$Res> {
  _$TokenWalletTransactionSwapBackBouncedCopyWithImpl(this._self, this._then);

  final TokenWalletTransactionSwapBackBounced _self;
  final $Res Function(TokenWalletTransactionSwapBackBounced) _then;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TokenWalletTransactionSwapBackBounced(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

// dart format on
