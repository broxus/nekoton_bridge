// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_wallet_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenWalletTransaction _$TokenWalletTransactionFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'incoming_transfer':
      return _IncomingTransfer.fromJson(json);
    case 'outgoing_transfer':
      return _OutgoingTransfer.fromJson(json);
    case 'swap_back':
      return _SwapBack.fromJson(json);
    case 'accept':
      return _Accept.fromJson(json);
    case 'transfer_bounced':
      return _TransferBounced.fromJson(json);
    case 'swap_back_bounced':
      return _SwapBackBounced.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'TokenWalletTransaction',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$TokenWalletTransaction {
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenIncomingTransfer data) incomingTransfer,
    required TResult Function(TokenOutgoingTransfer data) outgoingTransfer,
    required TResult Function(TokenSwapBack data) swapBack,
    required TResult Function(@amountJsonConverter BigInt data) accept,
    required TResult Function(@amountJsonConverter BigInt data) transferBounced,
    required TResult Function(@amountJsonConverter BigInt data) swapBackBounced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult? Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult? Function(TokenSwapBack data)? swapBack,
    TResult? Function(@amountJsonConverter BigInt data)? accept,
    TResult? Function(@amountJsonConverter BigInt data)? transferBounced,
    TResult? Function(@amountJsonConverter BigInt data)? swapBackBounced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult Function(TokenSwapBack data)? swapBack,
    TResult Function(@amountJsonConverter BigInt data)? accept,
    TResult Function(@amountJsonConverter BigInt data)? transferBounced,
    TResult Function(@amountJsonConverter BigInt data)? swapBackBounced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomingTransfer value) incomingTransfer,
    required TResult Function(_OutgoingTransfer value) outgoingTransfer,
    required TResult Function(_SwapBack value) swapBack,
    required TResult Function(_Accept value) accept,
    required TResult Function(_TransferBounced value) transferBounced,
    required TResult Function(_SwapBackBounced value) swapBackBounced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingTransfer value)? incomingTransfer,
    TResult? Function(_OutgoingTransfer value)? outgoingTransfer,
    TResult? Function(_SwapBack value)? swapBack,
    TResult? Function(_Accept value)? accept,
    TResult? Function(_TransferBounced value)? transferBounced,
    TResult? Function(_SwapBackBounced value)? swapBackBounced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingTransfer value)? incomingTransfer,
    TResult Function(_OutgoingTransfer value)? outgoingTransfer,
    TResult Function(_SwapBack value)? swapBack,
    TResult Function(_Accept value)? accept,
    TResult Function(_TransferBounced value)? transferBounced,
    TResult Function(_SwapBackBounced value)? swapBackBounced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TokenWalletTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenWalletTransactionCopyWith<$Res> {
  factory $TokenWalletTransactionCopyWith(TokenWalletTransaction value,
          $Res Function(TokenWalletTransaction) then) =
      _$TokenWalletTransactionCopyWithImpl<$Res, TokenWalletTransaction>;
}

/// @nodoc
class _$TokenWalletTransactionCopyWithImpl<$Res,
        $Val extends TokenWalletTransaction>
    implements $TokenWalletTransactionCopyWith<$Res> {
  _$TokenWalletTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IncomingTransferImplCopyWith<$Res> {
  factory _$$IncomingTransferImplCopyWith(_$IncomingTransferImpl value,
          $Res Function(_$IncomingTransferImpl) then) =
      __$$IncomingTransferImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenIncomingTransfer data});

  $TokenIncomingTransferCopyWith<$Res> get data;
}

