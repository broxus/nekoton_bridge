// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'function_call.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FunctionCall _$FunctionCallFromJson(Map<String, dynamic> json) {
  return _FunctionCall.fromJson(json);
}

/// @nodoc
mixin _$FunctionCall {
  String get abi => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  Map<String, dynamic> get params => throw _privateConstructorUsedError;

  /// Serializes this FunctionCall to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FunctionCallCopyWith<FunctionCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunctionCallCopyWith<$Res> {
  factory $FunctionCallCopyWith(
          FunctionCall value, $Res Function(FunctionCall) then) =
      _$FunctionCallCopyWithImpl<$Res, FunctionCall>;
  @useResult
  $Res call({String abi, String method, Map<String, dynamic> params});
}

/// @nodoc
class _$FunctionCallCopyWithImpl<$Res, $Val extends FunctionCall>
    implements $FunctionCallCopyWith<$Res> {
  _$FunctionCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abi = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      abi: null == abi
          ? _value.abi
          : abi // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FunctionCallImplCopyWith<$Res>
    implements $FunctionCallCopyWith<$Res> {
  factory _$$FunctionCallImplCopyWith(
          _$FunctionCallImpl value, $Res Function(_$FunctionCallImpl) then) =
      __$$FunctionCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String abi, String method, Map<String, dynamic> params});
}

/// @nodoc
class __$$FunctionCallImplCopyWithImpl<$Res>
    extends _$FunctionCallCopyWithImpl<$Res, _$FunctionCallImpl>
    implements _$$FunctionCallImplCopyWith<$Res> {
  __$$FunctionCallImplCopyWithImpl(
      _$FunctionCallImpl _value, $Res Function(_$FunctionCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abi = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$FunctionCallImpl(
      abi: null == abi
          ? _value.abi
          : abi // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FunctionCallImpl implements _FunctionCall {
  const _$FunctionCallImpl(
      {required this.abi,
      required this.method,
      required final Map<String, dynamic> params})
      : _params = params;

  factory _$FunctionCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$FunctionCallImplFromJson(json);

  @override
  final String abi;
  @override
  final String method;
  final Map<String, dynamic> _params;
  @override
  Map<String, dynamic> get params {
    if (_params is EqualUnmodifiableMapView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_params);
  }

  @override
  String toString() {
    return 'FunctionCall(abi: $abi, method: $method, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FunctionCallImpl &&
            (identical(other.abi, abi) || other.abi == abi) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, abi, method, const DeepCollectionEquality().hash(_params));

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FunctionCallImplCopyWith<_$FunctionCallImpl> get copyWith =>
      __$$FunctionCallImplCopyWithImpl<_$FunctionCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FunctionCallImplToJson(
      this,
    );
  }
}

abstract class _FunctionCall implements FunctionCall {
  const factory _FunctionCall(
      {required final String abi,
      required final String method,
      required final Map<String, dynamic> params}) = _$FunctionCallImpl;

  factory _FunctionCall.fromJson(Map<String, dynamic> json) =
      _$FunctionCallImpl.fromJson;

  @override
  String get abi;
  @override
  String get method;
  @override
  Map<String, dynamic> get params;

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FunctionCallImplCopyWith<_$FunctionCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
