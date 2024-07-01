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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$GenTimingsImplCopyWith<$Res>
    implements $GenTimingsCopyWith<$Res> {
  factory _$$GenTimingsImplCopyWith(
          _$GenTimingsImpl value, $Res Function(_$GenTimingsImpl) then) =
      __$$GenTimingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String genLt, int genUtime});
}

/// @nodoc
class __$$GenTimingsImplCopyWithImpl<$Res>
    extends _$GenTimingsCopyWithImpl<$Res, _$GenTimingsImpl>
    implements _$$GenTimingsImplCopyWith<$Res> {
  __$$GenTimingsImplCopyWithImpl(
      _$GenTimingsImpl _value, $Res Function(_$GenTimingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genLt = null,
    Object? genUtime = null,
  }) {
    return _then(_$GenTimingsImpl(
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
class _$GenTimingsImpl implements _GenTimings {
  const _$GenTimingsImpl({required this.genLt, required this.genUtime});

  factory _$GenTimingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenTimingsImplFromJson(json);

  @override
  final String genLt;
  @override
  final int genUtime;

  @override
  String toString() {
    return 'GenTimings(genLt: $genLt, genUtime: $genUtime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenTimingsImpl &&
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
  _$$GenTimingsImplCopyWith<_$GenTimingsImpl> get copyWith =>
      __$$GenTimingsImplCopyWithImpl<_$GenTimingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenTimingsImplToJson(
      this,
    );
  }
}

abstract class _GenTimings implements GenTimings {
  const factory _GenTimings(
      {required final String genLt,
      required final int genUtime}) = _$GenTimingsImpl;

  factory _GenTimings.fromJson(Map<String, dynamic> json) =
      _$GenTimingsImpl.fromJson;

  @override
  String get genLt;
  @override
  int get genUtime;
  @override
  @JsonKey(ignore: true)
  _$$GenTimingsImplCopyWith<_$GenTimingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
