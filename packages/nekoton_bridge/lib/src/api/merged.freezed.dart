// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merged.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MnemonicType {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MnemonicType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MnemonicType()';
  }
}

/// @nodoc
class $MnemonicTypeCopyWith<$Res> {
  $MnemonicTypeCopyWith(MnemonicType _, $Res Function(MnemonicType) __);
}

/// @nodoc

class MnemonicType_Legacy extends MnemonicType {
  const MnemonicType_Legacy() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MnemonicType_Legacy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MnemonicType.legacy()';
  }
}

/// @nodoc

class MnemonicType_Bip39 extends MnemonicType {
  const MnemonicType_Bip39(this.field0) : super._();

  final Bip39MnemonicData field0;

  /// Create a copy of MnemonicType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MnemonicType_Bip39CopyWith<MnemonicType_Bip39> get copyWith =>
      _$MnemonicType_Bip39CopyWithImpl<MnemonicType_Bip39>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MnemonicType_Bip39 &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'MnemonicType.bip39(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $MnemonicType_Bip39CopyWith<$Res>
    implements $MnemonicTypeCopyWith<$Res> {
  factory $MnemonicType_Bip39CopyWith(
          MnemonicType_Bip39 value, $Res Function(MnemonicType_Bip39) _then) =
      _$MnemonicType_Bip39CopyWithImpl;
  @useResult
  $Res call({Bip39MnemonicData field0});
}

/// @nodoc
class _$MnemonicType_Bip39CopyWithImpl<$Res>
    implements $MnemonicType_Bip39CopyWith<$Res> {
  _$MnemonicType_Bip39CopyWithImpl(this._self, this._then);

  final MnemonicType_Bip39 _self;
  final $Res Function(MnemonicType_Bip39) _then;

  /// Create a copy of MnemonicType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(MnemonicType_Bip39(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Bip39MnemonicData,
    ));
  }
}

// dart format on
