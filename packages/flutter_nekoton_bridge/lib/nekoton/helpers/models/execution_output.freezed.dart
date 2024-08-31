// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'execution_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExecutionOutput _$ExecutionOutputFromJson(Map<String, dynamic> json) {
  return _ExecutionOutput.fromJson(json);
}

/// @nodoc
mixin _$ExecutionOutput {
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get output => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  /// Serializes this ExecutionOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExecutionOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExecutionOutputCopyWith<ExecutionOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExecutionOutputCopyWith<$Res> {
  factory $ExecutionOutputCopyWith(
          ExecutionOutput value, $Res Function(ExecutionOutput) then) =
      _$ExecutionOutputCopyWithImpl<$Res, ExecutionOutput>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) Map<String, dynamic>? output, int code});
}

/// @nodoc
class _$ExecutionOutputCopyWithImpl<$Res, $Val extends ExecutionOutput>
    implements $ExecutionOutputCopyWith<$Res> {
  _$ExecutionOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExecutionOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? output = freezed,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      output: freezed == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExecutionOutputImplCopyWith<$Res>
    implements $ExecutionOutputCopyWith<$Res> {
  factory _$$ExecutionOutputImplCopyWith(_$ExecutionOutputImpl value,
          $Res Function(_$ExecutionOutputImpl) then) =
      __$$ExecutionOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) Map<String, dynamic>? output, int code});
}

/// @nodoc
class __$$ExecutionOutputImplCopyWithImpl<$Res>
    extends _$ExecutionOutputCopyWithImpl<$Res, _$ExecutionOutputImpl>
    implements _$$ExecutionOutputImplCopyWith<$Res> {
  __$$ExecutionOutputImplCopyWithImpl(
      _$ExecutionOutputImpl _value, $Res Function(_$ExecutionOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExecutionOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? output = freezed,
    Object? code = null,
  }) {
    return _then(_$ExecutionOutputImpl(
      output: freezed == output
          ? _value._output
          : output // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExecutionOutputImpl implements _ExecutionOutput {
  const _$ExecutionOutputImpl(
      {@JsonKey(includeIfNull: false) final Map<String, dynamic>? output,
      required this.code})
      : _output = output;

  factory _$ExecutionOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExecutionOutputImplFromJson(json);

  final Map<String, dynamic>? _output;
  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get output {
    final value = _output;
    if (value == null) return null;
    if (_output is EqualUnmodifiableMapView) return _output;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int code;

  @override
  String toString() {
    return 'ExecutionOutput(output: $output, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExecutionOutputImpl &&
            const DeepCollectionEquality().equals(other._output, _output) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_output), code);

  /// Create a copy of ExecutionOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExecutionOutputImplCopyWith<_$ExecutionOutputImpl> get copyWith =>
      __$$ExecutionOutputImplCopyWithImpl<_$ExecutionOutputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExecutionOutputImplToJson(
      this,
    );
  }
}

abstract class _ExecutionOutput implements ExecutionOutput {
  const factory _ExecutionOutput(
      {@JsonKey(includeIfNull: false) final Map<String, dynamic>? output,
      required final int code}) = _$ExecutionOutputImpl;

  factory _ExecutionOutput.fromJson(Map<String, dynamic> json) =
      _$ExecutionOutputImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get output;
  @override
  int get code;

  /// Create a copy of ExecutionOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExecutionOutputImplCopyWith<_$ExecutionOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
