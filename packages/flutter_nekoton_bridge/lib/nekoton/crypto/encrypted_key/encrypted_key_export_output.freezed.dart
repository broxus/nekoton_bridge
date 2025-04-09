// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_export_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EncryptedKeyExportSeedOutput {
  String get phrase;
  @mnemonicJsonConverter
  MnemonicType get mnemonicType;

  /// Create a copy of EncryptedKeyExportSeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EncryptedKeyExportSeedOutputCopyWith<EncryptedKeyExportSeedOutput>
      get copyWith => _$EncryptedKeyExportSeedOutputCopyWithImpl<
              EncryptedKeyExportSeedOutput>(
          this as EncryptedKeyExportSeedOutput, _$identity);

  /// Serializes this EncryptedKeyExportSeedOutput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EncryptedKeyExportSeedOutput &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.mnemonicType, mnemonicType) ||
                other.mnemonicType == mnemonicType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phrase, mnemonicType);

  @override
  String toString() {
    return 'EncryptedKeyExportSeedOutput(phrase: $phrase, mnemonicType: $mnemonicType)';
  }
}

/// @nodoc
abstract mixin class $EncryptedKeyExportSeedOutputCopyWith<$Res> {
  factory $EncryptedKeyExportSeedOutputCopyWith(
          EncryptedKeyExportSeedOutput value,
          $Res Function(EncryptedKeyExportSeedOutput) _then) =
      _$EncryptedKeyExportSeedOutputCopyWithImpl;
  @useResult
  $Res call({String phrase, @mnemonicJsonConverter MnemonicType mnemonicType});

  $MnemonicTypeCopyWith<$Res> get mnemonicType;
}

/// @nodoc
class _$EncryptedKeyExportSeedOutputCopyWithImpl<$Res>
    implements $EncryptedKeyExportSeedOutputCopyWith<$Res> {
  _$EncryptedKeyExportSeedOutputCopyWithImpl(this._self, this._then);

  final EncryptedKeyExportSeedOutput _self;
  final $Res Function(EncryptedKeyExportSeedOutput) _then;

  /// Create a copy of EncryptedKeyExportSeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
    Object? mnemonicType = null,
  }) {
    return _then(_self.copyWith(
      phrase: null == phrase
          ? _self.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonicType: null == mnemonicType
          ? _self.mnemonicType
          : mnemonicType // ignore: cast_nullable_to_non_nullable
              as MnemonicType,
    ));
  }

  /// Create a copy of EncryptedKeyExportSeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MnemonicTypeCopyWith<$Res> get mnemonicType {
    return $MnemonicTypeCopyWith<$Res>(_self.mnemonicType, (value) {
      return _then(_self.copyWith(mnemonicType: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _EncryptedKeyExportSeedOutput implements EncryptedKeyExportSeedOutput {
  _EncryptedKeyExportSeedOutput(
      {required this.phrase,
      @mnemonicJsonConverter required this.mnemonicType});
  factory _EncryptedKeyExportSeedOutput.fromJson(Map<String, dynamic> json) =>
      _$EncryptedKeyExportSeedOutputFromJson(json);

  @override
  final String phrase;
  @override
  @mnemonicJsonConverter
  final MnemonicType mnemonicType;

  /// Create a copy of EncryptedKeyExportSeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EncryptedKeyExportSeedOutputCopyWith<_EncryptedKeyExportSeedOutput>
      get copyWith => __$EncryptedKeyExportSeedOutputCopyWithImpl<
          _EncryptedKeyExportSeedOutput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EncryptedKeyExportSeedOutputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EncryptedKeyExportSeedOutput &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.mnemonicType, mnemonicType) ||
                other.mnemonicType == mnemonicType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phrase, mnemonicType);

  @override
  String toString() {
    return 'EncryptedKeyExportSeedOutput(phrase: $phrase, mnemonicType: $mnemonicType)';
  }
}

/// @nodoc
abstract mixin class _$EncryptedKeyExportSeedOutputCopyWith<$Res>
    implements $EncryptedKeyExportSeedOutputCopyWith<$Res> {
  factory _$EncryptedKeyExportSeedOutputCopyWith(
          _EncryptedKeyExportSeedOutput value,
          $Res Function(_EncryptedKeyExportSeedOutput) _then) =
      __$EncryptedKeyExportSeedOutputCopyWithImpl;
  @override
  @useResult
  $Res call({String phrase, @mnemonicJsonConverter MnemonicType mnemonicType});

  @override
  $MnemonicTypeCopyWith<$Res> get mnemonicType;
}

/// @nodoc
class __$EncryptedKeyExportSeedOutputCopyWithImpl<$Res>
    implements _$EncryptedKeyExportSeedOutputCopyWith<$Res> {
  __$EncryptedKeyExportSeedOutputCopyWithImpl(this._self, this._then);

  final _EncryptedKeyExportSeedOutput _self;
  final $Res Function(_EncryptedKeyExportSeedOutput) _then;

  /// Create a copy of EncryptedKeyExportSeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phrase = null,
    Object? mnemonicType = null,
  }) {
    return _then(_EncryptedKeyExportSeedOutput(
      phrase: null == phrase
          ? _self.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonicType: null == mnemonicType
          ? _self.mnemonicType
          : mnemonicType // ignore: cast_nullable_to_non_nullable
              as MnemonicType,
    ));
  }

  /// Create a copy of EncryptedKeyExportSeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MnemonicTypeCopyWith<$Res> get mnemonicType {
    return $MnemonicTypeCopyWith<$Res>(_self.mnemonicType, (value) {
      return _then(_self.copyWith(mnemonicType: value));
    });
  }
}

// dart format on
