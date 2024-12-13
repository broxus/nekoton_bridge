// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_export_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EncryptedKeyExportSeedOutput _$EncryptedKeyExportSeedOutputFromJson(
    Map<String, dynamic> json) {
  return _EncryptedKeyExportSeedOutput.fromJson(json);
}

/// @nodoc
mixin _$EncryptedKeyExportSeedOutput {
  String get phrase => throw _privateConstructorUsedError;
  @mnemonicJsonConverter
  MnemonicType get mnemonicType => throw _privateConstructorUsedError;

  /// Serializes this EncryptedKeyExportSeedOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncryptedKeyExportSeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncryptedKeyExportSeedOutputCopyWith<EncryptedKeyExportSeedOutput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedKeyExportSeedOutputCopyWith<$Res> {
  factory $EncryptedKeyExportSeedOutputCopyWith(
          EncryptedKeyExportSeedOutput value,
          $Res Function(EncryptedKeyExportSeedOutput) then) =
      _$EncryptedKeyExportSeedOutputCopyWithImpl<$Res,
          EncryptedKeyExportSeedOutput>;
  @useResult
  $Res call({String phrase, @mnemonicJsonConverter MnemonicType mnemonicType});

  $MnemonicTypeCopyWith<$Res> get mnemonicType;
}

/// @nodoc
class _$EncryptedKeyExportSeedOutputCopyWithImpl<$Res,
        $Val extends EncryptedKeyExportSeedOutput>
    implements $EncryptedKeyExportSeedOutputCopyWith<$Res> {
  _$EncryptedKeyExportSeedOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncryptedKeyExportSeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
    Object? mnemonicType = null,
  }) {
    return _then(_value.copyWith(
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonicType: null == mnemonicType
          ? _value.mnemonicType
          : mnemonicType // ignore: cast_nullable_to_non_nullable
              as MnemonicType,
    ) as $Val);
  }

  /// Create a copy of EncryptedKeyExportSeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MnemonicTypeCopyWith<$Res> get mnemonicType {
    return $MnemonicTypeCopyWith<$Res>(_value.mnemonicType, (value) {
      return _then(_value.copyWith(mnemonicType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EncryptedKeyExportSeedOutputImplCopyWith<$Res>
    implements $EncryptedKeyExportSeedOutputCopyWith<$Res> {
  factory _$$EncryptedKeyExportSeedOutputImplCopyWith(
          _$EncryptedKeyExportSeedOutputImpl value,
          $Res Function(_$EncryptedKeyExportSeedOutputImpl) then) =
      __$$EncryptedKeyExportSeedOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phrase, @mnemonicJsonConverter MnemonicType mnemonicType});

  @override
  $MnemonicTypeCopyWith<$Res> get mnemonicType;
}

/// @nodoc
class __$$EncryptedKeyExportSeedOutputImplCopyWithImpl<$Res>
    extends _$EncryptedKeyExportSeedOutputCopyWithImpl<$Res,
        _$EncryptedKeyExportSeedOutputImpl>
    implements _$$EncryptedKeyExportSeedOutputImplCopyWith<$Res> {
  __$$EncryptedKeyExportSeedOutputImplCopyWithImpl(
      _$EncryptedKeyExportSeedOutputImpl _value,
      $Res Function(_$EncryptedKeyExportSeedOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptedKeyExportSeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
    Object? mnemonicType = null,
  }) {
    return _then(_$EncryptedKeyExportSeedOutputImpl(
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonicType: null == mnemonicType
          ? _value.mnemonicType
          : mnemonicType // ignore: cast_nullable_to_non_nullable
              as MnemonicType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncryptedKeyExportSeedOutputImpl
    implements _EncryptedKeyExportSeedOutput {
  _$EncryptedKeyExportSeedOutputImpl(
      {required this.phrase,
      @mnemonicJsonConverter required this.mnemonicType});

  factory _$EncryptedKeyExportSeedOutputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EncryptedKeyExportSeedOutputImplFromJson(json);

  @override
  final String phrase;
  @override
  @mnemonicJsonConverter
  final MnemonicType mnemonicType;

  @override
  String toString() {
    return 'EncryptedKeyExportSeedOutput(phrase: $phrase, mnemonicType: $mnemonicType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptedKeyExportSeedOutputImpl &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.mnemonicType, mnemonicType) ||
                other.mnemonicType == mnemonicType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phrase, mnemonicType);

  /// Create a copy of EncryptedKeyExportSeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptedKeyExportSeedOutputImplCopyWith<
          _$EncryptedKeyExportSeedOutputImpl>
      get copyWith => __$$EncryptedKeyExportSeedOutputImplCopyWithImpl<
          _$EncryptedKeyExportSeedOutputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptedKeyExportSeedOutputImplToJson(
      this,
    );
  }
}

abstract class _EncryptedKeyExportSeedOutput
    implements EncryptedKeyExportSeedOutput {
  factory _EncryptedKeyExportSeedOutput(
          {required final String phrase,
          @mnemonicJsonConverter required final MnemonicType mnemonicType}) =
      _$EncryptedKeyExportSeedOutputImpl;

  factory _EncryptedKeyExportSeedOutput.fromJson(Map<String, dynamic> json) =
      _$EncryptedKeyExportSeedOutputImpl.fromJson;

  @override
  String get phrase;
  @override
  @mnemonicJsonConverter
  MnemonicType get mnemonicType;

  /// Create a copy of EncryptedKeyExportSeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptedKeyExportSeedOutputImplCopyWith<
          _$EncryptedKeyExportSeedOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