/// @nodoc
class __$$IncomingTransferImplCopyWithImpl<$Res>
    extends _$TokenWalletTransactionCopyWithImpl<$Res, _$IncomingTransferImpl>
    implements _$$IncomingTransferImplCopyWith<$Res> {
  __$$IncomingTransferImplCopyWithImpl(_$IncomingTransferImpl _value,
      $Res Function(_$IncomingTransferImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$IncomingTransferImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenIncomingTransfer,
    ));
  }

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenIncomingTransferCopyWith<$Res> get data {
    return $TokenIncomingTransferCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$IncomingTransferImpl implements _IncomingTransfer {
  const _$IncomingTransferImpl(this.data, {final String? $type})
      : $type = $type ?? 'incoming_transfer';

  factory _$IncomingTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncomingTransferImplFromJson(json);

  @override
  final TokenIncomingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenWalletTransaction.incomingTransfer(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomingTransferImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomingTransferImplCopyWith<_$IncomingTransferImpl> get copyWith =>
      __$$IncomingTransferImplCopyWithImpl<_$IncomingTransferImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenIncomingTransfer data) incomingTransfer,
    required TResult Function(TokenOutgoingTransfer data) outgoingTransfer,
    required TResult Function(TokenSwapBack data) swapBack,
    required TResult Function(@amountJsonConverter BigInt data) accept,
    required TResult Function(@amountJsonConverter BigInt data) transferBounced,
    required TResult Function(@amountJsonConverter BigInt data) swapBackBounced,
  }) {
    return incomingTransfer(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult? Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult? Function(TokenSwapBack data)? swapBack,
    TResult? Function(@amountJsonConverter BigInt data)? accept,
    TResult? Function(@amountJsonConverter BigInt data)? transferBounced,
    TResult? Function(@amountJsonConverter BigInt data)? swapBackBounced,
  }) {
    return incomingTransfer?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult Function(TokenSwapBack data)? swapBack,
    TResult Function(@amountJsonConverter BigInt data)? accept,
    TResult Function(@amountJsonConverter BigInt data)? transferBounced,
    TResult Function(@amountJsonConverter BigInt data)? swapBackBounced,
    required TResult orElse(),
  }) {
    if (incomingTransfer != null) {
      return incomingTransfer(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomingTransfer value) incomingTransfer,
    required TResult Function(_OutgoingTransfer value) outgoingTransfer,
    required TResult Function(_SwapBack value) swapBack,
    required TResult Function(_Accept value) accept,
    required TResult Function(_TransferBounced value) transferBounced,
    required TResult Function(_SwapBackBounced value) swapBackBounced,
  }) {
    return incomingTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingTransfer value)? incomingTransfer,
    TResult? Function(_OutgoingTransfer value)? outgoingTransfer,
    TResult? Function(_SwapBack value)? swapBack,
    TResult? Function(_Accept value)? accept,
    TResult? Function(_TransferBounced value)? transferBounced,
    TResult? Function(_SwapBackBounced value)? swapBackBounced,
  }) {
    return incomingTransfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingTransfer value)? incomingTransfer,
    TResult Function(_OutgoingTransfer value)? outgoingTransfer,
    TResult Function(_SwapBack value)? swapBack,
    TResult Function(_Accept value)? accept,
    TResult Function(_TransferBounced value)? transferBounced,
    TResult Function(_SwapBackBounced value)? swapBackBounced,
    required TResult orElse(),
  }) {
    if (incomingTransfer != null) {
      return incomingTransfer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IncomingTransferImplToJson(
      this,
    );
  }
}

abstract class _IncomingTransfer implements TokenWalletTransaction {
  const factory _IncomingTransfer(final TokenIncomingTransfer data) =
      _$IncomingTransferImpl;

  factory _IncomingTransfer.fromJson(Map<String, dynamic> json) =
      _$IncomingTransferImpl.fromJson;

  @override
  TokenIncomingTransfer get data;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncomingTransferImplCopyWith<_$IncomingTransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OutgoingTransferImplCopyWith<$Res> {
  factory _$$OutgoingTransferImplCopyWith(_$OutgoingTransferImpl value,
          $Res Function(_$OutgoingTransferImpl) then) =
      __$$OutgoingTransferImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenOutgoingTransfer data});

  $TokenOutgoingTransferCopyWith<$Res> get data;
}

