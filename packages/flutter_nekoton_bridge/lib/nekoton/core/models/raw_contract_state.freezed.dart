// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'raw_contract_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RawContractState _$RawContractStateFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'notExists':
      return _NotExists.fromJson(json);
    case 'exists':
      return _Exists.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'RawContractState',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$RawContractState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GenTimings timings) notExists,
    required TResult Function(ExistingContract data) exists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GenTimings timings)? notExists,
    TResult? Function(ExistingContract data)? exists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GenTimings timings)? notExists,
    TResult Function(ExistingContract data)? exists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotExists value) notExists,
    required TResult Function(_Exists value) exists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotExists value)? notExists,
    TResult? Function(_Exists value)? exists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_Exists value)? exists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this RawContractState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawContractStateCopyWith<$Res> {
  factory $RawContractStateCopyWith(
          RawContractState value, $Res Function(RawContractState) then) =
      _$RawContractStateCopyWithImpl<$Res, RawContractState>;
}

/// @nodoc
class _$RawContractStateCopyWithImpl<$Res, $Val extends RawContractState>
    implements $RawContractStateCopyWith<$Res> {
  _$RawContractStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotExistsImplCopyWith<$Res> {
  factory _$$NotExistsImplCopyWith(
          _$NotExistsImpl value, $Res Function(_$NotExistsImpl) then) =
      __$$NotExistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GenTimings timings});

  $GenTimingsCopyWith<$Res> get timings;
}

/// @nodoc
class __$$NotExistsImplCopyWithImpl<$Res>
    extends _$RawContractStateCopyWithImpl<$Res, _$NotExistsImpl>
    implements _$$NotExistsImplCopyWith<$Res> {
  __$$NotExistsImplCopyWithImpl(
      _$NotExistsImpl _value, $Res Function(_$NotExistsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timings = null,
  }) {
    return _then(_$NotExistsImpl(
      null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
    ));
  }

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenTimingsCopyWith<$Res> get timings {
    return $GenTimingsCopyWith<$Res>(_value.timings, (value) {
      return _then(_value.copyWith(timings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$NotExistsImpl implements _NotExists {
  const _$NotExistsImpl(this.timings, {final String? $type})
      : $type = $type ?? 'notExists';

  factory _$NotExistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotExistsImplFromJson(json);

  @override
  final GenTimings timings;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'RawContractState.notExists(timings: $timings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotExistsImpl &&
            (identical(other.timings, timings) || other.timings == timings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timings);

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotExistsImplCopyWith<_$NotExistsImpl> get copyWith =>
      __$$NotExistsImplCopyWithImpl<_$NotExistsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GenTimings timings) notExists,
    required TResult Function(ExistingContract data) exists,
  }) {
    return notExists(timings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GenTimings timings)? notExists,
    TResult? Function(ExistingContract data)? exists,
  }) {
    return notExists?.call(timings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GenTimings timings)? notExists,
    TResult Function(ExistingContract data)? exists,
    required TResult orElse(),
  }) {
    if (notExists != null) {
      return notExists(timings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotExists value) notExists,
    required TResult Function(_Exists value) exists,
  }) {
    return notExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotExists value)? notExists,
    TResult? Function(_Exists value)? exists,
  }) {
    return notExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_Exists value)? exists,
    required TResult orElse(),
  }) {
    if (notExists != null) {
      return notExists(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotExistsImplToJson(
      this,
    );
  }
}

abstract class _NotExists implements RawContractState {
  const factory _NotExists(final GenTimings timings) = _$NotExistsImpl;

  factory _NotExists.fromJson(Map<String, dynamic> json) =
      _$NotExistsImpl.fromJson;

  GenTimings get timings;

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotExistsImplCopyWith<_$NotExistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExistsImplCopyWith<$Res> {
  factory _$$ExistsImplCopyWith(
          _$ExistsImpl value, $Res Function(_$ExistsImpl) then) =
      __$$ExistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExistingContract data});

  $ExistingContractCopyWith<$Res> get data;
}

/// @nodoc
class __$$ExistsImplCopyWithImpl<$Res>
    extends _$RawContractStateCopyWithImpl<$Res, _$ExistsImpl>
    implements _$$ExistsImplCopyWith<$Res> {
  __$$ExistsImplCopyWithImpl(
      _$ExistsImpl _value, $Res Function(_$ExistsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ExistsImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExistingContract,
    ));
  }

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExistingContractCopyWith<$Res> get data {
    return $ExistingContractCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ExistsImpl implements _Exists {
  const _$ExistsImpl(this.data, {final String? $type})
      : $type = $type ?? 'exists';

  factory _$ExistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExistsImplFromJson(json);

  @override
  final ExistingContract data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'RawContractState.exists(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExistsImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExistsImplCopyWith<_$ExistsImpl> get copyWith =>
      __$$ExistsImplCopyWithImpl<_$ExistsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GenTimings timings) notExists,
    required TResult Function(ExistingContract data) exists,
  }) {
    return exists(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GenTimings timings)? notExists,
    TResult? Function(ExistingContract data)? exists,
  }) {
    return exists?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GenTimings timings)? notExists,
    TResult Function(ExistingContract data)? exists,
    required TResult orElse(),
  }) {
    if (exists != null) {
      return exists(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotExists value) notExists,
    required TResult Function(_Exists value) exists,
  }) {
    return exists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotExists value)? notExists,
    TResult? Function(_Exists value)? exists,
  }) {
    return exists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_Exists value)? exists,
    required TResult orElse(),
  }) {
    if (exists != null) {
      return exists(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExistsImplToJson(
      this,
    );
  }
}

abstract class _Exists implements RawContractState {
  const factory _Exists(final ExistingContract data) = _$ExistsImpl;

  factory _Exists.fromJson(Map<String, dynamic> json) = _$ExistsImpl.fromJson;

  ExistingContract get data;

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExistsImplCopyWith<_$ExistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
