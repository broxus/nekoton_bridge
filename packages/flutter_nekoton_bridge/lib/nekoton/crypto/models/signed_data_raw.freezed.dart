// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signed_data_raw.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignedDataRaw _$SignedDataRawFromJson(Map<String, dynamic> json) {
  return _SignedDataRaw.fromJson(json);
}

/// @nodoc
mixin _$SignedDataRaw {
  String get signature => throw _privateConstructorUsedError;
  String get signatureHex => throw _privateConstructorUsedError;
  SignatureParts get signatureParts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignedDataRawCopyWith<SignedDataRaw> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignedDataRawCopyWith<$Res> {
  factory $SignedDataRawCopyWith(
          SignedDataRaw value, $Res Function(SignedDataRaw) then) =
      _$SignedDataRawCopyWithImpl<$Res, SignedDataRaw>;
  @useResult
  $Res call(
      {String signature, String signatureHex, SignatureParts signatureParts});

  $SignaturePartsCopyWith<$Res> get signatureParts;
}

/// @nodoc
class _$SignedDataRawCopyWithImpl<$Res, $Val extends SignedDataRaw>
    implements $SignedDataRawCopyWith<$Res> {
  _$SignedDataRawCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signature = null,
    Object? signatureHex = null,
    Object? signatureParts = null,
  }) {
    return _then(_value.copyWith(
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      signatureHex: null == signatureHex
          ? _value.signatureHex
          : signatureHex // ignore: cast_nullable_to_non_nullable
              as String,
      signatureParts: null == signatureParts
          ? _value.signatureParts
          : signatureParts // ignore: cast_nullable_to_non_nullable
              as SignatureParts,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignaturePartsCopyWith<$Res> get signatureParts {
    return $SignaturePartsCopyWith<$Res>(_value.signatureParts, (value) {
      return _then(_value.copyWith(signatureParts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignedDataRawCopyWith<$Res>
    implements $SignedDataRawCopyWith<$Res> {
  factory _$$_SignedDataRawCopyWith(
          _$_SignedDataRaw value, $Res Function(_$_SignedDataRaw) then) =
      __$$_SignedDataRawCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String signature, String signatureHex, SignatureParts signatureParts});

  @override
  $SignaturePartsCopyWith<$Res> get signatureParts;
}

/// @nodoc
class __$$_SignedDataRawCopyWithImpl<$Res>
    extends _$SignedDataRawCopyWithImpl<$Res, _$_SignedDataRaw>
    implements _$$_SignedDataRawCopyWith<$Res> {
  __$$_SignedDataRawCopyWithImpl(
      _$_SignedDataRaw _value, $Res Function(_$_SignedDataRaw) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signature = null,
    Object? signatureHex = null,
    Object? signatureParts = null,
  }) {
    return _then(_$_SignedDataRaw(
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      signatureHex: null == signatureHex
          ? _value.signatureHex
          : signatureHex // ignore: cast_nullable_to_non_nullable
              as String,
      signatureParts: null == signatureParts
          ? _value.signatureParts
          : signatureParts // ignore: cast_nullable_to_non_nullable
              as SignatureParts,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignedDataRaw implements _SignedDataRaw {
  const _$_SignedDataRaw(
      {required this.signature,
      required this.signatureHex,
      required this.signatureParts});

  factory _$_SignedDataRaw.fromJson(Map<String, dynamic> json) =>
      _$$_SignedDataRawFromJson(json);

  @override
  final String signature;
  @override
  final String signatureHex;
  @override
  final SignatureParts signatureParts;

  @override
  String toString() {
    return 'SignedDataRaw(signature: $signature, signatureHex: $signatureHex, signatureParts: $signatureParts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignedDataRaw &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.signatureHex, signatureHex) ||
                other.signatureHex == signatureHex) &&
            (identical(other.signatureParts, signatureParts) ||
                other.signatureParts == signatureParts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, signature, signatureHex, signatureParts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignedDataRawCopyWith<_$_SignedDataRaw> get copyWith =>
      __$$_SignedDataRawCopyWithImpl<_$_SignedDataRaw>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignedDataRawToJson(
      this,
    );
  }
}

abstract class _SignedDataRaw implements SignedDataRaw {
  const factory _SignedDataRaw(
      {required final String signature,
      required final String signatureHex,
      required final SignatureParts signatureParts}) = _$_SignedDataRaw;

  factory _SignedDataRaw.fromJson(Map<String, dynamic> json) =
      _$_SignedDataRaw.fromJson;

  @override
  String get signature;
  @override
  String get signatureHex;
  @override
  SignatureParts get signatureParts;
  @override
  @JsonKey(ignore: true)
  _$$_SignedDataRawCopyWith<_$_SignedDataRaw> get copyWith =>
      throw _privateConstructorUsedError;
}
