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
abstract class _$$_MultisigCopyWith<$Res> {
  factory _$$_MultisigCopyWith(
          _$_Multisig value, $Res Function(_$_Multisig) then) =
      __$$_MultisigCopyWithImpl<$Res>;
  @useResult
  $Res call({MultisigType data});
}

/// @nodoc
class __$$_MultisigCopyWithImpl<$Res>
    extends _$WalletTypeCopyWithImpl<$Res, _$_Multisig>
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
              as MultisigType,
    ));
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
    return _$$_MultisigToJson(
      this,
    );
  }
}

abstract class _Multisig implements WalletType {
  const factory _Multisig(final MultisigType data) = _$_Multisig;

  factory _Multisig.fromJson(Map<String, dynamic> json) = _$_Multisig.fromJson;

  MultisigType get data;
  @JsonKey(ignore: true)
  _$$_MultisigCopyWith<_$_Multisig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WalletV3CopyWith<$Res> {
  factory _$$_WalletV3CopyWith(
          _$_WalletV3 value, $Res Function(_$_WalletV3) then) =
      __$$_WalletV3CopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WalletV3CopyWithImpl<$Res>
    extends _$WalletTypeCopyWithImpl<$Res, _$_WalletV3>
    implements _$$_WalletV3CopyWith<$Res> {
  __$$_WalletV3CopyWithImpl(
      _$_WalletV3 _value, $Res Function(_$_WalletV3) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_WalletV3 implements _WalletV3 {
  const _$_WalletV3({final String? $type}) : $type = $type ?? 'walletV3';

  factory _$_WalletV3.fromJson(Map<String, dynamic> json) =>
      _$$_WalletV3FromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WalletType.walletV3()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WalletV3);
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
    return _$$_WalletV3ToJson(
      this,
    );
  }
}

abstract class _WalletV3 implements WalletType {
  const factory _WalletV3() = _$_WalletV3;

  factory _WalletV3.fromJson(Map<String, dynamic> json) = _$_WalletV3.fromJson;
}

/// @nodoc
abstract class _$$_HighloadWalletV2CopyWith<$Res> {
  factory _$$_HighloadWalletV2CopyWith(
          _$_HighloadWalletV2 value, $Res Function(_$_HighloadWalletV2) then) =
      __$$_HighloadWalletV2CopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HighloadWalletV2CopyWithImpl<$Res>
    extends _$WalletTypeCopyWithImpl<$Res, _$_HighloadWalletV2>
    implements _$$_HighloadWalletV2CopyWith<$Res> {
  __$$_HighloadWalletV2CopyWithImpl(
      _$_HighloadWalletV2 _value, $Res Function(_$_HighloadWalletV2) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_HighloadWalletV2 implements _HighloadWalletV2 {
  const _$_HighloadWalletV2({final String? $type})
      : $type = $type ?? 'highloadWalletV2';

  factory _$_HighloadWalletV2.fromJson(Map<String, dynamic> json) =>
      _$$_HighloadWalletV2FromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WalletType.highloadWalletV2()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HighloadWalletV2);
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
    return _$$_HighloadWalletV2ToJson(
      this,
    );
  }
}

abstract class _HighloadWalletV2 implements WalletType {
  const factory _HighloadWalletV2() = _$_HighloadWalletV2;

  factory _HighloadWalletV2.fromJson(Map<String, dynamic> json) =
      _$_HighloadWalletV2.fromJson;
}

/// @nodoc
abstract class _$$_WalletTypeEverWalletCopyWith<$Res> {
  factory _$$_WalletTypeEverWalletCopyWith(_$_WalletTypeEverWallet value,
          $Res Function(_$_WalletTypeEverWallet) then) =
      __$$_WalletTypeEverWalletCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WalletTypeEverWalletCopyWithImpl<$Res>
    extends _$WalletTypeCopyWithImpl<$Res, _$_WalletTypeEverWallet>
    implements _$$_WalletTypeEverWalletCopyWith<$Res> {
  __$$_WalletTypeEverWalletCopyWithImpl(_$_WalletTypeEverWallet _value,
      $Res Function(_$_WalletTypeEverWallet) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_WalletTypeEverWallet implements _WalletTypeEverWallet {
  const _$_WalletTypeEverWallet({final String? $type})
      : $type = $type ?? 'everWallet';

  factory _$_WalletTypeEverWallet.fromJson(Map<String, dynamic> json) =>
      _$$_WalletTypeEverWalletFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'WalletType.everWallet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WalletTypeEverWallet);
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
    return _$$_WalletTypeEverWalletToJson(
      this,
    );
  }
}

abstract class _WalletTypeEverWallet implements WalletType {
  const factory _WalletTypeEverWallet() = _$_WalletTypeEverWallet;

  factory _WalletTypeEverWallet.fromJson(Map<String, dynamic> json) =
      _$_WalletTypeEverWallet.fromJson;
}
