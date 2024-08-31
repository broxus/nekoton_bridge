// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_export_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DerivedKeyExportOutput _$DerivedKeyExportOutputFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyExportOutput.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyExportOutput {
  String get phrase => throw _privateConstructorUsedError;

  /// Serializes this DerivedKeyExportOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DerivedKeyExportOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DerivedKeyExportOutputCopyWith<DerivedKeyExportOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyExportOutputCopyWith<$Res> {
  factory $DerivedKeyExportOutputCopyWith(DerivedKeyExportOutput value,
          $Res Function(DerivedKeyExportOutput) then) =
      _$DerivedKeyExportOutputCopyWithImpl<$Res, DerivedKeyExportOutput>;
  @useResult
  $Res call({String phrase});
}

/// @nodoc
class _$DerivedKeyExportOutputCopyWithImpl<$Res,
        $Val extends DerivedKeyExportOutput>
    implements $DerivedKeyExportOutputCopyWith<$Res> {
  _$DerivedKeyExportOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DerivedKeyExportOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
  }) {
    return _then(_value.copyWith(
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DerivedKeyExportOutputImplCopyWith<$Res>
    implements $DerivedKeyExportOutputCopyWith<$Res> {
  factory _$$DerivedKeyExportOutputImplCopyWith(
          _$DerivedKeyExportOutputImpl value,
          $Res Function(_$DerivedKeyExportOutputImpl) then) =
      __$$DerivedKeyExportOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phrase});
}

/// @nodoc
class __$$DerivedKeyExportOutputImplCopyWithImpl<$Res>
    extends _$DerivedKeyExportOutputCopyWithImpl<$Res,
        _$DerivedKeyExportOutputImpl>
    implements _$$DerivedKeyExportOutputImplCopyWith<$Res> {
  __$$DerivedKeyExportOutputImplCopyWithImpl(
      _$DerivedKeyExportOutputImpl _value,
      $Res Function(_$DerivedKeyExportOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of DerivedKeyExportOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
  }) {
    return _then(_$DerivedKeyExportOutputImpl(
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DerivedKeyExportOutputImpl implements _DerivedKeyExportOutput {
  const _$DerivedKeyExportOutputImpl({required this.phrase});

  factory _$DerivedKeyExportOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$DerivedKeyExportOutputImplFromJson(json);

  @override
  final String phrase;

  @override
  String toString() {
    return 'DerivedKeyExportOutput(phrase: $phrase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DerivedKeyExportOutputImpl &&
            (identical(other.phrase, phrase) || other.phrase == phrase));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phrase);

  /// Create a copy of DerivedKeyExportOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DerivedKeyExportOutputImplCopyWith<_$DerivedKeyExportOutputImpl>
      get copyWith => __$$DerivedKeyExportOutputImplCopyWithImpl<
          _$DerivedKeyExportOutputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DerivedKeyExportOutputImplToJson(
      this,
    );
  }
}

abstract class _DerivedKeyExportOutput implements DerivedKeyExportOutput {
  const factory _DerivedKeyExportOutput({required final String phrase}) =
      _$DerivedKeyExportOutputImpl;

  factory _DerivedKeyExportOutput.fromJson(Map<String, dynamic> json) =
      _$DerivedKeyExportOutputImpl.fromJson;

  @override
  String get phrase;

  /// Create a copy of DerivedKeyExportOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DerivedKeyExportOutputImplCopyWith<_$DerivedKeyExportOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