/// @nodoc
class __$$OutgoingTransferImplCopyWithImpl<$Res>
    extends _$TokenWalletTransactionCopyWithImpl<$Res, _$OutgoingTransferImpl>
    implements _$$OutgoingTransferImplCopyWith<$Res> {
  __$$OutgoingTransferImplCopyWithImpl(_$OutgoingTransferImpl _value,
      $Res Function(_$OutgoingTransferImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OutgoingTransferImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenOutgoingTransfer,
    ));
  }

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenOutgoingTransferCopyWith<$Res> get data {
    return $TokenOutgoingTransferCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$OutgoingTransferImpl implements _OutgoingTransfer {
  const _$OutgoingTransferImpl(this.data, {final String? $type})
      : $type = $type ?? 'outgoing_transfer';

  factory _$OutgoingTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutgoingTransferImplFromJson(json);

  @override
  final TokenOutgoingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenWalletTransaction.outgoingTransfer(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutgoingTransferImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OutgoingTransferImplCopyWith<_$OutgoingTransferImpl> get copyWith =>
      __$$OutgoingTransferImplCopyWithImpl<_$OutgoingTransferImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenIncomingTransfer data) incomingTransfer,
    required TResult Function(TokenOutgoingTransfer data) outgoingTransfer,
    required TResult Function(TokenSwapBack data) swapBack,
    required TResult Function(@amountJsonConverter BigInt data) accept,
    required TResult Function(@amountJsonConverter BigInt data) transferBounced,
    required TResult Function(@amountJsonConverter BigInt data) swapBackBounced,
  }) {
    return outgoingTransfer(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult? Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult? Function(TokenSwapBack data)? swapBack,
    TResult? Function(@amountJsonConverter BigInt data)? accept,
    TResult? Function(@amountJsonConverter BigInt data)? transferBounced,
    TResult? Function(@amountJsonConverter BigInt data)? swapBackBounced,
  }) {
    return outgoingTransfer?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult Function(TokenSwapBack data)? swapBack,
    TResult Function(@amountJsonConverter BigInt data)? accept,
    TResult Function(@amountJsonConverter BigInt data)? transferBounced,
    TResult Function(@amountJsonConverter BigInt data)? swapBackBounced,
    required TResult orElse(),
  }) {
    if (outgoingTransfer != null) {
      return outgoingTransfer(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomingTransfer value) incomingTransfer,
    required TResult Function(_OutgoingTransfer value) outgoingTransfer,
    required TResult Function(_SwapBack value) swapBack,
    required TResult Function(_Accept value) accept,
    required TResult Function(_TransferBounced value) transferBounced,
    required TResult Function(_SwapBackBounced value) swapBackBounced,
  }) {
    return outgoingTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingTransfer value)? incomingTransfer,
    TResult? Function(_OutgoingTransfer value)? outgoingTransfer,
    TResult? Function(_SwapBack value)? swapBack,
    TResult? Function(_Accept value)? accept,
    TResult? Function(_TransferBounced value)? transferBounced,
    TResult? Function(_SwapBackBounced value)? swapBackBounced,
  }) {
    return outgoingTransfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingTransfer value)? incomingTransfer,
    TResult Function(_OutgoingTransfer value)? outgoingTransfer,
    TResult Function(_SwapBack value)? swapBack,
    TResult Function(_Accept value)? accept,
    TResult Function(_TransferBounced value)? transferBounced,
    TResult Function(_SwapBackBounced value)? swapBackBounced,
    required TResult orElse(),
  }) {
    if (outgoingTransfer != null) {
      return outgoingTransfer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OutgoingTransferImplToJson(
      this,
    );
  }
}

abstract class _OutgoingTransfer implements TokenWalletTransaction {
  const factory _OutgoingTransfer(final TokenOutgoingTransfer data) =
      _$OutgoingTransferImpl;

  factory _OutgoingTransfer.fromJson(Map<String, dynamic> json) =
      _$OutgoingTransferImpl.fromJson;

