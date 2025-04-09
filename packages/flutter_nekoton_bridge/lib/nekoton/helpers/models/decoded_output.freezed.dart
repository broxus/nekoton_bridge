// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoded_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DecodedOutput {
  String get method;
  TokensObject get output;

  /// Create a copy of DecodedOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DecodedOutputCopyWith<DecodedOutput> get copyWith =>
      _$DecodedOutputCopyWithImpl<DecodedOutput>(
          this as DecodedOutput, _$identity);

  /// Serializes this DecodedOutput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DecodedOutput &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other.output, output));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, method, const DeepCollectionEquality().hash(output));

  @override
  String toString() {
    return 'DecodedOutput(method: $method, output: $output)';
  }
}

/// @nodoc
abstract mixin class $DecodedOutputCopyWith<$Res> {
  factory $DecodedOutputCopyWith(
          DecodedOutput value, $Res Function(DecodedOutput) _then) =
      _$DecodedOutputCopyWithImpl;
  @useResult
  $Res call({String method, TokensObject output});
}

/// @nodoc
class _$DecodedOutputCopyWithImpl<$Res>
    implements $DecodedOutputCopyWith<$Res> {
  _$DecodedOutputCopyWithImpl(this._self, this._then);

  final DecodedOutput _self;
  final $Res Function(DecodedOutput) _then;

  /// Create a copy of DecodedOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? output = null,
  }) {
    return _then(_self.copyWith(
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      output: null == output
          ? _self.output
          : output // ignore: cast_nullable_to_non_nullable
              as TokensObject,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DecodedOutput implements DecodedOutput {
  const _DecodedOutput(
      {required this.method, required final TokensObject output})
      : _output = output;
  factory _DecodedOutput.fromJson(Map<String, dynamic> json) =>
      _$DecodedOutputFromJson(json);

  @override
  final String method;
  final TokensObject _output;
  @override
  TokensObject get output {
    if (_output is EqualUnmodifiableMapView) return _output;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_output);
  }

  /// Create a copy of DecodedOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DecodedOutputCopyWith<_DecodedOutput> get copyWith =>
      __$DecodedOutputCopyWithImpl<_DecodedOutput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DecodedOutputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DecodedOutput &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._output, _output));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, method, const DeepCollectionEquality().hash(_output));

  @override
  String toString() {
    return 'DecodedOutput(method: $method, output: $output)';
  }
}

/// @nodoc
abstract mixin class _$DecodedOutputCopyWith<$Res>
    implements $DecodedOutputCopyWith<$Res> {
  factory _$DecodedOutputCopyWith(
          _DecodedOutput value, $Res Function(_DecodedOutput) _then) =
      __$DecodedOutputCopyWithImpl;
  @override
  @useResult
  $Res call({String method, TokensObject output});
}

/// @nodoc
class __$DecodedOutputCopyWithImpl<$Res>
    implements _$DecodedOutputCopyWith<$Res> {
  __$DecodedOutputCopyWithImpl(this._self, this._then);

  final _DecodedOutput _self;
  final $Res Function(_DecodedOutput) _then;

  /// Create a copy of DecodedOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? method = null,
    Object? output = null,
  }) {
    return _then(_DecodedOutput(
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      output: null == output
          ? _self._output
          : output // ignore: cast_nullable_to_non_nullable
              as TokensObject,
    ));
  }
}

// dart format on
