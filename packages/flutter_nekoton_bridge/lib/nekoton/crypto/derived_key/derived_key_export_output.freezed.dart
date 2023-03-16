// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'derived_key_export_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DerivedKeyExportOutput _$DerivedKeyExportOutputFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyExportOutput.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyExportOutput {
  String get phrase => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DerivedKeyExportOutputCopyWith<DerivedKeyExportOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyExportOutputCopyWith<$Res> {
  factory $DerivedKeyExportOutputCopyWith(DerivedKeyExportOutput value,
          $Res Function(DerivedKeyExportOutput) then) =
      _$DerivedKeyExportOutputCopyWithImpl<$Res>;
  $Res call({String phrase});
}

/// @nodoc
class _$DerivedKeyExportOutputCopyWithImpl<$Res>
    implements $DerivedKeyExportOutputCopyWith<$Res> {
  _$DerivedKeyExportOutputCopyWithImpl(this._value, this._then);

  final DerivedKeyExportOutput _value;
  // ignore: unused_field
  final $Res Function(DerivedKeyExportOutput) _then;

  @override
  $Res call({
    Object? phrase = freezed,
  }) {
    return _then(_value.copyWith(
      phrase: phrase == freezed
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DerivedKeyExportOutputCopyWith<$Res>
    implements $DerivedKeyExportOutputCopyWith<$Res> {
  factory _$$_DerivedKeyExportOutputCopyWith(_$_DerivedKeyExportOutput value,
          $Res Function(_$_DerivedKeyExportOutput) then) =
      __$$_DerivedKeyExportOutputCopyWithImpl<$Res>;
  @override
  $Res call({String phrase});
}

/// @nodoc
class __$$_DerivedKeyExportOutputCopyWithImpl<$Res>
    extends _$DerivedKeyExportOutputCopyWithImpl<$Res>
    implements _$$_DerivedKeyExportOutputCopyWith<$Res> {
  __$$_DerivedKeyExportOutputCopyWithImpl(_$_DerivedKeyExportOutput _value,
      $Res Function(_$_DerivedKeyExportOutput) _then)
      : super(_value, (v) => _then(v as _$_DerivedKeyExportOutput));

  @override
  _$_DerivedKeyExportOutput get _value =>
      super._value as _$_DerivedKeyExportOutput;

  @override
  $Res call({
    Object? phrase = freezed,
  }) {
    return _then(_$_DerivedKeyExportOutput(
      phrase: phrase == freezed
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DerivedKeyExportOutput implements _DerivedKeyExportOutput {
  const _$_DerivedKeyExportOutput({required this.phrase});

  factory _$_DerivedKeyExportOutput.fromJson(Map<String, dynamic> json) =>
      _$$_DerivedKeyExportOutputFromJson(json);

  @override
  final String phrase;

  @override
  String toString() {
    return 'DerivedKeyExportOutput(phrase: $phrase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DerivedKeyExportOutput &&
            const DeepCollectionEquality().equals(other.phrase, phrase));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phrase));

  @JsonKey(ignore: true)
  @override
  _$$_DerivedKeyExportOutputCopyWith<_$_DerivedKeyExportOutput> get copyWith =>
      __$$_DerivedKeyExportOutputCopyWithImpl<_$_DerivedKeyExportOutput>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DerivedKeyExportOutputToJson(
      this,
    );
  }
}

abstract class _DerivedKeyExportOutput implements DerivedKeyExportOutput {
  const factory _DerivedKeyExportOutput({required final String phrase}) =
      _$_DerivedKeyExportOutput;

  factory _DerivedKeyExportOutput.fromJson(Map<String, dynamic> json) =
      _$_DerivedKeyExportOutput.fromJson;

  @override
  String get phrase;
  @override
  @JsonKey(ignore: true)
  _$$_DerivedKeyExportOutputCopyWith<_$_DerivedKeyExportOutput> get copyWith =>
      throw _privateConstructorUsedError;
}
