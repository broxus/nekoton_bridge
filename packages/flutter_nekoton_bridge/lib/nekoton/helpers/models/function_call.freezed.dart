// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'function_call.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FunctionCall {
  String get abi;
  String get method;
  TokensObject get params;

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FunctionCallCopyWith<FunctionCall> get copyWith =>
      _$FunctionCallCopyWithImpl<FunctionCall>(
          this as FunctionCall, _$identity);

  /// Serializes this FunctionCall to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FunctionCall &&
            (identical(other.abi, abi) || other.abi == abi) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, abi, method, const DeepCollectionEquality().hash(params));

  @override
  String toString() {
    return 'FunctionCall(abi: $abi, method: $method, params: $params)';
  }
}

/// @nodoc
abstract mixin class $FunctionCallCopyWith<$Res> {
  factory $FunctionCallCopyWith(
          FunctionCall value, $Res Function(FunctionCall) _then) =
      _$FunctionCallCopyWithImpl;
  @useResult
  $Res call({String abi, String method, TokensObject params});
}

/// @nodoc
class _$FunctionCallCopyWithImpl<$Res> implements $FunctionCallCopyWith<$Res> {
  _$FunctionCallCopyWithImpl(this._self, this._then);

  final FunctionCall _self;
  final $Res Function(FunctionCall) _then;

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abi = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_self.copyWith(
      abi: null == abi
          ? _self.abi
          : abi // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as TokensObject,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FunctionCall implements FunctionCall {
  const _FunctionCall(
      {required this.abi,
      required this.method,
      required final TokensObject params})
      : _params = params;
  factory _FunctionCall.fromJson(Map<String, dynamic> json) =>
      _$FunctionCallFromJson(json);

  @override
  final String abi;
  @override
  final String method;
  final TokensObject _params;
  @override
  TokensObject get params {
    if (_params is EqualUnmodifiableMapView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_params);
  }

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FunctionCallCopyWith<_FunctionCall> get copyWith =>
      __$FunctionCallCopyWithImpl<_FunctionCall>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FunctionCallToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FunctionCall &&
            (identical(other.abi, abi) || other.abi == abi) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, abi, method, const DeepCollectionEquality().hash(_params));

  @override
  String toString() {
    return 'FunctionCall(abi: $abi, method: $method, params: $params)';
  }
}

/// @nodoc
abstract mixin class _$FunctionCallCopyWith<$Res>
    implements $FunctionCallCopyWith<$Res> {
  factory _$FunctionCallCopyWith(
          _FunctionCall value, $Res Function(_FunctionCall) _then) =
      __$FunctionCallCopyWithImpl;
  @override
  @useResult
  $Res call({String abi, String method, TokensObject params});
}

/// @nodoc
class __$FunctionCallCopyWithImpl<$Res>
    implements _$FunctionCallCopyWith<$Res> {
  __$FunctionCallCopyWithImpl(this._self, this._then);

  final _FunctionCall _self;
  final $Res Function(_FunctionCall) _then;

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? abi = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_FunctionCall(
      abi: null == abi
          ? _self.abi
          : abi // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _self._params
          : params // ignore: cast_nullable_to_non_nullable
              as TokensObject,
    ));
  }
}

// dart format on
