// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoded_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DecodedOutput _$DecodedOutputFromJson(Map<String, dynamic> json) {
  return _DecodedOutput.fromJson(json);
}

/// @nodoc
mixin _$DecodedOutput {
  String get method => throw _privateConstructorUsedError;
  Map<String, dynamic> get output => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DecodedOutputCopyWith<DecodedOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecodedOutputCopyWith<$Res> {
  factory $DecodedOutputCopyWith(
          DecodedOutput value, $Res Function(DecodedOutput) then) =
      _$DecodedOutputCopyWithImpl<$Res, DecodedOutput>;
  @useResult
  $Res call({String method, Map<String, dynamic> output});
}

/// @nodoc
class _$DecodedOutputCopyWithImpl<$Res, $Val extends DecodedOutput>
    implements $DecodedOutputCopyWith<$Res> {
  _$DecodedOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? output = null,
  }) {
    return _then(_value.copyWith(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DecodedOutputCopyWith<$Res>
    implements $DecodedOutputCopyWith<$Res> {
  factory _$$_DecodedOutputCopyWith(
          _$_DecodedOutput value, $Res Function(_$_DecodedOutput) then) =
      __$$_DecodedOutputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String method, Map<String, dynamic> output});
}

/// @nodoc
class __$$_DecodedOutputCopyWithImpl<$Res>
    extends _$DecodedOutputCopyWithImpl<$Res, _$_DecodedOutput>
    implements _$$_DecodedOutputCopyWith<$Res> {
  __$$_DecodedOutputCopyWithImpl(
      _$_DecodedOutput _value, $Res Function(_$_DecodedOutput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? output = null,
  }) {
    return _then(_$_DecodedOutput(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      output: null == output
          ? _value._output
          : output // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DecodedOutput implements _DecodedOutput {
  const _$_DecodedOutput(
      {required this.method, required final Map<String, dynamic> output})
      : _output = output;

  factory _$_DecodedOutput.fromJson(Map<String, dynamic> json) =>
      _$$_DecodedOutputFromJson(json);

  @override
  final String method;
  final Map<String, dynamic> _output;
  @override
  Map<String, dynamic> get output {
    if (_output is EqualUnmodifiableMapView) return _output;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_output);
  }

  @override
  String toString() {
    return 'DecodedOutput(method: $method, output: $output)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecodedOutput &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._output, _output));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, method, const DeepCollectionEquality().hash(_output));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DecodedOutputCopyWith<_$_DecodedOutput> get copyWith =>
      __$$_DecodedOutputCopyWithImpl<_$_DecodedOutput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DecodedOutputToJson(
      this,
    );
  }
}

abstract class _DecodedOutput implements DecodedOutput {
  const factory _DecodedOutput(
      {required final String method,
      required final Map<String, dynamic> output}) = _$_DecodedOutput;

  factory _DecodedOutput.fromJson(Map<String, dynamic> json) =
      _$_DecodedOutput.fromJson;

  @override
  String get method;
  @override
  Map<String, dynamic> get output;
  @override
  @JsonKey(ignore: true)
  _$$_DecodedOutputCopyWith<_$_DecodedOutput> get copyWith =>
      throw _privateConstructorUsedError;
}
