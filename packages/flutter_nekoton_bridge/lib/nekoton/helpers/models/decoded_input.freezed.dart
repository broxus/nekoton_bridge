// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoded_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DecodedInput _$DecodedInputFromJson(Map<String, dynamic> json) {
  return _DecodedInput.fromJson(json);
}

/// @nodoc
mixin _$DecodedInput {
  String get method => throw _privateConstructorUsedError;
  Map<String, dynamic> get input => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DecodedInputCopyWith<DecodedInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecodedInputCopyWith<$Res> {
  factory $DecodedInputCopyWith(
          DecodedInput value, $Res Function(DecodedInput) then) =
      _$DecodedInputCopyWithImpl<$Res, DecodedInput>;
  @useResult
  $Res call({String method, Map<String, dynamic> input});
}

/// @nodoc
class _$DecodedInputCopyWithImpl<$Res, $Val extends DecodedInput>
    implements $DecodedInputCopyWith<$Res> {
  _$DecodedInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? input = null,
  }) {
    return _then(_value.copyWith(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DecodedInputImplCopyWith<$Res>
    implements $DecodedInputCopyWith<$Res> {
  factory _$$DecodedInputImplCopyWith(
          _$DecodedInputImpl value, $Res Function(_$DecodedInputImpl) then) =
      __$$DecodedInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String method, Map<String, dynamic> input});
}

/// @nodoc
class __$$DecodedInputImplCopyWithImpl<$Res>
    extends _$DecodedInputCopyWithImpl<$Res, _$DecodedInputImpl>
    implements _$$DecodedInputImplCopyWith<$Res> {
  __$$DecodedInputImplCopyWithImpl(
      _$DecodedInputImpl _value, $Res Function(_$DecodedInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? input = null,
  }) {
    return _then(_$DecodedInputImpl(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      input: null == input
          ? _value._input
          : input // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DecodedInputImpl implements _DecodedInput {
  const _$DecodedInputImpl(
      {required this.method, required final Map<String, dynamic> input})
      : _input = input;

  factory _$DecodedInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecodedInputImplFromJson(json);

  @override
  final String method;
  final Map<String, dynamic> _input;
  @override
  Map<String, dynamic> get input {
    if (_input is EqualUnmodifiableMapView) return _input;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_input);
  }

  @override
  String toString() {
    return 'DecodedInput(method: $method, input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecodedInputImpl &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._input, _input));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, method, const DeepCollectionEquality().hash(_input));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecodedInputImplCopyWith<_$DecodedInputImpl> get copyWith =>
      __$$DecodedInputImplCopyWithImpl<_$DecodedInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DecodedInputImplToJson(
      this,
    );
  }
}

abstract class _DecodedInput implements DecodedInput {
  const factory _DecodedInput(
      {required final String method,
      required final Map<String, dynamic> input}) = _$DecodedInputImpl;

  factory _DecodedInput.fromJson(Map<String, dynamic> json) =
      _$DecodedInputImpl.fromJson;

  @override
  String get method;
  @override
  Map<String, dynamic> get input;
  @override
  @JsonKey(ignore: true)
  _$$DecodedInputImplCopyWith<_$DecodedInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
