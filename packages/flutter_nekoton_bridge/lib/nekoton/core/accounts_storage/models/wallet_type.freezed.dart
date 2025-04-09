// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
WalletType _$WalletTypeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'multisig':
      return WalletTypeMultisig.fromJson(json);
    case 'walletV3':
      return WalletTypeWalletV3.fromJson(json);
    case 'highloadWalletV2':
      return WalletTypeHighloadWalletV2.fromJson(json);
    case 'everWallet':
      return WalletTypeEverWallet.fromJson(json);
    case 'walletV3R1':
      return WalletTypeWalletV3R1.fromJson(json);
    case 'walletV3R2':
      return WalletTypeWalletV3R2.fromJson(json);
    case 'walletV4R1':
      return WalletTypeWalletV4R1.fromJson(json);
    case 'walletV4R2':
      return WalletTypeWalletV4R2.fromJson(json);
    case 'walletV5R1':
      return WalletTypeWalletV5R1.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'WalletType', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$WalletType {
  /// Serializes this WalletType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WalletType);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'WalletType()';
  }
}

/// @nodoc
class $WalletTypeCopyWith<$Res> {
  $WalletTypeCopyWith(WalletType _, $Res Function(WalletType) __);
}

/// @nodoc
@JsonSerializable()
class WalletTypeMultisig implements WalletType {
  const WalletTypeMultisig(this.data, {final String? $type})
      : $type = $type ?? 'multisig';
  factory WalletTypeMultisig.fromJson(Map<String, dynamic> json) =>
      _$WalletTypeMultisigFromJson(json);

  final MultisigType data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of WalletType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WalletTypeMultisigCopyWith<WalletTypeMultisig> get copyWith =>
      _$WalletTypeMultisigCopyWithImpl<WalletTypeMultisig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WalletTypeMultisigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletTypeMultisig &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'WalletType.multisig(data: $data)';
  }
}

/// @nodoc
abstract mixin class $WalletTypeMultisigCopyWith<$Res>
    implements $WalletTypeCopyWith<$Res> {
  factory $WalletTypeMultisigCopyWith(
          WalletTypeMultisig value, $Res Function(WalletTypeMultisig) _then) =
      _$WalletTypeMultisigCopyWithImpl;
  @useResult
  $Res call({MultisigType data});
}

/// @nodoc
class _$WalletTypeMultisigCopyWithImpl<$Res>
    implements $WalletTypeMultisigCopyWith<$Res> {
  _$WalletTypeMultisigCopyWithImpl(this._self, this._then);

  final WalletTypeMultisig _self;
  final $Res Function(WalletTypeMultisig) _then;

  /// Create a copy of WalletType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(WalletTypeMultisig(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as MultisigType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class WalletTypeWalletV3 implements WalletType {
  const WalletTypeWalletV3({final String? $type}) : $type = $type ?? 'walletV3';
  factory WalletTypeWalletV3.fromJson(Map<String, dynamic> json) =>
      _$WalletTypeWalletV3FromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$WalletTypeWalletV3ToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WalletTypeWalletV3);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'WalletType.walletV3()';
  }
}

/// @nodoc
@JsonSerializable()
class WalletTypeHighloadWalletV2 implements WalletType {
  const WalletTypeHighloadWalletV2({final String? $type})
      : $type = $type ?? 'highloadWalletV2';
  factory WalletTypeHighloadWalletV2.fromJson(Map<String, dynamic> json) =>
      _$WalletTypeHighloadWalletV2FromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$WalletTypeHighloadWalletV2ToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletTypeHighloadWalletV2);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'WalletType.highloadWalletV2()';
  }
}

/// @nodoc
@JsonSerializable()
class WalletTypeEverWallet implements WalletType {
  const WalletTypeEverWallet({final String? $type})
      : $type = $type ?? 'everWallet';
  factory WalletTypeEverWallet.fromJson(Map<String, dynamic> json) =>
      _$WalletTypeEverWalletFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$WalletTypeEverWalletToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WalletTypeEverWallet);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'WalletType.everWallet()';
  }
}

/// @nodoc
@JsonSerializable()
class WalletTypeWalletV3R1 implements WalletType {
  const WalletTypeWalletV3R1({final String? $type})
      : $type = $type ?? 'walletV3R1';
  factory WalletTypeWalletV3R1.fromJson(Map<String, dynamic> json) =>
      _$WalletTypeWalletV3R1FromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$WalletTypeWalletV3R1ToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WalletTypeWalletV3R1);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'WalletType.walletV3R1()';
  }
}

/// @nodoc
@JsonSerializable()
class WalletTypeWalletV3R2 implements WalletType {
  const WalletTypeWalletV3R2({final String? $type})
      : $type = $type ?? 'walletV3R2';
  factory WalletTypeWalletV3R2.fromJson(Map<String, dynamic> json) =>
      _$WalletTypeWalletV3R2FromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$WalletTypeWalletV3R2ToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WalletTypeWalletV3R2);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'WalletType.walletV3R2()';
  }
}

/// @nodoc
@JsonSerializable()
class WalletTypeWalletV4R1 implements WalletType {
  const WalletTypeWalletV4R1({final String? $type})
      : $type = $type ?? 'walletV4R1';
  factory WalletTypeWalletV4R1.fromJson(Map<String, dynamic> json) =>
      _$WalletTypeWalletV4R1FromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$WalletTypeWalletV4R1ToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WalletTypeWalletV4R1);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'WalletType.walletV4R1()';
  }
}

/// @nodoc
@JsonSerializable()
class WalletTypeWalletV4R2 implements WalletType {
  const WalletTypeWalletV4R2({final String? $type})
      : $type = $type ?? 'walletV4R2';
  factory WalletTypeWalletV4R2.fromJson(Map<String, dynamic> json) =>
      _$WalletTypeWalletV4R2FromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$WalletTypeWalletV4R2ToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WalletTypeWalletV4R2);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'WalletType.walletV4R2()';
  }
}

/// @nodoc
@JsonSerializable()
class WalletTypeWalletV5R1 implements WalletType {
  const WalletTypeWalletV5R1({final String? $type})
      : $type = $type ?? 'walletV5R1';
  factory WalletTypeWalletV5R1.fromJson(Map<String, dynamic> json) =>
      _$WalletTypeWalletV5R1FromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$WalletTypeWalletV5R1ToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WalletTypeWalletV5R1);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'WalletType.walletV5R1()';
  }
}

// dart format on
