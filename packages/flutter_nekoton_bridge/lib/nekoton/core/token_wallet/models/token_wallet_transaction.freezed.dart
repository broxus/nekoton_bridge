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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    required TResult Function(String data) accept,
    required TResult Function(String data) transferBounced,
    required TResult Function(String data) swapBackBounced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult? Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult? Function(TokenSwapBack data)? swapBack,
    TResult? Function(String data)? accept,
    TResult? Function(String data)? transferBounced,
    TResult? Function(String data)? swapBackBounced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult Function(TokenSwapBack data)? swapBack,
    TResult Function(String data)? accept,
    TResult Function(String data)? transferBounced,
    TResult Function(String data)? swapBackBounced,
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
}

/// @nodoc
abstract class _$$_IncomingTransferCopyWith<$Res> {
  factory _$$_IncomingTransferCopyWith(
          _$_IncomingTransfer value, $Res Function(_$_IncomingTransfer) then) =
      __$$_IncomingTransferCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenIncomingTransfer data});

  $TokenIncomingTransferCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IncomingTransferCopyWithImpl<$Res>
    extends _$TokenWalletTransactionCopyWithImpl<$Res, _$_IncomingTransfer>
    implements _$$_IncomingTransferCopyWith<$Res> {
  __$$_IncomingTransferCopyWithImpl(
      _$_IncomingTransfer _value, $Res Function(_$_IncomingTransfer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_IncomingTransfer(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenIncomingTransfer,
    ));
  }

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
class _$_IncomingTransfer implements _IncomingTransfer {
  const _$_IncomingTransfer(this.data, {final String? $type})
      : $type = $type ?? 'incoming_transfer';

  factory _$_IncomingTransfer.fromJson(Map<String, dynamic> json) =>
      _$$_IncomingTransferFromJson(json);

  @override
  final TokenIncomingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenWalletTransaction.incomingTransfer(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncomingTransfer &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncomingTransferCopyWith<_$_IncomingTransfer> get copyWith =>
      __$$_IncomingTransferCopyWithImpl<_$_IncomingTransfer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenIncomingTransfer data) incomingTransfer,
    required TResult Function(TokenOutgoingTransfer data) outgoingTransfer,
    required TResult Function(TokenSwapBack data) swapBack,
    required TResult Function(String data) accept,
    required TResult Function(String data) transferBounced,
    required TResult Function(String data) swapBackBounced,
  }) {
    return incomingTransfer(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult? Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult? Function(TokenSwapBack data)? swapBack,
    TResult? Function(String data)? accept,
    TResult? Function(String data)? transferBounced,
    TResult? Function(String data)? swapBackBounced,
  }) {
    return incomingTransfer?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult Function(TokenSwapBack data)? swapBack,
    TResult Function(String data)? accept,
    TResult Function(String data)? transferBounced,
    TResult Function(String data)? swapBackBounced,
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
    return _$$_IncomingTransferToJson(
      this,
    );
  }
}

abstract class _IncomingTransfer implements TokenWalletTransaction {
  const factory _IncomingTransfer(final TokenIncomingTransfer data) =
      _$_IncomingTransfer;

  factory _IncomingTransfer.fromJson(Map<String, dynamic> json) =
      _$_IncomingTransfer.fromJson;

  @override
  TokenIncomingTransfer get data;
  @JsonKey(ignore: true)
  _$$_IncomingTransferCopyWith<_$_IncomingTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OutgoingTransferCopyWith<$Res> {
  factory _$$_OutgoingTransferCopyWith(
          _$_OutgoingTransfer value, $Res Function(_$_OutgoingTransfer) then) =
      __$$_OutgoingTransferCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenOutgoingTransfer data});

  $TokenOutgoingTransferCopyWith<$Res> get data;
}

