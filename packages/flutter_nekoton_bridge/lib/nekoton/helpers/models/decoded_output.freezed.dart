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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DecodedOutput _$DecodedOutputFromJson(Map<String, dynamic> json) {
  return _DecodedOutput.fromJson(json);
}

/// @nodoc
mixin _$DecodedOutput {
  String get method => throw _privateConstructorUsedError;
  Map<String, dynamic> get output => throw _privateConstructorUsedError;

  /// Serializes this DecodedOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DecodedOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of DecodedOutput
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$DecodedOutputImplCopyWith<$Res>
    implements $DecodedOutputCopyWith<$Res> {
  factory _$$DecodedOutputImplCopyWith(
          _$DecodedOutputImpl value, $Res Function(_$DecodedOutputImpl) then) =
      __$$DecodedOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String method, Map<String, dynamic> output});
}

/// @nodoc
class __$$DecodedOutputImplCopyWithImpl<$Res>
    extends _$DecodedOutputCopyWithImpl<$Res, _$DecodedOutputImpl>
    implements _$$DecodedOutputImplCopyWith<$Res> {
  __$$DecodedOutputImplCopyWithImpl(
      _$DecodedOutputImpl _value, $Res Function(_$DecodedOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecodedOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? output = null,
  }) {
    return _then(_$DecodedOutputImpl(
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
class _$DecodedOutputImpl implements _DecodedOutput {
  const _$DecodedOutputImpl(
      {required this.method, required final Map<String, dynamic> output})
      : _output = output;

  factory _$DecodedOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecodedOutputImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecodedOutputImpl &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._output, _output));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, method, const DeepCollectionEquality().hash(_output));

  /// Create a copy of DecodedOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecodedOutputImplCopyWith<_$DecodedOutputImpl> get copyWith =>
      __$$DecodedOutputImplCopyWithImpl<_$DecodedOutputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DecodedOutputImplToJson(
      this,
    );
  }
}

abstract class _DecodedOutput implements DecodedOutput {
  const factory _DecodedOutput(
      {required final String method,
      required final Map<String, dynamic> output}) = _$DecodedOutputImpl;

  factory _DecodedOutput.fromJson(Map<String, dynamic> json) =
      _$DecodedOutputImpl.fromJson;

  @override
  String get method;
  @override
  Map<String, dynamic> get output;

  /// Create a copy of DecodedOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecodedOutputImplCopyWith<_$DecodedOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
