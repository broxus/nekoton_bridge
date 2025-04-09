// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoded_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DecodedInput {
  String get method;
  TokensObject get input;

  /// Create a copy of DecodedInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DecodedInputCopyWith<DecodedInput> get copyWith =>
      _$DecodedInputCopyWithImpl<DecodedInput>(
          this as DecodedInput, _$identity);

  /// Serializes this DecodedInput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DecodedInput &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, method, const DeepCollectionEquality().hash(input));

  @override
  String toString() {
    return 'DecodedInput(method: $method, input: $input)';
  }
}

/// @nodoc
abstract mixin class $DecodedInputCopyWith<$Res> {
  factory $DecodedInputCopyWith(
          DecodedInput value, $Res Function(DecodedInput) _then) =
      _$DecodedInputCopyWithImpl;
  @useResult
  $Res call({String method, TokensObject input});
}

/// @nodoc
class _$DecodedInputCopyWithImpl<$Res> implements $DecodedInputCopyWith<$Res> {
  _$DecodedInputCopyWithImpl(this._self, this._then);

  final DecodedInput _self;
  final $Res Function(DecodedInput) _then;

  /// Create a copy of DecodedInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? input = null,
  }) {
    return _then(_self.copyWith(
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      input: null == input
          ? _self.input
          : input // ignore: cast_nullable_to_non_nullable
              as TokensObject,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DecodedInput implements DecodedInput {
  const _DecodedInput({required this.method, required final TokensObject input})
      : _input = input;
  factory _DecodedInput.fromJson(Map<String, dynamic> json) =>
      _$DecodedInputFromJson(json);

  @override
  final String method;
  final TokensObject _input;
  @override
  TokensObject get input {
    if (_input is EqualUnmodifiableMapView) return _input;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_input);
  }

  /// Create a copy of DecodedInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DecodedInputCopyWith<_DecodedInput> get copyWith =>
      __$DecodedInputCopyWithImpl<_DecodedInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DecodedInputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DecodedInput &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._input, _input));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, method, const DeepCollectionEquality().hash(_input));

  @override
  String toString() {
    return 'DecodedInput(method: $method, input: $input)';
  }
}

/// @nodoc
abstract mixin class _$DecodedInputCopyWith<$Res>
    implements $DecodedInputCopyWith<$Res> {
  factory _$DecodedInputCopyWith(
          _DecodedInput value, $Res Function(_DecodedInput) _then) =
      __$DecodedInputCopyWithImpl;
  @override
  @useResult
  $Res call({String method, TokensObject input});
}

/// @nodoc
class __$DecodedInputCopyWithImpl<$Res>
    implements _$DecodedInputCopyWith<$Res> {
  __$DecodedInputCopyWithImpl(this._self, this._then);

  final _DecodedInput _self;
  final $Res Function(_DecodedInput) _then;

  /// Create a copy of DecodedInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? method = null,
    Object? input = null,
  }) {
    return _then(_DecodedInput(
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      input: null == input
          ? _self._input
          : input // ignore: cast_nullable_to_non_nullable
              as TokensObject,
    ));
  }
}

// dart format on
