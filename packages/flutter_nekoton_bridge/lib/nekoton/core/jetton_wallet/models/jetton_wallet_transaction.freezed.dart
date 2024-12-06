// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jetton_wallet_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JettonWalletTransaction _$JettonWalletTransactionFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'transfer':
      return _Transfer.fromJson(json);
    case 'internal_transfer':
      return _InternalTransfer.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'JettonWalletTransaction',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$JettonWalletTransaction {
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JettonOutgoingTransfer data) transfer,
    required TResult Function(JettonIncomingTransfer data) internalTransfer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JettonOutgoingTransfer data)? transfer,
    TResult? Function(JettonIncomingTransfer data)? internalTransfer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JettonOutgoingTransfer data)? transfer,
    TResult Function(JettonIncomingTransfer data)? internalTransfer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Transfer value) transfer,
    required TResult Function(_InternalTransfer value) internalTransfer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Transfer value)? transfer,
    TResult? Function(_InternalTransfer value)? internalTransfer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Transfer value)? transfer,
    TResult Function(_InternalTransfer value)? internalTransfer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this JettonWalletTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JettonWalletTransactionCopyWith<$Res> {
  factory $JettonWalletTransactionCopyWith(JettonWalletTransaction value,
          $Res Function(JettonWalletTransaction) then) =
      _$JettonWalletTransactionCopyWithImpl<$Res, JettonWalletTransaction>;
}

/// @nodoc
class _$JettonWalletTransactionCopyWithImpl<$Res,
        $Val extends JettonWalletTransaction>
    implements $JettonWalletTransactionCopyWith<$Res> {
  _$JettonWalletTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JettonWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TransferImplCopyWith<$Res> {
  factory _$$TransferImplCopyWith(
          _$TransferImpl value, $Res Function(_$TransferImpl) then) =
      __$$TransferImplCopyWithImpl<$Res>;
  @useResult
  $Res call({JettonOutgoingTransfer data});

  $JettonOutgoingTransferCopyWith<$Res> get data;
}

/// @nodoc
class __$$TransferImplCopyWithImpl<$Res>
    extends _$JettonWalletTransactionCopyWithImpl<$Res, _$TransferImpl>
    implements _$$TransferImplCopyWith<$Res> {
  __$$TransferImplCopyWithImpl(
      _$TransferImpl _value, $Res Function(_$TransferImpl) _then)
      : super(_value, _then);

  /// Create a copy of JettonWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TransferImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as JettonOutgoingTransfer,
    ));
  }

  /// Create a copy of JettonWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JettonOutgoingTransferCopyWith<$Res> get data {
    return $JettonOutgoingTransferCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferImpl implements _Transfer {
  const _$TransferImpl(this.data, {final String? $type})
      : $type = $type ?? 'transfer';

  factory _$TransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferImplFromJson(json);

  @override
  final JettonOutgoingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'JettonWalletTransaction.transfer(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of JettonWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferImplCopyWith<_$TransferImpl> get copyWith =>
      __$$TransferImplCopyWithImpl<_$TransferImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JettonOutgoingTransfer data) transfer,
    required TResult Function(JettonIncomingTransfer data) internalTransfer,
  }) {
    return transfer(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JettonOutgoingTransfer data)? transfer,
    TResult? Function(JettonIncomingTransfer data)? internalTransfer,
  }) {
    return transfer?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JettonOutgoingTransfer data)? transfer,
    TResult Function(JettonIncomingTransfer data)? internalTransfer,
    required TResult orElse(),
  }) {
    if (transfer != null) {
      return transfer(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Transfer value) transfer,
    required TResult Function(_InternalTransfer value) internalTransfer,
  }) {
    return transfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Transfer value)? transfer,
    TResult? Function(_InternalTransfer value)? internalTransfer,
  }) {
    return transfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Transfer value)? transfer,
    TResult Function(_InternalTransfer value)? internalTransfer,
    required TResult orElse(),
  }) {
    if (transfer != null) {
      return transfer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferImplToJson(
      this,
    );
  }
}

abstract class _Transfer implements JettonWalletTransaction {
  const factory _Transfer(final JettonOutgoingTransfer data) = _$TransferImpl;

  factory _Transfer.fromJson(Map<String, dynamic> json) =
      _$TransferImpl.fromJson;

  @override
  JettonOutgoingTransfer get data;

  /// Create a copy of JettonWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransferImplCopyWith<_$TransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalTransferImplCopyWith<$Res> {
  factory _$$InternalTransferImplCopyWith(_$InternalTransferImpl value,
          $Res Function(_$InternalTransferImpl) then) =
      __$$InternalTransferImplCopyWithImpl<$Res>;
  @useResult
  $Res call({JettonIncomingTransfer data});

  $JettonIncomingTransferCopyWith<$Res> get data;
}

/// @nodoc
class __$$InternalTransferImplCopyWithImpl<$Res>
    extends _$JettonWalletTransactionCopyWithImpl<$Res, _$InternalTransferImpl>
    implements _$$InternalTransferImplCopyWith<$Res> {
  __$$InternalTransferImplCopyWithImpl(_$InternalTransferImpl _value,
      $Res Function(_$InternalTransferImpl) _then)
      : super(_value, _then);

  /// Create a copy of JettonWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$InternalTransferImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as JettonIncomingTransfer,
    ));
  }

  /// Create a copy of JettonWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JettonIncomingTransferCopyWith<$Res> get data {
    return $JettonIncomingTransferCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$InternalTransferImpl implements _InternalTransfer {
  const _$InternalTransferImpl(this.data, {final String? $type})
      : $type = $type ?? 'internal_transfer';

  factory _$InternalTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$InternalTransferImplFromJson(json);

  @override
  final JettonIncomingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'JettonWalletTransaction.internalTransfer(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalTransferImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of JettonWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalTransferImplCopyWith<_$InternalTransferImpl> get copyWith =>
      __$$InternalTransferImplCopyWithImpl<_$InternalTransferImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JettonOutgoingTransfer data) transfer,
    required TResult Function(JettonIncomingTransfer data) internalTransfer,
  }) {
    return internalTransfer(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JettonOutgoingTransfer data)? transfer,
    TResult? Function(JettonIncomingTransfer data)? internalTransfer,
  }) {
    return internalTransfer?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JettonOutgoingTransfer data)? transfer,
    TResult Function(JettonIncomingTransfer data)? internalTransfer,
    required TResult orElse(),
  }) {
    if (internalTransfer != null) {
      return internalTransfer(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Transfer value) transfer,
    required TResult Function(_InternalTransfer value) internalTransfer,
  }) {
    return internalTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Transfer value)? transfer,
    TResult? Function(_InternalTransfer value)? internalTransfer,
  }) {
    return internalTransfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Transfer value)? transfer,
    TResult Function(_InternalTransfer value)? internalTransfer,
    required TResult orElse(),
  }) {
    if (internalTransfer != null) {
      return internalTransfer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InternalTransferImplToJson(
      this,
    );
  }
}

abstract class _InternalTransfer implements JettonWalletTransaction {
  const factory _InternalTransfer(final JettonIncomingTransfer data) =
      _$InternalTransferImpl;

  factory _InternalTransfer.fromJson(Map<String, dynamic> json) =
      _$InternalTransferImpl.fromJson;

  @override
  JettonIncomingTransfer get data;

  /// Create a copy of JettonWalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalTransferImplCopyWith<_$InternalTransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
