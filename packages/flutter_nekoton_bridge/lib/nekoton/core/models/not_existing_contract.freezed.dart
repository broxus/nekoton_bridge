// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'not_existing_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotExistingContract {
  GenTimings get timings;

  /// Create a copy of NotExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotExistingContractCopyWith<NotExistingContract> get copyWith =>
      _$NotExistingContractCopyWithImpl<NotExistingContract>(
          this as NotExistingContract, _$identity);

  /// Serializes this NotExistingContract to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotExistingContract &&
            (identical(other.timings, timings) || other.timings == timings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timings);

  @override
  String toString() {
    return 'NotExistingContract(timings: $timings)';
  }
}

/// @nodoc
abstract mixin class $NotExistingContractCopyWith<$Res> {
  factory $NotExistingContractCopyWith(
          NotExistingContract value, $Res Function(NotExistingContract) _then) =
      _$NotExistingContractCopyWithImpl;
  @useResult
  $Res call({GenTimings timings});

  $GenTimingsCopyWith<$Res> get timings;
}

/// @nodoc
class _$NotExistingContractCopyWithImpl<$Res>
    implements $NotExistingContractCopyWith<$Res> {
  _$NotExistingContractCopyWithImpl(this._self, this._then);

  final NotExistingContract _self;
  final $Res Function(NotExistingContract) _then;

  /// Create a copy of NotExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timings = null,
  }) {
    return _then(_self.copyWith(
      timings: null == timings
          ? _self.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
    ));
  }

  /// Create a copy of NotExistingContract
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
class _NotExistingContract implements NotExistingContract {
  const _NotExistingContract({required this.timings});
  factory _NotExistingContract.fromJson(Map<String, dynamic> json) =>
      _$NotExistingContractFromJson(json);

  @override
  final GenTimings timings;

  /// Create a copy of NotExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotExistingContractCopyWith<_NotExistingContract> get copyWith =>
      __$NotExistingContractCopyWithImpl<_NotExistingContract>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotExistingContractToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotExistingContract &&
            (identical(other.timings, timings) || other.timings == timings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timings);

  @override
  String toString() {
    return 'NotExistingContract(timings: $timings)';
  }
}

/// @nodoc
abstract mixin class _$NotExistingContractCopyWith<$Res>
    implements $NotExistingContractCopyWith<$Res> {
  factory _$NotExistingContractCopyWith(_NotExistingContract value,
          $Res Function(_NotExistingContract) _then) =
      __$NotExistingContractCopyWithImpl;
  @override
  @useResult
  $Res call({GenTimings timings});

  @override
  $GenTimingsCopyWith<$Res> get timings;
}

/// @nodoc
class __$NotExistingContractCopyWithImpl<$Res>
    implements _$NotExistingContractCopyWith<$Res> {
  __$NotExistingContractCopyWithImpl(this._self, this._then);

  final _NotExistingContract _self;
  final $Res Function(_NotExistingContract) _then;

  /// Create a copy of NotExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? timings = null,
  }) {
    return _then(_NotExistingContract(
      timings: null == timings
          ? _self.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
    ));
  }

  /// Create a copy of NotExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenTimingsCopyWith<$Res> get timings {
    return $GenTimingsCopyWith<$Res>(_self.timings, (value) {
      return _then(_self.copyWith(timings: value));
    });
  }
}

// dart format on
