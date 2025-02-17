// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_factor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeeFactors _$FeeFactorsFromJson(Map<String, dynamic> json) {
  return _FeeFactors.fromJson(json);
}

/// @nodoc
mixin _$FeeFactors {
  String get storageFeeFactor => throw _privateConstructorUsedError;
  String get gasFeeFactor => throw _privateConstructorUsedError;

  /// Serializes this FeeFactors to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeeFactors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeeFactorsCopyWith<FeeFactors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeFactorsCopyWith<$Res> {
  factory $FeeFactorsCopyWith(
          FeeFactors value, $Res Function(FeeFactors) then) =
      _$FeeFactorsCopyWithImpl<$Res, FeeFactors>;
  @useResult
  $Res call({String storageFeeFactor, String gasFeeFactor});
}

/// @nodoc
class _$FeeFactorsCopyWithImpl<$Res, $Val extends FeeFactors>
    implements $FeeFactorsCopyWith<$Res> {
  _$FeeFactorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeeFactors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storageFeeFactor = null,
    Object? gasFeeFactor = null,
  }) {
    return _then(_value.copyWith(
      storageFeeFactor: null == storageFeeFactor
          ? _value.storageFeeFactor
          : storageFeeFactor // ignore: cast_nullable_to_non_nullable
              as String,
      gasFeeFactor: null == gasFeeFactor
          ? _value.gasFeeFactor
          : gasFeeFactor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeeFactorsImplCopyWith<$Res>
    implements $FeeFactorsCopyWith<$Res> {
  factory _$$FeeFactorsImplCopyWith(
          _$FeeFactorsImpl value, $Res Function(_$FeeFactorsImpl) then) =
      __$$FeeFactorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String storageFeeFactor, String gasFeeFactor});
}

/// @nodoc
class __$$FeeFactorsImplCopyWithImpl<$Res>
    extends _$FeeFactorsCopyWithImpl<$Res, _$FeeFactorsImpl>
    implements _$$FeeFactorsImplCopyWith<$Res> {
  __$$FeeFactorsImplCopyWithImpl(
      _$FeeFactorsImpl _value, $Res Function(_$FeeFactorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeeFactors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storageFeeFactor = null,
    Object? gasFeeFactor = null,
  }) {
    return _then(_$FeeFactorsImpl(
      storageFeeFactor: null == storageFeeFactor
          ? _value.storageFeeFactor
          : storageFeeFactor // ignore: cast_nullable_to_non_nullable
              as String,
      gasFeeFactor: null == gasFeeFactor
          ? _value.gasFeeFactor
          : gasFeeFactor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeeFactorsImpl extends _FeeFactors {
  const _$FeeFactorsImpl(
      {required this.storageFeeFactor, required this.gasFeeFactor})
      : super._();

  factory _$FeeFactorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeeFactorsImplFromJson(json);

  @override
  final String storageFeeFactor;
  @override
  final String gasFeeFactor;

  @override
  String toString() {
    return 'FeeFactors(storageFeeFactor: $storageFeeFactor, gasFeeFactor: $gasFeeFactor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeFactorsImpl &&
            (identical(other.storageFeeFactor, storageFeeFactor) ||
                other.storageFeeFactor == storageFeeFactor) &&
            (identical(other.gasFeeFactor, gasFeeFactor) ||
                other.gasFeeFactor == gasFeeFactor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, storageFeeFactor, gasFeeFactor);

  /// Create a copy of FeeFactors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeFactorsImplCopyWith<_$FeeFactorsImpl> get copyWith =>
      __$$FeeFactorsImplCopyWithImpl<_$FeeFactorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeeFactorsImplToJson(
      this,
    );
  }
}

abstract class _FeeFactors extends FeeFactors {
  const factory _FeeFactors(
      {required final String storageFeeFactor,
      required final String gasFeeFactor}) = _$FeeFactorsImpl;
  const _FeeFactors._() : super._();

  factory _FeeFactors.fromJson(Map<String, dynamic> json) =
      _$FeeFactorsImpl.fromJson;

  @override
  String get storageFeeFactor;
  @override
  String get gasFeeFactor;

  /// Create a copy of FeeFactors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeeFactorsImplCopyWith<_$FeeFactorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
