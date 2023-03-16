// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signature_parts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignatureParts _$SignaturePartsFromJson(Map<String, dynamic> json) {
  return _SignatureParts.fromJson(json);
}

/// @nodoc
mixin _$SignatureParts {
  String get high => throw _privateConstructorUsedError;
  String get low => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignaturePartsCopyWith<SignatureParts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignaturePartsCopyWith<$Res> {
  factory $SignaturePartsCopyWith(
          SignatureParts value, $Res Function(SignatureParts) then) =
      _$SignaturePartsCopyWithImpl<$Res, SignatureParts>;
  @useResult
  $Res call({String high, String low});
}

/// @nodoc
class _$SignaturePartsCopyWithImpl<$Res, $Val extends SignatureParts>
    implements $SignaturePartsCopyWith<$Res> {
  _$SignaturePartsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? high = null,
    Object? low = null,
  }) {
    return _then(_value.copyWith(
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as String,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignaturePartsCopyWith<$Res>
    implements $SignaturePartsCopyWith<$Res> {
  factory _$$_SignaturePartsCopyWith(
          _$_SignatureParts value, $Res Function(_$_SignatureParts) then) =
      __$$_SignaturePartsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String high, String low});
}

/// @nodoc
class __$$_SignaturePartsCopyWithImpl<$Res>
    extends _$SignaturePartsCopyWithImpl<$Res, _$_SignatureParts>
    implements _$$_SignaturePartsCopyWith<$Res> {
  __$$_SignaturePartsCopyWithImpl(
      _$_SignatureParts _value, $Res Function(_$_SignatureParts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? high = null,
    Object? low = null,
  }) {
    return _then(_$_SignatureParts(
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as String,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignatureParts implements _SignatureParts {
  const _$_SignatureParts({required this.high, required this.low});

  factory _$_SignatureParts.fromJson(Map<String, dynamic> json) =>
      _$$_SignaturePartsFromJson(json);

  @override
  final String high;
  @override
  final String low;

  @override
  String toString() {
    return 'SignatureParts(high: $high, low: $low)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignatureParts &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.low, low) || other.low == low));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, high, low);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignaturePartsCopyWith<_$_SignatureParts> get copyWith =>
      __$$_SignaturePartsCopyWithImpl<_$_SignatureParts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignaturePartsToJson(
      this,
    );
  }
}

abstract class _SignatureParts implements SignatureParts {
  const factory _SignatureParts(
      {required final String high,
      required final String low}) = _$_SignatureParts;

  factory _SignatureParts.fromJson(Map<String, dynamic> json) =
      _$_SignatureParts.fromJson;

  @override
  String get high;
  @override
  String get low;
  @override
  @JsonKey(ignore: true)
  _$$_SignaturePartsCopyWith<_$_SignatureParts> get copyWith =>
      throw _privateConstructorUsedError;
}
