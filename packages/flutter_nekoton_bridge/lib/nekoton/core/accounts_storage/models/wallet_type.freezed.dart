// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletType _$WalletTypeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'multisig':
      return _Multisig.fromJson(json);
    case 'walletV3':
      return _WalletV3.fromJson(json);
    case 'highloadWalletV2':
      return _HighloadWalletV2.fromJson(json);
    case 'everWallet':
      return _WalletTypeEverWallet.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'WalletType', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$WalletType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultisigType data) multisig,
    required TResult Function() walletV3,
    required TResult Function() highloadWalletV2,
    required TResult Function() everWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MultisigType data)? multisig,
    TResult? Function()? walletV3,
    TResult? Function()? highloadWalletV2,
    TResult? Function()? everWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultisigType data)? multisig,
    TResult Function()? walletV3,
    TResult Function()? highloadWalletV2,
    TResult Function()? everWallet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Multisig value) multisig,
    required TResult Function(_WalletV3 value) walletV3,
    required TResult Function(_HighloadWalletV2 value) highloadWalletV2,
    required TResult Function(_WalletTypeEverWallet value) everWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Multisig value)? multisig,
    TResult? Function(_WalletV3 value)? walletV3,
    TResult? Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult? Function(_WalletTypeEverWallet value)? everWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Multisig value)? multisig,
    TResult Function(_WalletV3 value)? walletV3,
    TResult Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult Function(_WalletTypeEverWallet value)? everWallet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTypeCopyWith<$Res> {
  factory $WalletTypeCopyWith(
          WalletType value, $Res Function(WalletType) then) =
      _$WalletTypeCopyWithImpl<$Res, WalletType>;
}

/// @nodoc
class _$WalletTypeCopyWithImpl<$Res, $Val extends WalletType>
    implements $WalletTypeCopyWith<$Res> {
  _$WalletTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MultisigImplCopyWith<$Res> {
  factory _$$MultisigImplCopyWith(
          _$MultisigImpl value, $Res Function(_$MultisigImpl) then) =
      __$$MultisigImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MultisigType data});
}

/// @nodoc
class __$$MultisigImplCopyWithImpl<$Res>
    extends _$WalletTypeCopyWithImpl<$Res, _$MultisigImpl>
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
              as MultisigType,
    ));
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
  final MultisigType data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WalletType.multisig(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
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
    required TResult Function(MultisigType data) multisig,
    required TResult Function() walletV3,
    required TResult Function() highloadWalletV2,
    required TResult Function() everWallet,
  }) {
    return multisig(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MultisigType data)? multisig,
    TResult? Function()? walletV3,
    TResult? Function()? highloadWalletV2,
    TResult? Function()? everWallet,
  }) {
    return multisig?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultisigType data)? multisig,
    TResult Function()? walletV3,
    TResult Function()? highloadWalletV2,
    TResult Function()? everWallet,
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
    required TResult Function(_Multisig value) multisig,
    required TResult Function(_WalletV3 value) walletV3,
    required TResult Function(_HighloadWalletV2 value) highloadWalletV2,
    required TResult Function(_WalletTypeEverWallet value) everWallet,
  }) {
    return multisig(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Multisig value)? multisig,
    TResult? Function(_WalletV3 value)? walletV3,
    TResult? Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult? Function(_WalletTypeEverWallet value)? everWallet,
  }) {
    return multisig?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Multisig value)? multisig,
    TResult Function(_WalletV3 value)? walletV3,
    TResult Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult Function(_WalletTypeEverWallet value)? everWallet,
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

abstract class _Multisig implements WalletType {
  const factory _Multisig(final MultisigType data) = _$MultisigImpl;

  factory _Multisig.fromJson(Map<String, dynamic> json) =
      _$MultisigImpl.fromJson;