  @override
  TokenOutgoingTransfer get data;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OutgoingTransferImplCopyWith<_$OutgoingTransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwapBackImplCopyWith<$Res> {
  factory _$$SwapBackImplCopyWith(
          _$SwapBackImpl value, $Res Function(_$SwapBackImpl) then) =
      __$$SwapBackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenSwapBack data});

  $TokenSwapBackCopyWith<$Res> get data;
}

/// @nodoc
class __$$SwapBackImplCopyWithImpl<$Res>
    extends _$TokenWalletTransactionCopyWithImpl<$Res, _$SwapBackImpl>
    implements _$$SwapBackImplCopyWith<$Res> {
  __$$SwapBackImplCopyWithImpl(
      _$SwapBackImpl _value, $Res Function(_$SwapBackImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SwapBackImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenSwapBack,
    ));
  }

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenSwapBackCopyWith<$Res> get data {
    return $TokenSwapBackCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SwapBackImpl implements _SwapBack {
  const _$SwapBackImpl(this.data, {final String? $type})
      : $type = $type ?? 'swap_back';

  factory _$SwapBackImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwapBackImplFromJson(json);

  @override
  final TokenSwapBack data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenWalletTransaction.swapBack(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapBackImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapBackImplCopyWith<_$SwapBackImpl> get copyWith =>
      __$$SwapBackImplCopyWithImpl<_$SwapBackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenIncomingTransfer data) incomingTransfer,
    required TResult Function(TokenOutgoingTransfer data) outgoingTransfer,
    required TResult Function(TokenSwapBack data) swapBack,
    required TResult Function(@amountJsonConverter BigInt data) accept,
    required TResult Function(@amountJsonConverter BigInt data) transferBounced,
    required TResult Function(@amountJsonConverter BigInt data) swapBackBounced,
  }) {
    return swapBack(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult? Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult? Function(TokenSwapBack data)? swapBack,
    TResult? Function(@amountJsonConverter BigInt data)? accept,
    TResult? Function(@amountJsonConverter BigInt data)? transferBounced,
    TResult? Function(@amountJsonConverter BigInt data)? swapBackBounced,
  }) {
    return swapBack?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult Function(TokenSwapBack data)? swapBack,
    TResult Function(@amountJsonConverter BigInt data)? accept,
    TResult Function(@amountJsonConverter BigInt data)? transferBounced,
    TResult Function(@amountJsonConverter BigInt data)? swapBackBounced,
    required TResult orElse(),
  }) {
    if (swapBack != null) {
      return swapBack(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomingTransfer value) incomingTransfer,
    required TResult Function(_OutgoingTransfer value) outgoingTransfer,
    required TResult Function(_SwapBack value) swapBack,
    required TResult Function(_Accept value) accept,
    required TResult Function(_TransferBounced value) transferBounced,
    required TResult Function(_SwapBackBounced value) swapBackBounced,
  }) {
    return swapBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingTransfer value)? incomingTransfer,
    TResult? Function(_OutgoingTransfer value)? outgoingTransfer,
    TResult? Function(_SwapBack value)? swapBack,
    TResult? Function(_Accept value)? accept,
    TResult? Function(_TransferBounced value)? transferBounced,
    TResult? Function(_SwapBackBounced value)? swapBackBounced,
  }) {
    return swapBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingTransfer value)? incomingTransfer,
    TResult Function(_OutgoingTransfer value)? outgoingTransfer,
    TResult Function(_SwapBack value)? swapBack,
    TResult Function(_Accept value)? accept,
    TResult Function(_TransferBounced value)? transferBounced,
    TResult Function(_SwapBackBounced value)? swapBackBounced,
    required TResult orElse(),
  }) {
    if (swapBack != null) {
      return swapBack(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SwapBackImplToJson(
      this,
    );
  }
}

abstract class _SwapBack implements TokenWalletTransaction {
  const factory _SwapBack(final TokenSwapBack data) = _$SwapBackImpl;

  factory _SwapBack.fromJson(Map<String, dynamic> json) =
      _$SwapBackImpl.fromJson;

  @override
  TokenSwapBack get data;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwapBackImplCopyWith<_$SwapBackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AcceptImplCopyWith<$Res> {
  factory _$$AcceptImplCopyWith(
          _$AcceptImpl value, $Res Function(_$AcceptImpl) then) =
      __$$AcceptImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@amountJsonConverter BigInt data});
}

