// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gen_timings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenTimings {
  String get genLt;
  int get genUtime;

  /// Create a copy of GenTimings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GenTimingsCopyWith<GenTimings> get copyWith =>
      _$GenTimingsCopyWithImpl<GenTimings>(this as GenTimings, _$identity);

  /// Serializes this GenTimings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenTimings &&
            (identical(other.genLt, genLt) || other.genLt == genLt) &&
            (identical(other.genUtime, genUtime) ||
                other.genUtime == genUtime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, genLt, genUtime);

  @override
  String toString() {
    return 'GenTimings(genLt: $genLt, genUtime: $genUtime)';
  }
}

/// @nodoc
abstract mixin class $GenTimingsCopyWith<$Res> {
  factory $GenTimingsCopyWith(
          GenTimings value, $Res Function(GenTimings) _then) =
      _$GenTimingsCopyWithImpl;
  @useResult
  $Res call({String genLt, int genUtime});
}

/// @nodoc
class _$GenTimingsCopyWithImpl<$Res> implements $GenTimingsCopyWith<$Res> {
  _$GenTimingsCopyWithImpl(this._self, this._then);

  final GenTimings _self;
  final $Res Function(GenTimings) _then;

  /// Create a copy of GenTimings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genLt = null,
    Object? genUtime = null,
  }) {
    return _then(_self.copyWith(
      genLt: null == genLt
          ? _self.genLt
          : genLt // ignore: cast_nullable_to_non_nullable
              as String,
      genUtime: null == genUtime
          ? _self.genUtime
          : genUtime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GenTimings implements GenTimings {
  const _GenTimings({required this.genLt, required this.genUtime});
  factory _GenTimings.fromJson(Map<String, dynamic> json) =>
      _$GenTimingsFromJson(json);

  @override
  final String genLt;
  @override
  final int genUtime;

  /// Create a copy of GenTimings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GenTimingsCopyWith<_GenTimings> get copyWith =>
      __$GenTimingsCopyWithImpl<_GenTimings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GenTimingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenTimings &&
            (identical(other.genLt, genLt) || other.genLt == genLt) &&
            (identical(other.genUtime, genUtime) ||
                other.genUtime == genUtime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, genLt, genUtime);

  @override
  String toString() {
    return 'GenTimings(genLt: $genLt, genUtime: $genUtime)';
  }
}

/// @nodoc
abstract mixin class _$GenTimingsCopyWith<$Res>
    implements $GenTimingsCopyWith<$Res> {
  factory _$GenTimingsCopyWith(
          _GenTimings value, $Res Function(_GenTimings) _then) =
      __$GenTimingsCopyWithImpl;
  @override
  @useResult
  $Res call({String genLt, int genUtime});
}

/// @nodoc
class __$GenTimingsCopyWithImpl<$Res> implements _$GenTimingsCopyWith<$Res> {
  __$GenTimingsCopyWithImpl(this._self, this._then);

  final _GenTimings _self;
  final $Res Function(_GenTimings) _then;

  /// Create a copy of GenTimings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? genLt = null,
    Object? genUtime = null,
  }) {
    return _then(_GenTimings(
      genLt: null == genLt
          ? _self.genLt
          : genLt // ignore: cast_nullable_to_non_nullable
              as String,
      genUtime: null == genUtime
          ? _self.genUtime
          : genUtime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