  MultisigType get data;
  @JsonKey(ignore: true)
  _$$MultisigImplCopyWith<_$MultisigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletV3ImplCopyWith<$Res> {
  factory _$$WalletV3ImplCopyWith(
          _$WalletV3Impl value, $Res Function(_$WalletV3Impl) then) =
      __$$WalletV3ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletV3ImplCopyWithImpl<$Res>
    extends _$WalletTypeCopyWithImpl<$Res, _$WalletV3Impl>
    implements _$$WalletV3ImplCopyWith<$Res> {
  __$$WalletV3ImplCopyWithImpl(
      _$WalletV3Impl _value, $Res Function(_$WalletV3Impl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$WalletV3Impl implements _WalletV3 {
  const _$WalletV3Impl({final String? $type}) : $type = $type ?? 'walletV3';

  factory _$WalletV3Impl.fromJson(Map<String, dynamic> json) =>
      _$$WalletV3ImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WalletType.walletV3()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletV3Impl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultisigType data) multisig,
    required TResult Function() walletV3,
    required TResult Function() highloadWalletV2,
    required TResult Function() everWallet,
  }) {
    return walletV3();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MultisigType data)? multisig,
    TResult? Function()? walletV3,
    TResult? Function()? highloadWalletV2,
    TResult? Function()? everWallet,
  }) {
    return walletV3?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultisigType data)? multisig,
    TResult Function()? walletV3,
    TResult Function()? highloadWalletV2,
    TResult Function()? everWallet,
    required TResult orElse(),
  }) {
    if (walletV3 != null) {
      return walletV3();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Multisig value) multisig,
    required TResult Function(_WalletV3 value) walletV3,
    required TResult Function(_HighloadWalletV2 value) highloadWalletV2,
    required TResult Function(_WalletTypeEverWallet value) everWallet,
  }) {
    return walletV3(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Multisig value)? multisig,
    TResult? Function(_WalletV3 value)? walletV3,
    TResult? Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult? Function(_WalletTypeEverWallet value)? everWallet,
  }) {
    return walletV3?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Multisig value)? multisig,
    TResult Function(_WalletV3 value)? walletV3,
    TResult Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult Function(_WalletTypeEverWallet value)? everWallet,
    required TResult orElse(),
  }) {
    if (walletV3 != null) {
      return walletV3(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletV3ImplToJson(
      this,
    );
  }
}

abstract class _WalletV3 implements WalletType {
  const factory _WalletV3() = _$WalletV3Impl;

  factory _WalletV3.fromJson(Map<String, dynamic> json) =
      _$WalletV3Impl.fromJson;
}

/// @nodoc
abstract class _$$HighloadWalletV2ImplCopyWith<$Res> {
  factory _$$HighloadWalletV2ImplCopyWith(_$HighloadWalletV2Impl value,
          $Res Function(_$HighloadWalletV2Impl) then) =
      __$$HighloadWalletV2ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HighloadWalletV2ImplCopyWithImpl<$Res>
    extends _$WalletTypeCopyWithImpl<$Res, _$HighloadWalletV2Impl>
    implements _$$HighloadWalletV2ImplCopyWith<$Res> {
  __$$HighloadWalletV2ImplCopyWithImpl(_$HighloadWalletV2Impl _value,
      $Res Function(_$HighloadWalletV2Impl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$HighloadWalletV2Impl implements _HighloadWalletV2 {
  const _$HighloadWalletV2Impl({final String? $type})
      : $type = $type ?? 'highloadWalletV2';

  factory _$HighloadWalletV2Impl.fromJson(Map<String, dynamic> json) =>
      _$$HighloadWalletV2ImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WalletType.highloadWalletV2()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HighloadWalletV2Impl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultisigType data) multisig,
    required TResult Function() walletV3,
    required TResult Function() highloadWalletV2,
    required TResult Function() everWallet,
  }) {
    return highloadWalletV2();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MultisigType data)? multisig,
    TResult? Function()? walletV3,
    TResult? Function()? highloadWalletV2,
    TResult? Function()? everWallet,
  }) {
    return highloadWalletV2?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultisigType data)? multisig,
    TResult Function()? walletV3,
    TResult Function()? highloadWalletV2,
    TResult Function()? everWallet,
    required TResult orElse(),
  }) {
    if (highloadWalletV2 != null) {
      return highloadWalletV2();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Multisig value) multisig,
    required TResult Function(_WalletV3 value) walletV3,
    required TResult Function(_HighloadWalletV2 value) highloadWalletV2,
    required TResult Function(_WalletTypeEverWallet value) everWallet,
  }) {
    return highloadWalletV2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Multisig value)? multisig,
    TResult? Function(_WalletV3 value)? walletV3,
    TResult? Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult? Function(_WalletTypeEverWallet value)? everWallet,
  }) {
    return highloadWalletV2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Multisig value)? multisig,
    TResult Function(_WalletV3 value)? walletV3,
    TResult Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult Function(_WalletTypeEverWallet value)? everWallet,
    required TResult orElse(),
  }) {
    if (highloadWalletV2 != null) {
      return highloadWalletV2(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HighloadWalletV2ImplToJson(
      this,
    );
  }
}

abstract class _HighloadWalletV2 implements WalletType {
  const factory _HighloadWalletV2() = _$HighloadWalletV2Impl;

  factory _HighloadWalletV2.fromJson(Map<String, dynamic> json) =
      _$HighloadWalletV2Impl.fromJson;
}

/// @nodoc
abstract class _$$WalletTypeEverWalletImplCopyWith<$Res> {
  factory _$$WalletTypeEverWalletImplCopyWith(_$WalletTypeEverWalletImpl value,
          $Res Function(_$WalletTypeEverWalletImpl) then) =
      __$$WalletTypeEverWalletImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletTypeEverWalletImplCopyWithImpl<$Res>
    extends _$WalletTypeCopyWithImpl<$Res, _$WalletTypeEverWalletImpl>
    implements _$$WalletTypeEverWalletImplCopyWith<$Res> {
  __$$WalletTypeEverWalletImplCopyWithImpl(_$WalletTypeEverWalletImpl _value,
      $Res Function(_$WalletTypeEverWalletImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$WalletTypeEverWalletImpl implements _WalletTypeEverWallet {
  const _$WalletTypeEverWalletImpl({final String? $type})
      : $type = $type ?? 'everWallet';

  factory _$WalletTypeEverWalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletTypeEverWalletImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WalletType.everWallet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTypeEverWalletImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultisigType data) multisig,
    required TResult Function() walletV3,
    required TResult Function() highloadWalletV2,
    required TResult Function() everWallet,
  }) {
    return everWallet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MultisigType data)? multisig,
    TResult? Function()? walletV3,
    TResult? Function()? highloadWalletV2,
    TResult? Function()? everWallet,
  }) {
    return everWallet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultisigType data)? multisig,
    TResult Function()? walletV3,
    TResult Function()? highloadWalletV2,
    TResult Function()? everWallet,
    required TResult orElse(),
  }) {
    if (everWallet != null) {
      return everWallet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Multisig value) multisig,
    required TResult Function(_WalletV3 value) walletV3,
    required TResult Function(_HighloadWalletV2 value) highloadWalletV2,
    required TResult Function(_WalletTypeEverWallet value) everWallet,
  }) {
    return everWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Multisig value)? multisig,
    TResult? Function(_WalletV3 value)? walletV3,
    TResult? Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult? Function(_WalletTypeEverWallet value)? everWallet,
  }) {
    return everWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Multisig value)? multisig,
    TResult Function(_WalletV3 value)? walletV3,
    TResult Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult Function(_WalletTypeEverWallet value)? everWallet,
    required TResult orElse(),
  }) {
    if (everWallet != null) {
      return everWallet(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletTypeEverWalletImplToJson(
      this,
    );
  }
}

abstract class _WalletTypeEverWallet implements WalletType {
  const factory _WalletTypeEverWallet() = _$WalletTypeEverWalletImpl;

  factory _WalletTypeEverWallet.fromJson(Map<String, dynamic> json) =
      _$WalletTypeEverWalletImpl.fromJson;
}
