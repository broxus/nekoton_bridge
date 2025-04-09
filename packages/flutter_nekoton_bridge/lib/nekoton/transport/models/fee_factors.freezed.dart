// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_factors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeeFactors {
  int get storageFeeFactor;
  int get gasFeeFactor;

  /// Create a copy of FeeFactors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeeFactorsCopyWith<FeeFactors> get copyWith =>
      _$FeeFactorsCopyWithImpl<FeeFactors>(this as FeeFactors, _$identity);

  /// Serializes this FeeFactors to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeeFactors &&
            (identical(other.storageFeeFactor, storageFeeFactor) ||
                other.storageFeeFactor == storageFeeFactor) &&
            (identical(other.gasFeeFactor, gasFeeFactor) ||
                other.gasFeeFactor == gasFeeFactor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, storageFeeFactor, gasFeeFactor);

  @override
  String toString() {
    return 'FeeFactors(storageFeeFactor: $storageFeeFactor, gasFeeFactor: $gasFeeFactor)';
  }
}

/// @nodoc
abstract mixin class $FeeFactorsCopyWith<$Res> {
  factory $FeeFactorsCopyWith(
          FeeFactors value, $Res Function(FeeFactors) _then) =
      _$FeeFactorsCopyWithImpl;
  @useResult
  $Res call({int storageFeeFactor, int gasFeeFactor});
}

/// @nodoc
class _$FeeFactorsCopyWithImpl<$Res> implements $FeeFactorsCopyWith<$Res> {
  _$FeeFactorsCopyWithImpl(this._self, this._then);

  final FeeFactors _self;
  final $Res Function(FeeFactors) _then;

  /// Create a copy of FeeFactors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storageFeeFactor = null,
    Object? gasFeeFactor = null,
  }) {
    return _then(_self.copyWith(
      storageFeeFactor: null == storageFeeFactor
          ? _self.storageFeeFactor
          : storageFeeFactor // ignore: cast_nullable_to_non_nullable
              as int,
      gasFeeFactor: null == gasFeeFactor
          ? _self.gasFeeFactor
          : gasFeeFactor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FeeFactors implements FeeFactors {
  const _FeeFactors(
      {required this.storageFeeFactor, required this.gasFeeFactor});
  factory _FeeFactors.fromJson(Map<String, dynamic> json) =>
      _$FeeFactorsFromJson(json);

  @override
  final int storageFeeFactor;
  @override
  final int gasFeeFactor;

  /// Create a copy of FeeFactors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeeFactorsCopyWith<_FeeFactors> get copyWith =>
      __$FeeFactorsCopyWithImpl<_FeeFactors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeeFactorsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeeFactors &&
            (identical(other.storageFeeFactor, storageFeeFactor) ||
                other.storageFeeFactor == storageFeeFactor) &&
            (identical(other.gasFeeFactor, gasFeeFactor) ||
                other.gasFeeFactor == gasFeeFactor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, storageFeeFactor, gasFeeFactor);

  @override
  String toString() {
    return 'FeeFactors(storageFeeFactor: $storageFeeFactor, gasFeeFactor: $gasFeeFactor)';
  }
}

/// @nodoc
abstract mixin class _$FeeFactorsCopyWith<$Res>
    implements $FeeFactorsCopyWith<$Res> {
  factory _$FeeFactorsCopyWith(
          _FeeFactors value, $Res Function(_FeeFactors) _then) =
      __$FeeFactorsCopyWithImpl;
  @override
  @useResult
  $Res call({int storageFeeFactor, int gasFeeFactor});
}

/// @nodoc
class __$FeeFactorsCopyWithImpl<$Res> implements _$FeeFactorsCopyWith<$Res> {
  __$FeeFactorsCopyWithImpl(this._self, this._then);

  final _FeeFactors _self;
  final $Res Function(_FeeFactors) _then;

  /// Create a copy of FeeFactors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? storageFeeFactor = null,
    Object? gasFeeFactor = null,
  }) {
    return _then(_FeeFactors(
      storageFeeFactor: null == storageFeeFactor
          ? _self.storageFeeFactor
          : storageFeeFactor // ignore: cast_nullable_to_non_nullable
              as int,
      gasFeeFactor: null == gasFeeFactor
          ? _self.gasFeeFactor
          : gasFeeFactor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
