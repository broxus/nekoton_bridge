// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_interaction_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletInteractionMethod _$WalletInteractionMethodFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'wallet_v3_transfer':
      return _WalletV3Transfer.fromJson(json);
    case 'multisig':
      return _Multisig.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'WalletInteractionMethod',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$WalletInteractionMethod {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() walletV3Transfer,
    required TResult Function(MultisigTransaction data) multisig,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? walletV3Transfer,
    TResult? Function(MultisigTransaction data)? multisig,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? walletV3Transfer,
    TResult Function(MultisigTransaction data)? multisig,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletV3Transfer value) walletV3Transfer,
    required TResult Function(_Multisig value) multisig,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletV3Transfer value)? walletV3Transfer,
    TResult? Function(_Multisig value)? multisig,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletV3Transfer value)? walletV3Transfer,
    TResult Function(_Multisig value)? multisig,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletInteractionMethodCopyWith<$Res> {
  factory $WalletInteractionMethodCopyWith(WalletInteractionMethod value,
          $Res Function(WalletInteractionMethod) then) =
      _$WalletInteractionMethodCopyWithImpl<$Res, WalletInteractionMethod>;
}

/// @nodoc
class _$WalletInteractionMethodCopyWithImpl<$Res,
        $Val extends WalletInteractionMethod>
    implements $WalletInteractionMethodCopyWith<$Res> {
  _$WalletInteractionMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WalletV3TransferImplCopyWith<$Res> {
  factory _$$WalletV3TransferImplCopyWith(_$WalletV3TransferImpl value,
          $Res Function(_$WalletV3TransferImpl) then) =
      __$$WalletV3TransferImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletV3TransferImplCopyWithImpl<$Res>
    extends _$WalletInteractionMethodCopyWithImpl<$Res, _$WalletV3TransferImpl>
    implements _$$WalletV3TransferImplCopyWith<$Res> {
  __$$WalletV3TransferImplCopyWithImpl(_$WalletV3TransferImpl _value,
      $Res Function(_$WalletV3TransferImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$WalletV3TransferImpl implements _WalletV3Transfer {
  const _$WalletV3TransferImpl({final String? $type})
      : $type = $type ?? 'wallet_v3_transfer';

  factory _$WalletV3TransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletV3TransferImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WalletInteractionMethod.walletV3Transfer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletV3TransferImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() walletV3Transfer,
    required TResult Function(MultisigTransaction data) multisig,
  }) {
    return walletV3Transfer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? walletV3Transfer,
    TResult? Function(MultisigTransaction data)? multisig,
  }) {
    return walletV3Transfer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? walletV3Transfer,
    TResult Function(MultisigTransaction data)? multisig,
    required TResult orElse(),
  }) {
    if (walletV3Transfer != null) {
      return walletV3Transfer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletV3Transfer value) walletV3Transfer,
    required TResult Function(_Multisig value) multisig,
  }) {
    return walletV3Transfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletV3Transfer value)? walletV3Transfer,
    TResult? Function(_Multisig value)? multisig,
  }) {
    return walletV3Transfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletV3Transfer value)? walletV3Transfer,
    TResult Function(_Multisig value)? multisig,
    required TResult orElse(),
  }) {
    if (walletV3Transfer != null) {
      return walletV3Transfer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletV3TransferImplToJson(
      this,
    );
  }
}

abstract class _WalletV3Transfer implements WalletInteractionMethod {
  const factory _WalletV3Transfer() = _$WalletV3TransferImpl;

  factory _WalletV3Transfer.fromJson(Map<String, dynamic> json) =
      _$WalletV3TransferImpl.fromJson;
}

/// @nodoc
abstract class _$$MultisigImplCopyWith<$Res> {
  factory _$$MultisigImplCopyWith(
          _$MultisigImpl value, $Res Function(_$MultisigImpl) then) =
      __$$MultisigImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MultisigTransaction data});

  $MultisigTransactionCopyWith<$Res> get data;
}

/// @nodoc
class __$$MultisigImplCopyWithImpl<$Res>
    extends _$WalletInteractionMethodCopyWithImpl<$Res, _$MultisigImpl>
    implements _$$MultisigImplCopyWith<$Res> {
  __$$MultisigImplCopyWithImpl(
      _$MultisigImpl _value, $Res Function(_$MultisigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$MultisigImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MultisigTransaction,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MultisigTransactionCopyWith<$Res> get data {
    return $MultisigTransactionCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$MultisigImpl implements _Multisig {
  const _$MultisigImpl(this.data, {final String? $type})
      : $type = $type ?? 'multisig';

  factory _$MultisigImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultisigImplFromJson(json);

  @override
  final MultisigTransaction data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WalletInteractionMethod.multisig(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultisigImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultisigImplCopyWith<_$MultisigImpl> get copyWith =>
      __$$MultisigImplCopyWithImpl<_$MultisigImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() walletV3Transfer,
    required TResult Function(MultisigTransaction data) multisig,
  }) {
    return multisig(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? walletV3Transfer,
    TResult? Function(MultisigTransaction data)? multisig,
  }) {
    return multisig?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? walletV3Transfer,
    TResult Function(MultisigTransaction data)? multisig,
    required TResult orElse(),
  }) {
    if (multisig != null) {
      return multisig(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletV3Transfer value) walletV3Transfer,
    required TResult Function(_Multisig value) multisig,
  }) {
    return multisig(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletV3Transfer value)? walletV3Transfer,
    TResult? Function(_Multisig value)? multisig,
  }) {
    return multisig?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletV3Transfer value)? walletV3Transfer,
    TResult Function(_Multisig value)? multisig,
    required TResult orElse(),
  }) {
    if (multisig != null) {
      return multisig(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MultisigImplToJson(
      this,
    );
  }
}

abstract class _Multisig implements WalletInteractionMethod {
  const factory _Multisig(final MultisigTransaction data) = _$MultisigImpl;

  factory _Multisig.fromJson(Map<String, dynamic> json) =
      _$MultisigImpl.fromJson;

  MultisigTransaction get data;
  @JsonKey(ignore: true)
  _$$MultisigImplCopyWith<_$MultisigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
