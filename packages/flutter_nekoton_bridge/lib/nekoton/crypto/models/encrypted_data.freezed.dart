// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'encrypted_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EncryptedData _$EncryptedDataFromJson(Map<String, dynamic> json) {
  return _EncryptedData.fromJson(json);
}

/// @nodoc
mixin _$EncryptedData {
  EncryptionAlgorithm get algorithm => throw _privateConstructorUsedError;
  String get sourcePublicKey => throw _privateConstructorUsedError;
  String get recipientPublicKey => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncryptedDataCopyWith<EncryptedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedDataCopyWith<$Res> {
  factory $EncryptedDataCopyWith(
          EncryptedData value, $Res Function(EncryptedData) then) =
      _$EncryptedDataCopyWithImpl<$Res>;
  $Res call(
      {EncryptionAlgorithm algorithm,
      String sourcePublicKey,
      String recipientPublicKey,
      String data,
      String nonce});
}

/// @nodoc
class _$EncryptedDataCopyWithImpl<$Res>
    implements $EncryptedDataCopyWith<$Res> {
  _$EncryptedDataCopyWithImpl(this._value, this._then);

  final EncryptedData _value;
  // ignore: unused_field
  final $Res Function(EncryptedData) _then;

  @override
  $Res call({
    Object? algorithm = freezed,
    Object? sourcePublicKey = freezed,
    Object? recipientPublicKey = freezed,
    Object? data = freezed,
    Object? nonce = freezed,
  }) {
    return _then(_value.copyWith(
      algorithm: algorithm == freezed
          ? _value.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as EncryptionAlgorithm,
      sourcePublicKey: sourcePublicKey == freezed
          ? _value.sourcePublicKey
          : sourcePublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      recipientPublicKey: recipientPublicKey == freezed
          ? _value.recipientPublicKey
          : recipientPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: nonce == freezed
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EncryptedDataCopyWith<$Res>
    implements $EncryptedDataCopyWith<$Res> {
  factory _$$_EncryptedDataCopyWith(
          _$_EncryptedData value, $Res Function(_$_EncryptedData) then) =
      __$$_EncryptedDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {EncryptionAlgorithm algorithm,
      String sourcePublicKey,
      String recipientPublicKey,
      String data,
      String nonce});
}

/// @nodoc
class __$$_EncryptedDataCopyWithImpl<$Res>
    extends _$EncryptedDataCopyWithImpl<$Res>
    implements _$$_EncryptedDataCopyWith<$Res> {
  __$$_EncryptedDataCopyWithImpl(
      _$_EncryptedData _value, $Res Function(_$_EncryptedData) _then)
      : super(_value, (v) => _then(v as _$_EncryptedData));

  @override
  _$_EncryptedData get _value => super._value as _$_EncryptedData;

  @override
  $Res call({
    Object? algorithm = freezed,
    Object? sourcePublicKey = freezed,
    Object? recipientPublicKey = freezed,
    Object? data = freezed,
    Object? nonce = freezed,
  }) {
    return _then(_$_EncryptedData(
      algorithm: algorithm == freezed
          ? _value.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as EncryptionAlgorithm,
      sourcePublicKey: sourcePublicKey == freezed
          ? _value.sourcePublicKey
          : sourcePublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      recipientPublicKey: recipientPublicKey == freezed
          ? _value.recipientPublicKey
          : recipientPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: nonce == freezed
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EncryptedData implements _EncryptedData {
  const _$_EncryptedData(
      {required this.algorithm,
      required this.sourcePublicKey,
      required this.recipientPublicKey,
      required this.data,
      required this.nonce});

  factory _$_EncryptedData.fromJson(Map<String, dynamic> json) =>
      _$$_EncryptedDataFromJson(json);

  @override
  final EncryptionAlgorithm algorithm;
  @override
  final String sourcePublicKey;
  @override
  final String recipientPublicKey;
  @override
  final String data;
  @override
  final String nonce;

  @override
  String toString() {
    return 'EncryptedData(algorithm: $algorithm, sourcePublicKey: $sourcePublicKey, recipientPublicKey: $recipientPublicKey, data: $data, nonce: $nonce)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EncryptedData &&
            const DeepCollectionEquality().equals(other.algorithm, algorithm) &&
            const DeepCollectionEquality()
                .equals(other.sourcePublicKey, sourcePublicKey) &&
            const DeepCollectionEquality()
                .equals(other.recipientPublicKey, recipientPublicKey) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.nonce, nonce));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(algorithm),
      const DeepCollectionEquality().hash(sourcePublicKey),
      const DeepCollectionEquality().hash(recipientPublicKey),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(nonce));

  @JsonKey(ignore: true)
  @override
  _$$_EncryptedDataCopyWith<_$_EncryptedData> get copyWith =>
      __$$_EncryptedDataCopyWithImpl<_$_EncryptedData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EncryptedDataToJson(
      this,
    );
  }
}

abstract class _EncryptedData implements EncryptedData {
  const factory _EncryptedData(
      {required final EncryptionAlgorithm algorithm,
      required final String sourcePublicKey,
      required final String recipientPublicKey,
      required final String data,
      required final String nonce}) = _$_EncryptedData;

  factory _EncryptedData.fromJson(Map<String, dynamic> json) =
      _$_EncryptedData.fromJson;

  @override
  EncryptionAlgorithm get algorithm;
  @override
  String get sourcePublicKey;
  @override
  String get recipientPublicKey;
  @override
  String get data;
  @override
  String get nonce;
  @override
  @JsonKey(ignore: true)
  _$$_EncryptedDataCopyWith<_$_EncryptedData> get copyWith =>
      throw _privateConstructorUsedError;
}
