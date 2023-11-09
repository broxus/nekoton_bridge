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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_WalletV3TransferCopyWith<$Res> {
  factory _$$_WalletV3TransferCopyWith(
          _$_WalletV3Transfer value, $Res Function(_$_WalletV3Transfer) then) =
      __$$_WalletV3TransferCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WalletV3TransferCopyWithImpl<$Res>
    extends _$WalletInteractionMethodCopyWithImpl<$Res, _$_WalletV3Transfer>
    implements _$$_WalletV3TransferCopyWith<$Res> {
  __$$_WalletV3TransferCopyWithImpl(
      _$_WalletV3Transfer _value, $Res Function(_$_WalletV3Transfer) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_WalletV3Transfer implements _WalletV3Transfer {
  const _$_WalletV3Transfer({final String? $type})
      : $type = $type ?? 'wallet_v3_transfer';

  factory _$_WalletV3Transfer.fromJson(Map<String, dynamic> json) =>
      _$$_WalletV3TransferFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WalletInteractionMethod.walletV3Transfer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WalletV3Transfer);
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
    return _$$_WalletV3TransferToJson(
      this,
    );
  }
}

abstract class _WalletV3Transfer implements WalletInteractionMethod {
  const factory _WalletV3Transfer() = _$_WalletV3Transfer;

  factory _WalletV3Transfer.fromJson(Map<String, dynamic> json) =
      _$_WalletV3Transfer.fromJson;
}

/// @nodoc
abstract class _$$_MultisigCopyWith<$Res> {
  factory _$$_MultisigCopyWith(
          _$_Multisig value, $Res Function(_$_Multisig) then) =
      __$$_MultisigCopyWithImpl<$Res>;
  @useResult
  $Res call({MultisigTransaction data});

  $MultisigTransactionCopyWith<$Res> get data;
}

/// @nodoc
class __$$_MultisigCopyWithImpl<$Res>
    extends _$WalletInteractionMethodCopyWithImpl<$Res, _$_Multisig>
    implements _$$_MultisigCopyWith<$Res> {
  __$$_MultisigCopyWithImpl(
      _$_Multisig _value, $Res Function(_$_Multisig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Multisig(
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
class _$_Multisig implements _Multisig {
  const _$_Multisig(this.data, {final String? $type})
      : $type = $type ?? 'multisig';

  factory _$_Multisig.fromJson(Map<String, dynamic> json) =>
      _$$_MultisigFromJson(json);

  @override
  final MultisigTransaction data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WalletInteractionMethod.multisig(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Multisig &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultisigCopyWith<_$_Multisig> get copyWith =>
      __$$_MultisigCopyWithImpl<_$_Multisig>(this, _$identity);

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
    return _$$_MultisigToJson(
      this,
    );
  }
}

abstract class _Multisig implements WalletInteractionMethod {
  const factory _Multisig(final MultisigTransaction data) = _$_Multisig;

  factory _Multisig.fromJson(Map<String, dynamic> json) = _$_Multisig.fromJson;

  MultisigTransaction get data;
  @JsonKey(ignore: true)
  _$$_MultisigCopyWith<_$_Multisig> get copyWith =>
      throw _privateConstructorUsedError;
}
