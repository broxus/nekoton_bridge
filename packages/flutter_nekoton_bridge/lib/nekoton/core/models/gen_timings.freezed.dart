// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gen_timings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenTimings _$GenTimingsFromJson(Map<String, dynamic> json) {
  return _GenTimings.fromJson(json);
}

/// @nodoc
mixin _$GenTimings {
  String get genLt => throw _privateConstructorUsedError;
  int get genUtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenTimingsCopyWith<GenTimings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenTimingsCopyWith<$Res> {
  factory $GenTimingsCopyWith(
          GenTimings value, $Res Function(GenTimings) then) =
      _$GenTimingsCopyWithImpl<$Res, GenTimings>;
  @useResult
  $Res call({String genLt, int genUtime});
}

/// @nodoc
class _$GenTimingsCopyWithImpl<$Res, $Val extends GenTimings>
    implements $GenTimingsCopyWith<$Res> {
  _$GenTimingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genLt = null,
    Object? genUtime = null,
  }) {
    return _then(_value.copyWith(
      genLt: null == genLt
          ? _value.genLt
          : genLt // ignore: cast_nullable_to_non_nullable
              as String,
      genUtime: null == genUtime
          ? _value.genUtime
          : genUtime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenTimingsCopyWith<$Res>
    implements $GenTimingsCopyWith<$Res> {
  factory _$$_GenTimingsCopyWith(
          _$_GenTimings value, $Res Function(_$_GenTimings) then) =
      __$$_GenTimingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String genLt, int genUtime});
}

/// @nodoc
class __$$_GenTimingsCopyWithImpl<$Res>
    extends _$GenTimingsCopyWithImpl<$Res, _$_GenTimings>
    implements _$$_GenTimingsCopyWith<$Res> {
  __$$_GenTimingsCopyWithImpl(
      _$_GenTimings _value, $Res Function(_$_GenTimings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genLt = null,
    Object? genUtime = null,
  }) {
    return _then(_$_GenTimings(
      genLt: null == genLt
          ? _value.genLt
          : genLt // ignore: cast_nullable_to_non_nullable
              as String,
      genUtime: null == genUtime
          ? _value.genUtime
          : genUtime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenTimings implements _GenTimings {
  const _$_GenTimings({required this.genLt, required this.genUtime});

  factory _$_GenTimings.fromJson(Map<String, dynamic> json) =>
      _$$_GenTimingsFromJson(json);

  @override
  final String genLt;
  @override
  final int genUtime;

  @override
  String toString() {
    return 'GenTimings(genLt: $genLt, genUtime: $genUtime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenTimings &&
            (identical(other.genLt, genLt) || other.genLt == genLt) &&
            (identical(other.genUtime, genUtime) ||
                other.genUtime == genUtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, genLt, genUtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenTimingsCopyWith<_$_GenTimings> get copyWith =>
      __$$_GenTimingsCopyWithImpl<_$_GenTimings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenTimingsToJson(
      this,
    );
  }
}

abstract class _GenTimings implements GenTimings {
  const factory _GenTimings(
      {required final String genLt,
      required final int genUtime}) = _$_GenTimings;

  factory _GenTimings.fromJson(Map<String, dynamic> json) =
      _$_GenTimings.fromJson;

  @override
  String get genLt;
  @override
  int get genUtime;
  @override
  @JsonKey(ignore: true)
  _$$_GenTimingsCopyWith<_$_GenTimings> get copyWith =>
      throw _privateConstructorUsedError;
}
