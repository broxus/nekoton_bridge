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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EncryptedKeyExportSeedOutput _$EncryptedKeyExportSeedOutputFromJson(
    Map<String, dynamic> json) {
  return _EncryptedKeyExportSeedOutput.fromJson(json);
}

/// @nodoc
mixin _$EncryptedKeyExportSeedOutput {
  String get phrase => throw _privateConstructorUsedError;
  @mnemonicJsonConverter
  MnemonicType get mnemonicType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @override
  @pragma('vm:prefer-inline')
  $MnemonicTypeCopyWith<$Res> get mnemonicType {
    return $MnemonicTypeCopyWith<$Res>(_value.mnemonicType, (value) {
      return _then(_value.copyWith(mnemonicType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EncryptedKeyExportSeedOutputCopyWith<$Res>
    implements $EncryptedKeyExportSeedOutputCopyWith<$Res> {
  factory _$$_EncryptedKeyExportSeedOutputCopyWith(
          _$_EncryptedKeyExportSeedOutput value,
          $Res Function(_$_EncryptedKeyExportSeedOutput) then) =
      __$$_EncryptedKeyExportSeedOutputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phrase, @mnemonicJsonConverter MnemonicType mnemonicType});

  @override
  $MnemonicTypeCopyWith<$Res> get mnemonicType;
}

/// @nodoc
class __$$_EncryptedKeyExportSeedOutputCopyWithImpl<$Res>
    extends _$EncryptedKeyExportSeedOutputCopyWithImpl<$Res,
        _$_EncryptedKeyExportSeedOutput>
    implements _$$_EncryptedKeyExportSeedOutputCopyWith<$Res> {
  __$$_EncryptedKeyExportSeedOutputCopyWithImpl(
      _$_EncryptedKeyExportSeedOutput _value,
      $Res Function(_$_EncryptedKeyExportSeedOutput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
    Object? mnemonicType = null,
  }) {
    return _then(_$_EncryptedKeyExportSeedOutput(
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
class _$_EncryptedKeyExportSeedOutput implements _EncryptedKeyExportSeedOutput {
  _$_EncryptedKeyExportSeedOutput(
      {required this.phrase,
      @mnemonicJsonConverter required this.mnemonicType});

  factory _$_EncryptedKeyExportSeedOutput.fromJson(Map<String, dynamic> json) =>
      _$$_EncryptedKeyExportSeedOutputFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EncryptedKeyExportSeedOutput &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.mnemonicType, mnemonicType) ||
                other.mnemonicType == mnemonicType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phrase, mnemonicType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EncryptedKeyExportSeedOutputCopyWith<_$_EncryptedKeyExportSeedOutput>
      get copyWith => __$$_EncryptedKeyExportSeedOutputCopyWithImpl<
          _$_EncryptedKeyExportSeedOutput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EncryptedKeyExportSeedOutputToJson(
      this,
    );
  }
}

abstract class _EncryptedKeyExportSeedOutput
    implements EncryptedKeyExportSeedOutput {
  factory _EncryptedKeyExportSeedOutput(
          {required final String phrase,
          @mnemonicJsonConverter required final MnemonicType mnemonicType}) =
      _$_EncryptedKeyExportSeedOutput;

  factory _EncryptedKeyExportSeedOutput.fromJson(Map<String, dynamic> json) =
      _$_EncryptedKeyExportSeedOutput.fromJson;

  @override
  String get phrase;
  @override
  @mnemonicJsonConverter
  MnemonicType get mnemonicType;
  @override
  @JsonKey(ignore: true)
  _$$_EncryptedKeyExportSeedOutputCopyWith<_$_EncryptedKeyExportSeedOutput>
      get copyWith => throw _privateConstructorUsedError;
}