/// @nodoc
class __$$AcceptImplCopyWithImpl<$Res>
    extends _$TokenWalletTransactionCopyWithImpl<$Res, _$AcceptImpl>
    implements _$$AcceptImplCopyWith<$Res> {
  __$$AcceptImplCopyWithImpl(
      _$AcceptImpl _value, $Res Function(_$AcceptImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AcceptImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcceptImpl implements _Accept {
  const _$AcceptImpl(@amountJsonConverter this.data, {final String? $type})
      : $type = $type ?? 'accept';

  factory _$AcceptImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcceptImplFromJson(json);

  @override
  @amountJsonConverter
  final BigInt data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenWalletTransaction.accept(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptImplCopyWith<_$AcceptImpl> get copyWith =>
      __$$AcceptImplCopyWithImpl<_$AcceptImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenIncomingTransfer data) incomingTransfer,
    required TResult Function(TokenOutgoingTransfer data) outgoingTransfer,
    required TResult Function(TokenSwapBack data) swapBack,
    required TResult Function(@amountJsonConverter BigInt data) accept,
    required TResult Function(@amountJsonConverter BigInt data) transferBounced,
    required TResult Function(@amountJsonConverter BigInt data) swapBackBounced,
  }) {
    return accept(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult? Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult? Function(TokenSwapBack data)? swapBack,
    TResult? Function(@amountJsonConverter BigInt data)? accept,
    TResult? Function(@amountJsonConverter BigInt data)? transferBounced,
    TResult? Function(@amountJsonConverter BigInt data)? swapBackBounced,
  }) {
    return accept?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult Function(TokenSwapBack data)? swapBack,
    TResult Function(@amountJsonConverter BigInt data)? accept,
    TResult Function(@amountJsonConverter BigInt data)? transferBounced,
    TResult Function(@amountJsonConverter BigInt data)? swapBackBounced,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomingTransfer value) incomingTransfer,
    required TResult Function(_OutgoingTransfer value) outgoingTransfer,
    required TResult Function(_SwapBack value) swapBack,
    required TResult Function(_Accept value) accept,
    required TResult Function(_TransferBounced value) transferBounced,
    required TResult Function(_SwapBackBounced value) swapBackBounced,
  }) {
    return accept(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingTransfer value)? incomingTransfer,
    TResult? Function(_OutgoingTransfer value)? outgoingTransfer,
    TResult? Function(_SwapBack value)? swapBack,
    TResult? Function(_Accept value)? accept,
    TResult? Function(_TransferBounced value)? transferBounced,
    TResult? Function(_SwapBackBounced value)? swapBackBounced,
  }) {
    return accept?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingTransfer value)? incomingTransfer,
    TResult Function(_OutgoingTransfer value)? outgoingTransfer,
    TResult Function(_SwapBack value)? swapBack,
    TResult Function(_Accept value)? accept,
    TResult Function(_TransferBounced value)? transferBounced,
    TResult Function(_SwapBackBounced value)? swapBackBounced,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptImplToJson(
      this,
    );
  }
}

abstract class _Accept implements TokenWalletTransaction {
  const factory _Accept(@amountJsonConverter final BigInt data) = _$AcceptImpl;

  factory _Accept.fromJson(Map<String, dynamic> json) = _$AcceptImpl.fromJson;

  @override
  @amountJsonConverter
  BigInt get data;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptImplCopyWith<_$AcceptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransferBouncedImplCopyWith<$Res> {
  factory _$$TransferBouncedImplCopyWith(_$TransferBouncedImpl value,
          $Res Function(_$TransferBouncedImpl) then) =
      __$$TransferBouncedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@amountJsonConverter BigInt data});
}

