// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'raw_contract_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
RawContractState _$RawContractStateFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'notExists':
      return RawContractStateNotExists.fromJson(json);
    case 'exists':
      return RawContractStateExists.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'RawContractState',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$RawContractState {
  /// Serializes this RawContractState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RawContractState);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RawContractState()';
  }
}

/// @nodoc
class $RawContractStateCopyWith<$Res> {
  $RawContractStateCopyWith(
      RawContractState _, $Res Function(RawContractState) __);
}

/// @nodoc
@JsonSerializable()
class RawContractStateNotExists implements RawContractState {
  const RawContractStateNotExists(this.timings, {final String? $type})
      : $type = $type ?? 'notExists';
  factory RawContractStateNotExists.fromJson(Map<String, dynamic> json) =>
      _$RawContractStateNotExistsFromJson(json);

  final GenTimings timings;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RawContractStateNotExistsCopyWith<RawContractStateNotExists> get copyWith =>
      _$RawContractStateNotExistsCopyWithImpl<RawContractStateNotExists>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RawContractStateNotExistsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RawContractStateNotExists &&
            (identical(other.timings, timings) || other.timings == timings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timings);

  @override
  String toString() {
    return 'RawContractState.notExists(timings: $timings)';
  }
}

/// @nodoc
abstract mixin class $RawContractStateNotExistsCopyWith<$Res>
    implements $RawContractStateCopyWith<$Res> {
  factory $RawContractStateNotExistsCopyWith(RawContractStateNotExists value,
          $Res Function(RawContractStateNotExists) _then) =
      _$RawContractStateNotExistsCopyWithImpl;
  @useResult
  $Res call({GenTimings timings});

  $GenTimingsCopyWith<$Res> get timings;
}

/// @nodoc
class _$RawContractStateNotExistsCopyWithImpl<$Res>
    implements $RawContractStateNotExistsCopyWith<$Res> {
  _$RawContractStateNotExistsCopyWithImpl(this._self, this._then);

  final RawContractStateNotExists _self;
  final $Res Function(RawContractStateNotExists) _then;

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? timings = null,
  }) {
    return _then(RawContractStateNotExists(
      null == timings
          ? _self.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
    ));
  }

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenTimingsCopyWith<$Res> get timings {
    return $GenTimingsCopyWith<$Res>(_self.timings, (value) {
      return _then(_self.copyWith(timings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RawContractStateExists implements RawContractState {
  const RawContractStateExists(this.data, {final String? $type})
      : $type = $type ?? 'exists';
  factory RawContractStateExists.fromJson(Map<String, dynamic> json) =>
      _$RawContractStateExistsFromJson(json);

  final ExistingContract data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RawContractStateExistsCopyWith<RawContractStateExists> get copyWith =>
      _$RawContractStateExistsCopyWithImpl<RawContractStateExists>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RawContractStateExistsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RawContractStateExists &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'RawContractState.exists(data: $data)';
  }
}

/// @nodoc
abstract mixin class $RawContractStateExistsCopyWith<$Res>
    implements $RawContractStateCopyWith<$Res> {
  factory $RawContractStateExistsCopyWith(RawContractStateExists value,
          $Res Function(RawContractStateExists) _then) =
      _$RawContractStateExistsCopyWithImpl;
  @useResult
  $Res call({ExistingContract data});

  $ExistingContractCopyWith<$Res> get data;
}

/// @nodoc
class _$RawContractStateExistsCopyWithImpl<$Res>
    implements $RawContractStateExistsCopyWith<$Res> {
  _$RawContractStateExistsCopyWithImpl(this._self, this._then);

  final RawContractStateExists _self;
  final $Res Function(RawContractStateExists) _then;

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(RawContractStateExists(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExistingContract,
    ));
  }

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExistingContractCopyWith<$Res> get data {
    return $ExistingContractCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
