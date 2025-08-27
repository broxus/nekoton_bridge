// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_export_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DerivedKeyExportOutput {
  String get phrase;

  /// Create a copy of DerivedKeyExportOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DerivedKeyExportOutputCopyWith<DerivedKeyExportOutput> get copyWith =>
      _$DerivedKeyExportOutputCopyWithImpl<DerivedKeyExportOutput>(
          this as DerivedKeyExportOutput, _$identity);

  /// Serializes this DerivedKeyExportOutput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DerivedKeyExportOutput &&
            (identical(other.phrase, phrase) || other.phrase == phrase));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phrase);

  @override
  String toString() {
    return 'DerivedKeyExportOutput(phrase: $phrase)';
  }
}

/// @nodoc
abstract mixin class $DerivedKeyExportOutputCopyWith<$Res> {
  factory $DerivedKeyExportOutputCopyWith(DerivedKeyExportOutput value,
          $Res Function(DerivedKeyExportOutput) _then) =
      _$DerivedKeyExportOutputCopyWithImpl;
  @useResult
  $Res call({String phrase});
}

/// @nodoc
class _$DerivedKeyExportOutputCopyWithImpl<$Res>
    implements $DerivedKeyExportOutputCopyWith<$Res> {
  _$DerivedKeyExportOutputCopyWithImpl(this._self, this._then);

  final DerivedKeyExportOutput _self;
  final $Res Function(DerivedKeyExportOutput) _then;

  /// Create a copy of DerivedKeyExportOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
  }) {
    return _then(_self.copyWith(
      phrase: null == phrase
          ? _self.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [DerivedKeyExportOutput].
extension DerivedKeyExportOutputPatterns on DerivedKeyExportOutput {
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
    TResult Function(_DerivedKeyExportOutput value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyExportOutput() when $default != null:
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
    TResult Function(_DerivedKeyExportOutput value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyExportOutput():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(_DerivedKeyExportOutput value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyExportOutput() when $default != null:
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
    TResult Function(String phrase)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyExportOutput() when $default != null:
        return $default(_that.phrase);
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
    TResult Function(String phrase) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyExportOutput():
        return $default(_that.phrase);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(String phrase)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DerivedKeyExportOutput() when $default != null:
        return $default(_that.phrase);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DerivedKeyExportOutput implements DerivedKeyExportOutput {
  const _DerivedKeyExportOutput({required this.phrase});
  factory _DerivedKeyExportOutput.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyExportOutputFromJson(json);

  @override
  final String phrase;

  /// Create a copy of DerivedKeyExportOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyExportOutputCopyWith<_DerivedKeyExportOutput> get copyWith =>
      __$DerivedKeyExportOutputCopyWithImpl<_DerivedKeyExportOutput>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyExportOutputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyExportOutput &&
            (identical(other.phrase, phrase) || other.phrase == phrase));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phrase);

  @override
  String toString() {
    return 'DerivedKeyExportOutput(phrase: $phrase)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyExportOutputCopyWith<$Res>
    implements $DerivedKeyExportOutputCopyWith<$Res> {
  factory _$DerivedKeyExportOutputCopyWith(_DerivedKeyExportOutput value,
          $Res Function(_DerivedKeyExportOutput) _then) =
      __$DerivedKeyExportOutputCopyWithImpl;
  @override
  @useResult
  $Res call({String phrase});
}

/// @nodoc
class __$DerivedKeyExportOutputCopyWithImpl<$Res>
    implements _$DerivedKeyExportOutputCopyWith<$Res> {
  __$DerivedKeyExportOutputCopyWithImpl(this._self, this._then);

  final _DerivedKeyExportOutput _self;
  final $Res Function(_DerivedKeyExportOutput) _then;

  /// Create a copy of DerivedKeyExportOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phrase = null,
  }) {
    return _then(_DerivedKeyExportOutput(
      phrase: null == phrase
          ? _self.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