/// @nodoc
class __$$_OutgoingTransferCopyWithImpl<$Res>
    extends _$TokenWalletTransactionCopyWithImpl<$Res, _$_OutgoingTransfer>
    implements _$$_OutgoingTransferCopyWith<$Res> {
  __$$_OutgoingTransferCopyWithImpl(
      _$_OutgoingTransfer _value, $Res Function(_$_OutgoingTransfer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_OutgoingTransfer(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenOutgoingTransfer,
    ));
  }

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
class _$_OutgoingTransfer implements _OutgoingTransfer {
  const _$_OutgoingTransfer(this.data, {final String? $type})
      : $type = $type ?? 'outgoing_transfer';

  factory _$_OutgoingTransfer.fromJson(Map<String, dynamic> json) =>
      _$$_OutgoingTransferFromJson(json);

  @override
  final TokenOutgoingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenWalletTransaction.outgoingTransfer(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OutgoingTransfer &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OutgoingTransferCopyWith<_$_OutgoingTransfer> get copyWith =>
      __$$_OutgoingTransferCopyWithImpl<_$_OutgoingTransfer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenIncomingTransfer data) incomingTransfer,
    required TResult Function(TokenOutgoingTransfer data) outgoingTransfer,
    required TResult Function(TokenSwapBack data) swapBack,
    required TResult Function(String data) accept,
    required TResult Function(String data) transferBounced,
    required TResult Function(String data) swapBackBounced,
  }) {
    return outgoingTransfer(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult? Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult? Function(TokenSwapBack data)? swapBack,
    TResult? Function(String data)? accept,
    TResult? Function(String data)? transferBounced,
    TResult? Function(String data)? swapBackBounced,
  }) {
    return outgoingTransfer?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult Function(TokenSwapBack data)? swapBack,
    TResult Function(String data)? accept,
    TResult Function(String data)? transferBounced,
    TResult Function(String data)? swapBackBounced,
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
    return _$$_OutgoingTransferToJson(
      this,
    );
  }
}

abstract class _OutgoingTransfer implements TokenWalletTransaction {
  const factory _OutgoingTransfer(final TokenOutgoingTransfer data) =
      _$_OutgoingTransfer;

  factory _OutgoingTransfer.fromJson(Map<String, dynamic> json) =
      _$_OutgoingTransfer.fromJson;

  @override
  TokenOutgoingTransfer get data;
  @JsonKey(ignore: true)
  _$$_OutgoingTransferCopyWith<_$_OutgoingTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SwapBackCopyWith<$Res> {
  factory _$$_SwapBackCopyWith(
          _$_SwapBack value, $Res Function(_$_SwapBack) then) =
      __$$_SwapBackCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenSwapBack data});

  $TokenSwapBackCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SwapBackCopyWithImpl<$Res>
    extends _$TokenWalletTransactionCopyWithImpl<$Res, _$_SwapBack>
    implements _$$_SwapBackCopyWith<$Res> {
  __$$_SwapBackCopyWithImpl(
      _$_SwapBack _value, $Res Function(_$_SwapBack) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SwapBack(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenSwapBack,
    ));
  }

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
class _$_SwapBack implements _SwapBack {
  const _$_SwapBack(this.data, {final String? $type})
      : $type = $type ?? 'swap_back';

  factory _$_SwapBack.fromJson(Map<String, dynamic> json) =>
      _$$_SwapBackFromJson(json);

  @override
  final TokenSwapBack data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenWalletTransaction.swapBack(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwapBack &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SwapBackCopyWith<_$_SwapBack> get copyWith =>
      __$$_SwapBackCopyWithImpl<_$_SwapBack>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenIncomingTransfer data) incomingTransfer,
    required TResult Function(TokenOutgoingTransfer data) outgoingTransfer,
    required TResult Function(TokenSwapBack data) swapBack,
    required TResult Function(String data) accept,
    required TResult Function(String data) transferBounced,
    required TResult Function(String data) swapBackBounced,
  }) {
    return swapBack(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult? Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult? Function(TokenSwapBack data)? swapBack,
    TResult? Function(String data)? accept,
    TResult? Function(String data)? transferBounced,
    TResult? Function(String data)? swapBackBounced,
  }) {
    return swapBack?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult Function(TokenSwapBack data)? swapBack,
    TResult Function(String data)? accept,
    TResult Function(String data)? transferBounced,
    TResult Function(String data)? swapBackBounced,
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
    return _$$_SwapBackToJson(
      this,
    );
  }
}

