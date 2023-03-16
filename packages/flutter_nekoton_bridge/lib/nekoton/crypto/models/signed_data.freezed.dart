// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signed_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignedData _$SignedDataFromJson(Map<String, dynamic> json) {
  return _SignedData.fromJson(json);
}

/// @nodoc
mixin _$SignedData {
  String get dataHash => throw _privateConstructorUsedError;
  String get signature => throw _privateConstructorUsedError;
  String get signatureHex => throw _privateConstructorUsedError;
  SignatureParts get signatureParts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignedDataCopyWith<SignedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignedDataCopyWith<$Res> {
  factory $SignedDataCopyWith(
          SignedData value, $Res Function(SignedData) then) =
      _$SignedDataCopyWithImpl<$Res>;
  $Res call(
      {String dataHash,
      String signature,
      String signatureHex,
      SignatureParts signatureParts});

  $SignaturePartsCopyWith<$Res> get signatureParts;
}

/// @nodoc
class _$SignedDataCopyWithImpl<$Res> implements $SignedDataCopyWith<$Res> {
  _$SignedDataCopyWithImpl(this._value, this._then);

  final SignedData _value;
  // ignore: unused_field
  final $Res Function(SignedData) _then;

  @override
  $Res call({
    Object? dataHash = freezed,
    Object? signature = freezed,
    Object? signatureHex = freezed,
    Object? signatureParts = freezed,
  }) {
    return _then(_value.copyWith(
      dataHash: dataHash == freezed
          ? _value.dataHash
          : dataHash // ignore: cast_nullable_to_non_nullable
              as String,
      signature: signature == freezed
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      signatureHex: signatureHex == freezed
          ? _value.signatureHex
          : signatureHex // ignore: cast_nullable_to_non_nullable
              as String,
      signatureParts: signatureParts == freezed
          ? _value.signatureParts
          : signatureParts // ignore: cast_nullable_to_non_nullable
              as SignatureParts,
    ));
  }

  @override
  $SignaturePartsCopyWith<$Res> get signatureParts {
    return $SignaturePartsCopyWith<$Res>(_value.signatureParts, (value) {
      return _then(_value.copyWith(signatureParts: value));
    });
  }
}

/// @nodoc
abstract class _$$_SignedDataCopyWith<$Res>
    implements $SignedDataCopyWith<$Res> {
  factory _$$_SignedDataCopyWith(
          _$_SignedData value, $Res Function(_$_SignedData) then) =
      __$$_SignedDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String dataHash,
      String signature,
      String signatureHex,
      SignatureParts signatureParts});

  @override
  $SignaturePartsCopyWith<$Res> get signatureParts;
}

/// @nodoc
class __$$_SignedDataCopyWithImpl<$Res> extends _$SignedDataCopyWithImpl<$Res>
    implements _$$_SignedDataCopyWith<$Res> {
  __$$_SignedDataCopyWithImpl(
      _$_SignedData _value, $Res Function(_$_SignedData) _then)
      : super(_value, (v) => _then(v as _$_SignedData));

  @override
  _$_SignedData get _value => super._value as _$_SignedData;

  @override
  $Res call({
    Object? dataHash = freezed,
    Object? signature = freezed,
    Object? signatureHex = freezed,
    Object? signatureParts = freezed,
  }) {
    return _then(_$_SignedData(
      dataHash: dataHash == freezed
          ? _value.dataHash
          : dataHash // ignore: cast_nullable_to_non_nullable
              as String,
      signature: signature == freezed
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      signatureHex: signatureHex == freezed
          ? _value.signatureHex
          : signatureHex // ignore: cast_nullable_to_non_nullable
              as String,
      signatureParts: signatureParts == freezed
          ? _value.signatureParts
          : signatureParts // ignore: cast_nullable_to_non_nullable
              as SignatureParts,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignedData implements _SignedData {
  const _$_SignedData(
      {required this.dataHash,
      required this.signature,
      required this.signatureHex,
      required this.signatureParts});

  factory _$_SignedData.fromJson(Map<String, dynamic> json) =>
      _$$_SignedDataFromJson(json);

  @override
  final String dataHash;
  @override
  final String signature;
  @override
  final String signatureHex;
  @override
  final SignatureParts signatureParts;

  @override
  String toString() {
    return 'SignedData(dataHash: $dataHash, signature: $signature, signatureHex: $signatureHex, signatureParts: $signatureParts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignedData &&
            const DeepCollectionEquality().equals(other.dataHash, dataHash) &&
            const DeepCollectionEquality().equals(other.signature, signature) &&
            const DeepCollectionEquality()
                .equals(other.signatureHex, signatureHex) &&
            const DeepCollectionEquality()
                .equals(other.signatureParts, signatureParts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dataHash),
      const DeepCollectionEquality().hash(signature),
      const DeepCollectionEquality().hash(signatureHex),
      const DeepCollectionEquality().hash(signatureParts));

  @JsonKey(ignore: true)
  @override
  _$$_SignedDataCopyWith<_$_SignedData> get copyWith =>
      __$$_SignedDataCopyWithImpl<_$_SignedData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignedDataToJson(
      this,
    );
  }
}

abstract class _SignedData implements SignedData {
  const factory _SignedData(
      {required final String dataHash,
      required final String signature,
      required final String signatureHex,
      required final SignatureParts signatureParts}) = _$_SignedData;

  factory _SignedData.fromJson(Map<String, dynamic> json) =
      _$_SignedData.fromJson;

  @override
  String get dataHash;
  @override
  String get signature;
  @override
  String get signatureHex;
  @override
  SignatureParts get signatureParts;
  @override
  @JsonKey(ignore: true)
  _$$_SignedDataCopyWith<_$_SignedData> get copyWith =>
      throw _privateConstructorUsedError;
}