/// @nodoc
class __$$TransferBouncedImplCopyWithImpl<$Res>
    extends _$TokenWalletTransactionCopyWithImpl<$Res, _$TransferBouncedImpl>
    implements _$$TransferBouncedImplCopyWith<$Res> {
  __$$TransferBouncedImplCopyWithImpl(
      _$TransferBouncedImpl _value, $Res Function(_$TransferBouncedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TransferBouncedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferBouncedImpl implements _TransferBounced {
  const _$TransferBouncedImpl(@amountJsonConverter this.data,
      {final String? $type})
      : $type = $type ?? 'transfer_bounced';

  factory _$TransferBouncedImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferBouncedImplFromJson(json);

  @override
  @amountJsonConverter
  final BigInt data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenWalletTransaction.transferBounced(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferBouncedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferBouncedImplCopyWith<_$TransferBouncedImpl> get copyWith =>
      __$$TransferBouncedImplCopyWithImpl<_$TransferBouncedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenIncomingTransfer data) incomingTransfer,
    required TResult Function(TokenOutgoingTransfer data) outgoingTransfer,
    required TResult Function(TokenSwapBack data) swapBack,
    required TResult Function(@amountJsonConverter BigInt data) accept,
    required TResult Function(@amountJsonConverter BigInt data) transferBounced,
    required TResult Function(@amountJsonConverter BigInt data) swapBackBounced,
  }) {
    return transferBounced(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult? Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult? Function(TokenSwapBack data)? swapBack,
    TResult? Function(@amountJsonConverter BigInt data)? accept,
    TResult? Function(@amountJsonConverter BigInt data)? transferBounced,
    TResult? Function(@amountJsonConverter BigInt data)? swapBackBounced,
  }) {
    return transferBounced?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult Function(TokenSwapBack data)? swapBack,
    TResult Function(@amountJsonConverter BigInt data)? accept,
    TResult Function(@amountJsonConverter BigInt data)? transferBounced,
    TResult Function(@amountJsonConverter BigInt data)? swapBackBounced,
    required TResult orElse(),
  }) {
    if (transferBounced != null) {
      return transferBounced(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomingTransfer value) incomingTransfer,
    required TResult Function(_OutgoingTransfer value) outgoingTransfer,
    required TResult Function(_SwapBack value) swapBack,
    required TResult Function(_Accept value) accept,
    required TResult Function(_TransferBounced value) transferBounced,
    required TResult Function(_SwapBackBounced value) swapBackBounced,
  }) {
    return transferBounced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingTransfer value)? incomingTransfer,
    TResult? Function(_OutgoingTransfer value)? outgoingTransfer,
    TResult? Function(_SwapBack value)? swapBack,
    TResult? Function(_Accept value)? accept,
    TResult? Function(_TransferBounced value)? transferBounced,
    TResult? Function(_SwapBackBounced value)? swapBackBounced,
  }) {
    return transferBounced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingTransfer value)? incomingTransfer,
    TResult Function(_OutgoingTransfer value)? outgoingTransfer,
    TResult Function(_SwapBack value)? swapBack,
    TResult Function(_Accept value)? accept,
    TResult Function(_TransferBounced value)? transferBounced,
    TResult Function(_SwapBackBounced value)? swapBackBounced,
    required TResult orElse(),
  }) {
    if (transferBounced != null) {
      return transferBounced(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferBouncedImplToJson(
      this,
    );
  }
}

abstract class _TransferBounced implements TokenWalletTransaction {
  const factory _TransferBounced(@amountJsonConverter final BigInt data) =
      _$TransferBouncedImpl;

  factory _TransferBounced.fromJson(Map<String, dynamic> json) =
      _$TransferBouncedImpl.fromJson;

  @override
  @amountJsonConverter
  BigInt get data;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransferBouncedImplCopyWith<_$TransferBouncedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwapBackBouncedImplCopyWith<$Res> {
  factory _$$SwapBackBouncedImplCopyWith(_$SwapBackBouncedImpl value,
          $Res Function(_$SwapBackBouncedImpl) then) =
      __$$SwapBackBouncedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@amountJsonConverter BigInt data});
}

