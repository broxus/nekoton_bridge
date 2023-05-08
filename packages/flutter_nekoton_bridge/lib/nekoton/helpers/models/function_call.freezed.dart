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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FunctionCall _$FunctionCallFromJson(Map<String, dynamic> json) {
  return _FunctionCall.fromJson(json);
}

/// @nodoc
mixin _$FunctionCall {
  String get abi => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  Map<String, dynamic> get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_FunctionCallCopyWith<$Res>
    implements $FunctionCallCopyWith<$Res> {
  factory _$$_FunctionCallCopyWith(
          _$_FunctionCall value, $Res Function(_$_FunctionCall) then) =
      __$$_FunctionCallCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String abi, String method, Map<String, dynamic> params});
}

/// @nodoc
class __$$_FunctionCallCopyWithImpl<$Res>
    extends _$FunctionCallCopyWithImpl<$Res, _$_FunctionCall>
    implements _$$_FunctionCallCopyWith<$Res> {
  __$$_FunctionCallCopyWithImpl(
      _$_FunctionCall _value, $Res Function(_$_FunctionCall) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abi = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$_FunctionCall(
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
class _$_FunctionCall implements _FunctionCall {
  const _$_FunctionCall(
      {required this.abi,
      required this.method,
      required final Map<String, dynamic> params})
      : _params = params;

  factory _$_FunctionCall.fromJson(Map<String, dynamic> json) =>
      _$$_FunctionCallFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FunctionCall &&
            (identical(other.abi, abi) || other.abi == abi) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, abi, method, const DeepCollectionEquality().hash(_params));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FunctionCallCopyWith<_$_FunctionCall> get copyWith =>
      __$$_FunctionCallCopyWithImpl<_$_FunctionCall>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FunctionCallToJson(
      this,
    );
  }
}

abstract class _FunctionCall implements FunctionCall {
  const factory _FunctionCall(
      {required final String abi,
      required final String method,
      required final Map<String, dynamic> params}) = _$_FunctionCall;

  factory _FunctionCall.fromJson(Map<String, dynamic> json) =
      _$_FunctionCall.fromJson;

  @override
  String get abi;
  @override
  String get method;
  @override
  Map<String, dynamic> get params;
  @override
  @JsonKey(ignore: true)
  _$$_FunctionCallCopyWith<_$_FunctionCall> get copyWith =>
      throw _privateConstructorUsedError;
}