abstract class _SwapBack implements TokenWalletTransaction {
  const factory _SwapBack(final TokenSwapBack data) = _$_SwapBack;

  factory _SwapBack.fromJson(Map<String, dynamic> json) = _$_SwapBack.fromJson;

  @override
  TokenSwapBack get data;
  @JsonKey(ignore: true)
  _$$_SwapBackCopyWith<_$_SwapBack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptCopyWith<$Res> {
  factory _$$_AcceptCopyWith(_$_Accept value, $Res Function(_$_Accept) then) =
      __$$_AcceptCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$_AcceptCopyWithImpl<$Res>
    extends _$TokenWalletTransactionCopyWithImpl<$Res, _$_Accept>
    implements _$$_AcceptCopyWith<$Res> {
  __$$_AcceptCopyWithImpl(_$_Accept _value, $Res Function(_$_Accept) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Accept(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Accept implements _Accept {
  const _$_Accept(this.data, {final String? $type}) : $type = $type ?? 'accept';

  factory _$_Accept.fromJson(Map<String, dynamic> json) =>
      _$$_AcceptFromJson(json);

  @override
  final String data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenWalletTransaction.accept(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Accept &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptCopyWith<_$_Accept> get copyWith =>
      __$$_AcceptCopyWithImpl<_$_Accept>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenIncomingTransfer data) incomingTransfer,
    required TResult Function(TokenOutgoingTransfer data) outgoingTransfer,
    required TResult Function(TokenSwapBack data) swapBack,
    required TResult Function(String data) accept,
    required TResult Function(String data) transferBounced,
    required TResult Function(String data) swapBackBounced,
  }) {
    return accept(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult? Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult? Function(TokenSwapBack data)? swapBack,
    TResult? Function(String data)? accept,
    TResult? Function(String data)? transferBounced,
    TResult? Function(String data)? swapBackBounced,
  }) {
    return accept?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult Function(TokenSwapBack data)? swapBack,
    TResult Function(String data)? accept,
    TResult Function(String data)? transferBounced,
    TResult Function(String data)? swapBackBounced,
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
    return _$$_AcceptToJson(
      this,
    );
  }
}

abstract class _Accept implements TokenWalletTransaction {
  const factory _Accept(final String data) = _$_Accept;

  factory _Accept.fromJson(Map<String, dynamic> json) = _$_Accept.fromJson;

  @override
  String get data;
  @JsonKey(ignore: true)
  _$$_AcceptCopyWith<_$_Accept> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TransferBouncedCopyWith<$Res> {
  factory _$$_TransferBouncedCopyWith(
          _$_TransferBounced value, $Res Function(_$_TransferBounced) then) =
      __$$_TransferBouncedCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$_TransferBouncedCopyWithImpl<$Res>
    extends _$TokenWalletTransactionCopyWithImpl<$Res, _$_TransferBounced>
    implements _$$_TransferBouncedCopyWith<$Res> {
  __$$_TransferBouncedCopyWithImpl(
      _$_TransferBounced _value, $Res Function(_$_TransferBounced) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_TransferBounced(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransferBounced implements _TransferBounced {
  const _$_TransferBounced(this.data, {final String? $type})
      : $type = $type ?? 'transfer_bounced';

  factory _$_TransferBounced.fromJson(Map<String, dynamic> json) =>
      _$$_TransferBouncedFromJson(json);

  @override
  final String data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenWalletTransaction.transferBounced(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransferBounced &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransferBouncedCopyWith<_$_TransferBounced> get copyWith =>
      __$$_TransferBouncedCopyWithImpl<_$_TransferBounced>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenIncomingTransfer data) incomingTransfer,
    required TResult Function(TokenOutgoingTransfer data) outgoingTransfer,
    required TResult Function(TokenSwapBack data) swapBack,
    required TResult Function(String data) accept,
    required TResult Function(String data) transferBounced,
    required TResult Function(String data) swapBackBounced,
  }) {
    return transferBounced(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult? Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult? Function(TokenSwapBack data)? swapBack,
    TResult? Function(String data)? accept,
    TResult? Function(String data)? transferBounced,
    TResult? Function(String data)? swapBackBounced,
  }) {
    return transferBounced?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult Function(TokenSwapBack data)? swapBack,
    TResult Function(String data)? accept,
    TResult Function(String data)? transferBounced,
    TResult Function(String data)? swapBackBounced,
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
    return _$$_TransferBouncedToJson(
      this,
    );
  }
}

abstract class _TransferBounced implements TokenWalletTransaction {
  const factory _TransferBounced(final String data) = _$_TransferBounced;

  factory _TransferBounced.fromJson(Map<String, dynamic> json) =
      _$_TransferBounced.fromJson;

  @override
  String get data;
  @JsonKey(ignore: true)
  _$$_TransferBouncedCopyWith<_$_TransferBounced> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SwapBackBouncedCopyWith<$Res> {
  factory _$$_SwapBackBouncedCopyWith(
          _$_SwapBackBounced value, $Res Function(_$_SwapBackBounced) then) =
      __$$_SwapBackBouncedCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$_SwapBackBouncedCopyWithImpl<$Res>
    extends _$TokenWalletTransactionCopyWithImpl<$Res, _$_SwapBackBounced>
    implements _$$_SwapBackBouncedCopyWith<$Res> {
  __$$_SwapBackBouncedCopyWithImpl(
      _$_SwapBackBounced _value, $Res Function(_$_SwapBackBounced) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SwapBackBounced(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SwapBackBounced implements _SwapBackBounced {
  const _$_SwapBackBounced(this.data, {final String? $type})
      : $type = $type ?? 'swap_back_bounced';

  factory _$_SwapBackBounced.fromJson(Map<String, dynamic> json) =>
      _$$_SwapBackBouncedFromJson(json);

  @override
  final String data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenWalletTransaction.swapBackBounced(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwapBackBounced &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SwapBackBouncedCopyWith<_$_SwapBackBounced> get copyWith =>
      __$$_SwapBackBouncedCopyWithImpl<_$_SwapBackBounced>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenIncomingTransfer data) incomingTransfer,
    required TResult Function(TokenOutgoingTransfer data) outgoingTransfer,
    required TResult Function(TokenSwapBack data) swapBack,
    required TResult Function(String data) accept,
    required TResult Function(String data) transferBounced,
    required TResult Function(String data) swapBackBounced,
  }) {
    return swapBackBounced(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult? Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult? Function(TokenSwapBack data)? swapBack,
    TResult? Function(String data)? accept,
    TResult? Function(String data)? transferBounced,
    TResult? Function(String data)? swapBackBounced,
  }) {
    return swapBackBounced?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenIncomingTransfer data)? incomingTransfer,
    TResult Function(TokenOutgoingTransfer data)? outgoingTransfer,
    TResult Function(TokenSwapBack data)? swapBack,
    TResult Function(String data)? accept,
    TResult Function(String data)? transferBounced,
    TResult Function(String data)? swapBackBounced,
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
    return _$$_SwapBackBouncedToJson(
      this,
    );
  }
}

abstract class _SwapBackBounced implements TokenWalletTransaction {
  const factory _SwapBackBounced(final String data) = _$_SwapBackBounced;

  factory _SwapBackBounced.fromJson(Map<String, dynamic> json) =
      _$_SwapBackBounced.fromJson;

  @override
  String get data;
  @JsonKey(ignore: true)
  _$$_SwapBackBouncedCopyWith<_$_SwapBackBounced> get copyWith =>
      throw _privateConstructorUsedError;
}
