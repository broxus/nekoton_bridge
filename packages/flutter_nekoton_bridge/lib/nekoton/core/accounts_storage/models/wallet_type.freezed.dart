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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    case 'walletV4R1':
      return _WalletTypeWalletV4R1.fromJson(json);
    case 'walletV4R2':
      return _WalletTypeWalletV4R2.fromJson(json);
    case 'walletV5R1':
      return _WalletTypeWalletV5R1.fromJson(json);

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
    required TResult Function() walletV4R1,
    required TResult Function() walletV4R2,
    required TResult Function() walletV5R1,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MultisigType data)? multisig,
    TResult? Function()? walletV3,
    TResult? Function()? highloadWalletV2,
    TResult? Function()? everWallet,
    TResult? Function()? walletV4R1,
    TResult? Function()? walletV4R2,
    TResult? Function()? walletV5R1,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultisigType data)? multisig,
    TResult Function()? walletV3,
    TResult Function()? highloadWalletV2,
    TResult Function()? everWallet,
    TResult Function()? walletV4R1,
    TResult Function()? walletV4R2,
    TResult Function()? walletV5R1,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Multisig value) multisig,
    required TResult Function(_WalletV3 value) walletV3,
    required TResult Function(_HighloadWalletV2 value) highloadWalletV2,
    required TResult Function(_WalletTypeEverWallet value) everWallet,
    required TResult Function(_WalletTypeWalletV4R1 value) walletV4R1,
    required TResult Function(_WalletTypeWalletV4R2 value) walletV4R2,
    required TResult Function(_WalletTypeWalletV5R1 value) walletV5R1,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Multisig value)? multisig,
    TResult? Function(_WalletV3 value)? walletV3,
    TResult? Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult? Function(_WalletTypeEverWallet value)? everWallet,
    TResult? Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult? Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult? Function(_WalletTypeWalletV5R1 value)? walletV5R1,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Multisig value)? multisig,
    TResult Function(_WalletV3 value)? walletV3,
    TResult Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult Function(_WalletTypeEverWallet value)? everWallet,
    TResult Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult Function(_WalletTypeWalletV5R1 value)? walletV5R1,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this WalletType to a JSON map.
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

  /// Create a copy of WalletType
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of WalletType
  /// with the given fields replaced by the non-null parameter values.
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultisigImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of WalletType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function() walletV4R1,
    required TResult Function() walletV4R2,
    required TResult Function() walletV5R1,
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
    TResult? Function()? walletV4R1,
    TResult? Function()? walletV4R2,
    TResult? Function()? walletV5R1,
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
    TResult Function()? walletV4R1,
    TResult Function()? walletV4R2,
    TResult Function()? walletV5R1,
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
    required TResult Function(_WalletTypeWalletV4R1 value) walletV4R1,
    required TResult Function(_WalletTypeWalletV4R2 value) walletV4R2,
    required TResult Function(_WalletTypeWalletV5R1 value) walletV5R1,
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
    TResult? Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult? Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult? Function(_WalletTypeWalletV5R1 value)? walletV5R1,
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
    TResult Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult Function(_WalletTypeWalletV5R1 value)? walletV5R1,
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

  /// Create a copy of WalletType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WalletType
  /// with the given fields replaced by the non-null parameter values.
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletV3Impl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultisigType data) multisig,
    required TResult Function() walletV3,
    required TResult Function() highloadWalletV2,
    required TResult Function() everWallet,
    required TResult Function() walletV4R1,
    required TResult Function() walletV4R2,
    required TResult Function() walletV5R1,
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
    TResult? Function()? walletV4R1,
    TResult? Function()? walletV4R2,
    TResult? Function()? walletV5R1,
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
    TResult Function()? walletV4R1,
    TResult Function()? walletV4R2,
    TResult Function()? walletV5R1,
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
    required TResult Function(_WalletTypeWalletV4R1 value) walletV4R1,
    required TResult Function(_WalletTypeWalletV4R2 value) walletV4R2,
    required TResult Function(_WalletTypeWalletV5R1 value) walletV5R1,
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
    TResult? Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult? Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult? Function(_WalletTypeWalletV5R1 value)? walletV5R1,
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
    TResult Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult Function(_WalletTypeWalletV5R1 value)? walletV5R1,
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

  /// Create a copy of WalletType
  /// with the given fields replaced by the non-null parameter values.
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HighloadWalletV2Impl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultisigType data) multisig,
    required TResult Function() walletV3,
    required TResult Function() highloadWalletV2,
    required TResult Function() everWallet,
    required TResult Function() walletV4R1,
    required TResult Function() walletV4R2,
    required TResult Function() walletV5R1,
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
    TResult? Function()? walletV4R1,
    TResult? Function()? walletV4R2,
    TResult? Function()? walletV5R1,
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
    TResult Function()? walletV4R1,
    TResult Function()? walletV4R2,
    TResult Function()? walletV5R1,
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
    required TResult Function(_WalletTypeWalletV4R1 value) walletV4R1,
    required TResult Function(_WalletTypeWalletV4R2 value) walletV4R2,
    required TResult Function(_WalletTypeWalletV5R1 value) walletV5R1,
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
    TResult? Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult? Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult? Function(_WalletTypeWalletV5R1 value)? walletV5R1,
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
    TResult Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult Function(_WalletTypeWalletV5R1 value)? walletV5R1,
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

  /// Create a copy of WalletType
  /// with the given fields replaced by the non-null parameter values.
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTypeEverWalletImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultisigType data) multisig,
    required TResult Function() walletV3,
    required TResult Function() highloadWalletV2,
    required TResult Function() everWallet,
    required TResult Function() walletV4R1,
    required TResult Function() walletV4R2,
    required TResult Function() walletV5R1,
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
    TResult? Function()? walletV4R1,
    TResult? Function()? walletV4R2,
    TResult? Function()? walletV5R1,
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
    TResult Function()? walletV4R1,
    TResult Function()? walletV4R2,
    TResult Function()? walletV5R1,
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
    required TResult Function(_WalletTypeWalletV4R1 value) walletV4R1,
    required TResult Function(_WalletTypeWalletV4R2 value) walletV4R2,
    required TResult Function(_WalletTypeWalletV5R1 value) walletV5R1,
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
    TResult? Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult? Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult? Function(_WalletTypeWalletV5R1 value)? walletV5R1,
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
    TResult Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult Function(_WalletTypeWalletV5R1 value)? walletV5R1,
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

