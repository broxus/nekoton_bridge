// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'not_existing_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotExistingContract _$NotExistingContractFromJson(Map<String, dynamic> json) {
  return _NotExistingContract.fromJson(json);
}

/// @nodoc
mixin _$NotExistingContract {
  GenTimings get timings => throw _privateConstructorUsedError;

  /// Serializes this NotExistingContract to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotExistingContractCopyWith<NotExistingContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotExistingContractCopyWith<$Res> {
  factory $NotExistingContractCopyWith(
          NotExistingContract value, $Res Function(NotExistingContract) then) =
      _$NotExistingContractCopyWithImpl<$Res, NotExistingContract>;
  @useResult
  $Res call({GenTimings timings});

  $GenTimingsCopyWith<$Res> get timings;
}

/// @nodoc
class _$NotExistingContractCopyWithImpl<$Res, $Val extends NotExistingContract>
    implements $NotExistingContractCopyWith<$Res> {
  _$NotExistingContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timings = null,
  }) {
    return _then(_value.copyWith(
      timings: null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
    ) as $Val);
  }

  /// Create a copy of NotExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenTimingsCopyWith<$Res> get timings {
    return $GenTimingsCopyWith<$Res>(_value.timings, (value) {
      return _then(_value.copyWith(timings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotExistingContractImplCopyWith<$Res>
    implements $NotExistingContractCopyWith<$Res> {
  factory _$$NotExistingContractImplCopyWith(_$NotExistingContractImpl value,
          $Res Function(_$NotExistingContractImpl) then) =
      __$$NotExistingContractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GenTimings timings});

  @override
  $GenTimingsCopyWith<$Res> get timings;
}

/// @nodoc
class __$$NotExistingContractImplCopyWithImpl<$Res>
    extends _$NotExistingContractCopyWithImpl<$Res, _$NotExistingContractImpl>
    implements _$$NotExistingContractImplCopyWith<$Res> {
  __$$NotExistingContractImplCopyWithImpl(_$NotExistingContractImpl _value,
      $Res Function(_$NotExistingContractImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timings = null,
  }) {
    return _then(_$NotExistingContractImpl(
      timings: null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotExistingContractImpl implements _NotExistingContract {
  const _$NotExistingContractImpl({required this.timings});

  factory _$NotExistingContractImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotExistingContractImplFromJson(json);

  @override
  final GenTimings timings;

  @override
  String toString() {
    return 'NotExistingContract(timings: $timings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotExistingContractImpl &&
            (identical(other.timings, timings) || other.timings == timings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timings);

  /// Create a copy of NotExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotExistingContractImplCopyWith<_$NotExistingContractImpl> get copyWith =>
      __$$NotExistingContractImplCopyWithImpl<_$NotExistingContractImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotExistingContractImplToJson(
      this,
    );
  }
}

abstract class _NotExistingContract implements NotExistingContract {
  const factory _NotExistingContract({required final GenTimings timings}) =
      _$NotExistingContractImpl;

  factory _NotExistingContract.fromJson(Map<String, dynamic> json) =
      _$NotExistingContractImpl.fromJson;

  @override
  GenTimings get timings;

  /// Create a copy of NotExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotExistingContractImplCopyWith<_$NotExistingContractImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
