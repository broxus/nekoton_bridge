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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExecutionOutput _$ExecutionOutputFromJson(Map<String, dynamic> json) {
  return _ExecutionOutput.fromJson(json);
}

/// @nodoc
mixin _$ExecutionOutput {
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get output => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_ExecutionOutputCopyWith<$Res>
    implements $ExecutionOutputCopyWith<$Res> {
  factory _$$_ExecutionOutputCopyWith(
          _$_ExecutionOutput value, $Res Function(_$_ExecutionOutput) then) =
      __$$_ExecutionOutputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) Map<String, dynamic>? output, int code});
}

/// @nodoc
class __$$_ExecutionOutputCopyWithImpl<$Res>
    extends _$ExecutionOutputCopyWithImpl<$Res, _$_ExecutionOutput>
    implements _$$_ExecutionOutputCopyWith<$Res> {
  __$$_ExecutionOutputCopyWithImpl(
      _$_ExecutionOutput _value, $Res Function(_$_ExecutionOutput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? output = freezed,
    Object? code = null,
  }) {
    return _then(_$_ExecutionOutput(
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
class _$_ExecutionOutput implements _ExecutionOutput {
  const _$_ExecutionOutput(
      {@JsonKey(includeIfNull: false) final Map<String, dynamic>? output,
      required this.code})
      : _output = output;

  factory _$_ExecutionOutput.fromJson(Map<String, dynamic> json) =>
      _$$_ExecutionOutputFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExecutionOutput &&
            const DeepCollectionEquality().equals(other._output, _output) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_output), code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExecutionOutputCopyWith<_$_ExecutionOutput> get copyWith =>
      __$$_ExecutionOutputCopyWithImpl<_$_ExecutionOutput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExecutionOutputToJson(
      this,
    );
  }
}

abstract class _ExecutionOutput implements ExecutionOutput {
  const factory _ExecutionOutput(
      {@JsonKey(includeIfNull: false) final Map<String, dynamic>? output,
      required final int code}) = _$_ExecutionOutput;

  factory _ExecutionOutput.fromJson(Map<String, dynamic> json) =
      _$_ExecutionOutput.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get output;
  @override
  int get code;
  @override
  @JsonKey(ignore: true)
  _$$_ExecutionOutputCopyWith<_$_ExecutionOutput> get copyWith =>
      throw _privateConstructorUsedError;
}
