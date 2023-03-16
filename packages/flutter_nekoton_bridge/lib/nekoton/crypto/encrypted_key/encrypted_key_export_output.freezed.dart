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

EncryptedKeyExportOutput _$EncryptedKeyExportOutputFromJson(
    Map<String, dynamic> json) {
  return _EncryptedKeyExportOutput.fromJson(json);
}

/// @nodoc
mixin _$EncryptedKeyExportOutput {
  String get phrase => throw _privateConstructorUsedError;
  @MnemonicTypeJsonConverter()
  MnemonicType get mnemonicType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncryptedKeyExportOutputCopyWith<EncryptedKeyExportOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedKeyExportOutputCopyWith<$Res> {
  factory $EncryptedKeyExportOutputCopyWith(EncryptedKeyExportOutput value,
          $Res Function(EncryptedKeyExportOutput) then) =
      _$EncryptedKeyExportOutputCopyWithImpl<$Res, EncryptedKeyExportOutput>;
  @useResult
  $Res call(
      {String phrase, @MnemonicTypeJsonConverter() MnemonicType mnemonicType});

  $MnemonicTypeCopyWith<$Res> get mnemonicType;
}

/// @nodoc
class _$EncryptedKeyExportOutputCopyWithImpl<$Res,
        $Val extends EncryptedKeyExportOutput>
    implements $EncryptedKeyExportOutputCopyWith<$Res> {
  _$EncryptedKeyExportOutputCopyWithImpl(this._value, this._then);

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
abstract class _$$_EncryptedKeyExportOutputCopyWith<$Res>
    implements $EncryptedKeyExportOutputCopyWith<$Res> {
  factory _$$_EncryptedKeyExportOutputCopyWith(
          _$_EncryptedKeyExportOutput value,
          $Res Function(_$_EncryptedKeyExportOutput) then) =
      __$$_EncryptedKeyExportOutputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phrase, @MnemonicTypeJsonConverter() MnemonicType mnemonicType});

  @override
  $MnemonicTypeCopyWith<$Res> get mnemonicType;
}

/// @nodoc
class __$$_EncryptedKeyExportOutputCopyWithImpl<$Res>
    extends _$EncryptedKeyExportOutputCopyWithImpl<$Res,
        _$_EncryptedKeyExportOutput>
    implements _$$_EncryptedKeyExportOutputCopyWith<$Res> {
  __$$_EncryptedKeyExportOutputCopyWithImpl(_$_EncryptedKeyExportOutput _value,
      $Res Function(_$_EncryptedKeyExportOutput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
    Object? mnemonicType = null,
  }) {
    return _then(_$_EncryptedKeyExportOutput(
      null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      null == mnemonicType
          ? _value.mnemonicType
          : mnemonicType // ignore: cast_nullable_to_non_nullable
              as MnemonicType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EncryptedKeyExportOutput implements _EncryptedKeyExportOutput {
  const _$_EncryptedKeyExportOutput(
      this.phrase, @MnemonicTypeJsonConverter() this.mnemonicType);

  factory _$_EncryptedKeyExportOutput.fromJson(Map<String, dynamic> json) =>
      _$$_EncryptedKeyExportOutputFromJson(json);

  @override
  final String phrase;
  @override
  @MnemonicTypeJsonConverter()
  final MnemonicType mnemonicType;

  @override
  String toString() {
    return 'EncryptedKeyExportOutput(phrase: $phrase, mnemonicType: $mnemonicType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EncryptedKeyExportOutput &&
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
  _$$_EncryptedKeyExportOutputCopyWith<_$_EncryptedKeyExportOutput>
      get copyWith => __$$_EncryptedKeyExportOutputCopyWithImpl<
          _$_EncryptedKeyExportOutput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EncryptedKeyExportOutputToJson(
      this,
    );
  }
}

abstract class _EncryptedKeyExportOutput implements EncryptedKeyExportOutput {
  const factory _EncryptedKeyExportOutput(final String phrase,
          @MnemonicTypeJsonConverter() final MnemonicType mnemonicType) =
      _$_EncryptedKeyExportOutput;

  factory _EncryptedKeyExportOutput.fromJson(Map<String, dynamic> json) =
      _$_EncryptedKeyExportOutput.fromJson;

  @override
  String get phrase;
  @override
  @MnemonicTypeJsonConverter()
  MnemonicType get mnemonicType;
  @override
  @JsonKey(ignore: true)
  _$$_EncryptedKeyExportOutputCopyWith<_$_EncryptedKeyExportOutput>
      get copyWith => throw _privateConstructorUsedError;
}