/// @nodoc
class __$$SwapBackBouncedImplCopyWithImpl<$Res>
    extends _$TokenWalletTransactionCopyWithImpl<$Res, _$SwapBackBouncedImpl>
    implements _$$SwapBackBouncedImplCopyWith<$Res> {
  __$$SwapBackBouncedImplCopyWithImpl(
      _$SwapBackBouncedImpl _value, $Res Function(_$SwapBackBouncedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SwapBackBouncedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwapBackBouncedImpl implements _SwapBackBounced {
  const _$SwapBackBouncedImpl(@amountJsonConverter this.data,
      {final String? $type})
      : $type = $type ?? 'swap_back_bounced';

  factory _$SwapBackBouncedImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwapBackBouncedImplFromJson(json);

  @override
  @amountJsonConverter
  final BigInt data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenWalletTransaction.swapBackBounced(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapBackBouncedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapBackBouncedImplCopyWith<_$SwapBackBouncedImpl> get copyWith =>
      __$$SwapBackBouncedImplCopyWithImpl<_$SwapBackBouncedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenIncomingTransfer data) incomingTransfer,
    required TResult Function(TokenOutgoingTransfer data) outgoingTransfer,
    required TResult Function(TokenSwapBack data) swapBack,
    required TResult Function(@amountJsonConverter BigInt data) accept,
    required TResult Function(@amountJsonConverter BigInt data) transferBounced,
    required TResult Function(@amountJsonConverter BigInt data) swapBackBounced,
  }) {
    return swapBackBounced(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult? Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult? Function(TokenSwapBack data)? swapBack,
    TResult? Function(@amountJsonConverter BigInt data)? accept,
    TResult? Function(@amountJsonConverter BigInt data)? transferBounced,
    TResult? Function(@amountJsonConverter BigInt data)? swapBackBounced,
  }) {
    return swapBackBounced?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult Function(TokenSwapBack data)? swapBack,
    TResult Function(@amountJsonConverter BigInt data)? accept,
    TResult Function(@amountJsonConverter BigInt data)? transferBounced,
    TResult Function(@amountJsonConverter BigInt data)? swapBackBounced,
    required TResult orElse(),
  }) {
    if (swapBackBounced != null) {
      return swapBackBounced(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomingTransfer value) incomingTransfer,
    required TResult Function(_OutgoingTransfer value) outgoingTransfer,
    required TResult Function(_SwapBack value) swapBack,
    required TResult Function(_Accept value) accept,
    required TResult Function(_TransferBounced value) transferBounced,
    required TResult Function(_SwapBackBounced value) swapBackBounced,
  }) {
    return swapBackBounced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingTransfer value)? incomingTransfer,
    TResult? Function(_OutgoingTransfer value)? outgoingTransfer,
    TResult? Function(_SwapBack value)? swapBack,
    TResult? Function(_Accept value)? accept,
    TResult? Function(_TransferBounced value)? transferBounced,
    TResult? Function(_SwapBackBounced value)? swapBackBounced,
  }) {
    return swapBackBounced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingTransfer value)? incomingTransfer,
    TResult Function(_OutgoingTransfer value)? outgoingTransfer,
    TResult Function(_SwapBack value)? swapBack,
    TResult Function(_Accept value)? accept,
    TResult Function(_TransferBounced value)? transferBounced,
    TResult Function(_SwapBackBounced value)? swapBackBounced,
    required TResult orElse(),
  }) {
    if (swapBackBounced != null) {
      return swapBackBounced(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SwapBackBouncedImplToJson(
      this,
    );
  }
}

abstract class _SwapBackBounced implements TokenWalletTransaction {
  const factory _SwapBackBounced(@amountJsonConverter final BigInt data) =
      _$SwapBackBouncedImpl;

  factory _SwapBackBounced.fromJson(Map<String, dynamic> json) =
      _$SwapBackBouncedImpl.fromJson;

  @override
  @amountJsonConverter
  BigInt get data;

  /// Create a copy of TokenWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwapBackBouncedImplCopyWith<_$SwapBackBouncedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