/// @nodoc
abstract class _$$WalletTypeWalletV4R1ImplCopyWith<$Res> {
  factory _$$WalletTypeWalletV4R1ImplCopyWith(_$WalletTypeWalletV4R1Impl value,
          $Res Function(_$WalletTypeWalletV4R1Impl) then) =
      __$$WalletTypeWalletV4R1ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletTypeWalletV4R1ImplCopyWithImpl<$Res>
    extends _$WalletTypeCopyWithImpl<$Res, _$WalletTypeWalletV4R1Impl>
    implements _$$WalletTypeWalletV4R1ImplCopyWith<$Res> {
  __$$WalletTypeWalletV4R1ImplCopyWithImpl(_$WalletTypeWalletV4R1Impl _value,
      $Res Function(_$WalletTypeWalletV4R1Impl) _then)
      : super(_value, _then);

  /// Create a copy of WalletType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$WalletTypeWalletV4R1Impl implements _WalletTypeWalletV4R1 {
  const _$WalletTypeWalletV4R1Impl({final String? $type})
      : $type = $type ?? 'walletV4R1';

  factory _$WalletTypeWalletV4R1Impl.fromJson(Map<String, dynamic> json) =>
      _$$WalletTypeWalletV4R1ImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WalletType.walletV4R1()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTypeWalletV4R1Impl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultisigType data) multisig,
    required TResult Function() walletV3,
    required TResult Function() highloadWalletV2,
    required TResult Function() everWallet,
    required TResult Function() walletV4R1,
    required TResult Function() walletV4R2,
    required TResult Function() walletV5R1,
  }) {
    return walletV4R1();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MultisigType data)? multisig,
    TResult? Function()? walletV3,
    TResult? Function()? highloadWalletV2,
    TResult? Function()? everWallet,
    TResult? Function()? walletV4R1,
    TResult? Function()? walletV4R2,
    TResult? Function()? walletV5R1,
  }) {
    return walletV4R1?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultisigType data)? multisig,
    TResult Function()? walletV3,
    TResult Function()? highloadWalletV2,
    TResult Function()? everWallet,
    TResult Function()? walletV4R1,
    TResult Function()? walletV4R2,
    TResult Function()? walletV5R1,
    required TResult orElse(),
  }) {
    if (walletV4R1 != null) {
      return walletV4R1();
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
    required TResult Function(_WalletTypeWalletV4R1 value) walletV4R1,
    required TResult Function(_WalletTypeWalletV4R2 value) walletV4R2,
    required TResult Function(_WalletTypeWalletV5R1 value) walletV5R1,
  }) {
    return walletV4R1(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Multisig value)? multisig,
    TResult? Function(_WalletV3 value)? walletV3,
    TResult? Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult? Function(_WalletTypeEverWallet value)? everWallet,
    TResult? Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult? Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult? Function(_WalletTypeWalletV5R1 value)? walletV5R1,
  }) {
    return walletV4R1?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Multisig value)? multisig,
    TResult Function(_WalletV3 value)? walletV3,
    TResult Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult Function(_WalletTypeEverWallet value)? everWallet,
    TResult Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult Function(_WalletTypeWalletV5R1 value)? walletV5R1,
    required TResult orElse(),
  }) {
    if (walletV4R1 != null) {
      return walletV4R1(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletTypeWalletV4R1ImplToJson(
      this,
    );
  }
}

abstract class _WalletTypeWalletV4R1 implements WalletType {
  const factory _WalletTypeWalletV4R1() = _$WalletTypeWalletV4R1Impl;

  factory _WalletTypeWalletV4R1.fromJson(Map<String, dynamic> json) =
      _$WalletTypeWalletV4R1Impl.fromJson;
}

/// @nodoc
abstract class _$$WalletTypeWalletV4R2ImplCopyWith<$Res> {
  factory _$$WalletTypeWalletV4R2ImplCopyWith(_$WalletTypeWalletV4R2Impl value,
          $Res Function(_$WalletTypeWalletV4R2Impl) then) =
      __$$WalletTypeWalletV4R2ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletTypeWalletV4R2ImplCopyWithImpl<$Res>
    extends _$WalletTypeCopyWithImpl<$Res, _$WalletTypeWalletV4R2Impl>
    implements _$$WalletTypeWalletV4R2ImplCopyWith<$Res> {
  __$$WalletTypeWalletV4R2ImplCopyWithImpl(_$WalletTypeWalletV4R2Impl _value,
      $Res Function(_$WalletTypeWalletV4R2Impl) _then)
      : super(_value, _then);

  /// Create a copy of WalletType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$WalletTypeWalletV4R2Impl implements _WalletTypeWalletV4R2 {
  const _$WalletTypeWalletV4R2Impl({final String? $type})
      : $type = $type ?? 'walletV4R2';

  factory _$WalletTypeWalletV4R2Impl.fromJson(Map<String, dynamic> json) =>
      _$$WalletTypeWalletV4R2ImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WalletType.walletV4R2()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTypeWalletV4R2Impl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultisigType data) multisig,
    required TResult Function() walletV3,
    required TResult Function() highloadWalletV2,
    required TResult Function() everWallet,
    required TResult Function() walletV4R1,
    required TResult Function() walletV4R2,
    required TResult Function() walletV5R1,
  }) {
    return walletV4R2();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MultisigType data)? multisig,
    TResult? Function()? walletV3,
    TResult? Function()? highloadWalletV2,
    TResult? Function()? everWallet,
    TResult? Function()? walletV4R1,
    TResult? Function()? walletV4R2,
    TResult? Function()? walletV5R1,
  }) {
    return walletV4R2?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultisigType data)? multisig,
    TResult Function()? walletV3,
    TResult Function()? highloadWalletV2,
    TResult Function()? everWallet,
    TResult Function()? walletV4R1,
    TResult Function()? walletV4R2,
    TResult Function()? walletV5R1,
    required TResult orElse(),
  }) {
    if (walletV4R2 != null) {
      return walletV4R2();
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
    required TResult Function(_WalletTypeWalletV4R1 value) walletV4R1,
    required TResult Function(_WalletTypeWalletV4R2 value) walletV4R2,
    required TResult Function(_WalletTypeWalletV5R1 value) walletV5R1,
  }) {
    return walletV4R2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Multisig value)? multisig,
    TResult? Function(_WalletV3 value)? walletV3,
    TResult? Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult? Function(_WalletTypeEverWallet value)? everWallet,
    TResult? Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult? Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult? Function(_WalletTypeWalletV5R1 value)? walletV5R1,
  }) {
    return walletV4R2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Multisig value)? multisig,
    TResult Function(_WalletV3 value)? walletV3,
    TResult Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult Function(_WalletTypeEverWallet value)? everWallet,
    TResult Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult Function(_WalletTypeWalletV5R1 value)? walletV5R1,
    required TResult orElse(),
  }) {
    if (walletV4R2 != null) {
      return walletV4R2(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletTypeWalletV4R2ImplToJson(
      this,
    );
  }
}

abstract class _WalletTypeWalletV4R2 implements WalletType {
  const factory _WalletTypeWalletV4R2() = _$WalletTypeWalletV4R2Impl;

  factory _WalletTypeWalletV4R2.fromJson(Map<String, dynamic> json) =
      _$WalletTypeWalletV4R2Impl.fromJson;
}

/// @nodoc
abstract class _$$WalletTypeWalletV5R1ImplCopyWith<$Res> {
  factory _$$WalletTypeWalletV5R1ImplCopyWith(_$WalletTypeWalletV5R1Impl value,
          $Res Function(_$WalletTypeWalletV5R1Impl) then) =
      __$$WalletTypeWalletV5R1ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletTypeWalletV5R1ImplCopyWithImpl<$Res>
    extends _$WalletTypeCopyWithImpl<$Res, _$WalletTypeWalletV5R1Impl>
    implements _$$WalletTypeWalletV5R1ImplCopyWith<$Res> {
  __$$WalletTypeWalletV5R1ImplCopyWithImpl(_$WalletTypeWalletV5R1Impl _value,
      $Res Function(_$WalletTypeWalletV5R1Impl) _then)
      : super(_value, _then);

  /// Create a copy of WalletType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$WalletTypeWalletV5R1Impl implements _WalletTypeWalletV5R1 {
  const _$WalletTypeWalletV5R1Impl({final String? $type})
      : $type = $type ?? 'walletV5R1';

  factory _$WalletTypeWalletV5R1Impl.fromJson(Map<String, dynamic> json) =>
      _$$WalletTypeWalletV5R1ImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WalletType.walletV5R1()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTypeWalletV5R1Impl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultisigType data) multisig,
    required TResult Function() walletV3,
    required TResult Function() highloadWalletV2,
    required TResult Function() everWallet,
    required TResult Function() walletV4R1,
    required TResult Function() walletV4R2,
    required TResult Function() walletV5R1,
  }) {
    return walletV5R1();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MultisigType data)? multisig,
    TResult? Function()? walletV3,
    TResult? Function()? highloadWalletV2,
    TResult? Function()? everWallet,
    TResult? Function()? walletV4R1,
    TResult? Function()? walletV4R2,
    TResult? Function()? walletV5R1,
  }) {
    return walletV5R1?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultisigType data)? multisig,
    TResult Function()? walletV3,
    TResult Function()? highloadWalletV2,
    TResult Function()? everWallet,
    TResult Function()? walletV4R1,
    TResult Function()? walletV4R2,
    TResult Function()? walletV5R1,
    required TResult orElse(),
  }) {
    if (walletV5R1 != null) {
      return walletV5R1();
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
    required TResult Function(_WalletTypeWalletV4R1 value) walletV4R1,
    required TResult Function(_WalletTypeWalletV4R2 value) walletV4R2,
    required TResult Function(_WalletTypeWalletV5R1 value) walletV5R1,
  }) {
    return walletV5R1(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Multisig value)? multisig,
    TResult? Function(_WalletV3 value)? walletV3,
    TResult? Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult? Function(_WalletTypeEverWallet value)? everWallet,
    TResult? Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult? Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult? Function(_WalletTypeWalletV5R1 value)? walletV5R1,
  }) {
    return walletV5R1?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Multisig value)? multisig,
    TResult Function(_WalletV3 value)? walletV3,
    TResult Function(_HighloadWalletV2 value)? highloadWalletV2,
    TResult Function(_WalletTypeEverWallet value)? everWallet,
    TResult Function(_WalletTypeWalletV4R1 value)? walletV4R1,
    TResult Function(_WalletTypeWalletV4R2 value)? walletV4R2,
    TResult Function(_WalletTypeWalletV5R1 value)? walletV5R1,
    required TResult orElse(),
  }) {
    if (walletV5R1 != null) {
      return walletV5R1(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletTypeWalletV5R1ImplToJson(
      this,
    );
  }
}

abstract class _WalletTypeWalletV5R1 implements WalletType {
  const factory _WalletTypeWalletV5R1() = _$WalletTypeWalletV5R1Impl;

  factory _WalletTypeWalletV5R1.fromJson(Map<String, dynamic> json) =
      _$WalletTypeWalletV5R1Impl.fromJson;
}
