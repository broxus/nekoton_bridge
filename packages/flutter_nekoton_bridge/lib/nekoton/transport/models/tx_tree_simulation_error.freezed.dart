// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tx_tree_simulation_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TxTreeSimulationError _$TxTreeSimulationErrorFromJson(
    Map<String, dynamic> json) {
  return _TxTreeSimulationError.fromJson(json);
}

/// @nodoc
mixin _$TxTreeSimulationError {
  TxTreeSimulationErrorType get type => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxTreeSimulationErrorCopyWith<TxTreeSimulationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxTreeSimulationErrorCopyWith<$Res> {
  factory $TxTreeSimulationErrorCopyWith(TxTreeSimulationError value,
          $Res Function(TxTreeSimulationError) then) =
      _$TxTreeSimulationErrorCopyWithImpl<$Res, TxTreeSimulationError>;
  @useResult
  $Res call({TxTreeSimulationErrorType type, num? code});
}

/// @nodoc
class _$TxTreeSimulationErrorCopyWithImpl<$Res,
        $Val extends TxTreeSimulationError>
    implements $TxTreeSimulationErrorCopyWith<$Res> {
  _$TxTreeSimulationErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TxTreeSimulationErrorType,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TxTreeSimulationErrorImplCopyWith<$Res>
    implements $TxTreeSimulationErrorCopyWith<$Res> {
  factory _$$TxTreeSimulationErrorImplCopyWith(
          _$TxTreeSimulationErrorImpl value,
          $Res Function(_$TxTreeSimulationErrorImpl) then) =
      __$$TxTreeSimulationErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TxTreeSimulationErrorType type, num? code});
}

/// @nodoc
class __$$TxTreeSimulationErrorImplCopyWithImpl<$Res>
    extends _$TxTreeSimulationErrorCopyWithImpl<$Res,
        _$TxTreeSimulationErrorImpl>
    implements _$$TxTreeSimulationErrorImplCopyWith<$Res> {
  __$$TxTreeSimulationErrorImplCopyWithImpl(_$TxTreeSimulationErrorImpl _value,
      $Res Function(_$TxTreeSimulationErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? code = freezed,
  }) {
    return _then(_$TxTreeSimulationErrorImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TxTreeSimulationErrorType,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TxTreeSimulationErrorImpl extends _TxTreeSimulationError {
  const _$TxTreeSimulationErrorImpl({required this.type, this.code})
      : super._();

  factory _$TxTreeSimulationErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$TxTreeSimulationErrorImplFromJson(json);

  @override
  final TxTreeSimulationErrorType type;
  @override
  final num? code;

  @override
  String toString() {
    return 'TxTreeSimulationError(type: $type, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxTreeSimulationErrorImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxTreeSimulationErrorImplCopyWith<_$TxTreeSimulationErrorImpl>
      get copyWith => __$$TxTreeSimulationErrorImplCopyWithImpl<
          _$TxTreeSimulationErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TxTreeSimulationErrorImplToJson(
      this,
    );
  }
}

abstract class _TxTreeSimulationError extends TxTreeSimulationError {
  const factory _TxTreeSimulationError(
      {required final TxTreeSimulationErrorType type,
      final num? code}) = _$TxTreeSimulationErrorImpl;
  const _TxTreeSimulationError._() : super._();

  factory _TxTreeSimulationError.fromJson(Map<String, dynamic> json) =
      _$TxTreeSimulationErrorImpl.fromJson;

  @override
  TxTreeSimulationErrorType get type;
  @override
  num? get code;
  @override
  @JsonKey(ignore: true)
  _$$TxTreeSimulationErrorImplCopyWith<_$TxTreeSimulationErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
