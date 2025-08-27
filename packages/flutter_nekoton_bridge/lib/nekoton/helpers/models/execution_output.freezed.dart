// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'execution_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExecutionOutput {
  @JsonKey(includeIfNull: false)
  TokensObject? get output;
  int get code;

  /// Create a copy of ExecutionOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExecutionOutputCopyWith<ExecutionOutput> get copyWith =>
      _$ExecutionOutputCopyWithImpl<ExecutionOutput>(
          this as ExecutionOutput, _$identity);

  /// Serializes this ExecutionOutput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExecutionOutput &&
            const DeepCollectionEquality().equals(other.output, output) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(output), code);

  @override
  String toString() {
    return 'ExecutionOutput(output: $output, code: $code)';
  }
}

/// @nodoc
abstract mixin class $ExecutionOutputCopyWith<$Res> {
  factory $ExecutionOutputCopyWith(
          ExecutionOutput value, $Res Function(ExecutionOutput) _then) =
      _$ExecutionOutputCopyWithImpl;
  @useResult
  $Res call({@JsonKey(includeIfNull: false) TokensObject? output, int code});
}

/// @nodoc
class _$ExecutionOutputCopyWithImpl<$Res>
    implements $ExecutionOutputCopyWith<$Res> {
  _$ExecutionOutputCopyWithImpl(this._self, this._then);

  final ExecutionOutput _self;
  final $Res Function(ExecutionOutput) _then;

  /// Create a copy of ExecutionOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? output = freezed,
    Object? code = null,
  }) {
    return _then(_self.copyWith(
      output: freezed == output
          ? _self.output
          : output // ignore: cast_nullable_to_non_nullable
              as TokensObject?,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ExecutionOutput].
extension ExecutionOutputPatterns on ExecutionOutput {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ExecutionOutput value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExecutionOutput() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ExecutionOutput value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExecutionOutput():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ExecutionOutput value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExecutionOutput() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(includeIfNull: false) TokensObject? output, int code)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExecutionOutput() when $default != null:
        return $default(_that.output, _that.code);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(includeIfNull: false) TokensObject? output, int code)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExecutionOutput():
        return $default(_that.output, _that.code);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(includeIfNull: false) TokensObject? output, int code)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExecutionOutput() when $default != null:
        return $default(_that.output, _that.code);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExecutionOutput implements ExecutionOutput {
  const _ExecutionOutput(
      {@JsonKey(includeIfNull: false) final TokensObject? output,
      required this.code})
      : _output = output;
  factory _ExecutionOutput.fromJson(Map<String, dynamic> json) =>
      _$ExecutionOutputFromJson(json);

  final TokensObject? _output;
  @override
  @JsonKey(includeIfNull: false)
  TokensObject? get output {
    final value = _output;
    if (value == null) return null;
    if (_output is EqualUnmodifiableMapView) return _output;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int code;

  /// Create a copy of ExecutionOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExecutionOutputCopyWith<_ExecutionOutput> get copyWith =>
      __$ExecutionOutputCopyWithImpl<_ExecutionOutput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExecutionOutputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExecutionOutput &&
            const DeepCollectionEquality().equals(other._output, _output) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_output), code);

  @override
  String toString() {
    return 'ExecutionOutput(output: $output, code: $code)';
  }
}

/// @nodoc
abstract mixin class _$ExecutionOutputCopyWith<$Res>
    implements $ExecutionOutputCopyWith<$Res> {
  factory _$ExecutionOutputCopyWith(
          _ExecutionOutput value, $Res Function(_ExecutionOutput) _then) =
      __$ExecutionOutputCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(includeIfNull: false) TokensObject? output, int code});
}

/// @nodoc
class __$ExecutionOutputCopyWithImpl<$Res>
    implements _$ExecutionOutputCopyWith<$Res> {
  __$ExecutionOutputCopyWithImpl(this._self, this._then);

  final _ExecutionOutput _self;
  final $Res Function(_ExecutionOutput) _then;

  /// Create a copy of ExecutionOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? output = freezed,
    Object? code = null,
  }) {
    return _then(_ExecutionOutput(
      output: freezed == output
          ? _self._output
          : output // ignore: cast_nullable_to_non_nullable
              as TokensObject?,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
