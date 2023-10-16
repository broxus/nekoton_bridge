// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  PublicKey get sourcePublicKey => throw _privateConstructorUsedError;
  PublicKey get recipientPublicKey => throw _privateConstructorUsedError;
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
      _$EncryptedDataCopyWithImpl<$Res, EncryptedData>;
  @useResult
  $Res call(
      {EncryptionAlgorithm algorithm,
      PublicKey sourcePublicKey,
      PublicKey recipientPublicKey,
      String data,
      String nonce});

  $PublicKeyCopyWith<$Res> get sourcePublicKey;
  $PublicKeyCopyWith<$Res> get recipientPublicKey;
}

/// @nodoc
class _$EncryptedDataCopyWithImpl<$Res, $Val extends EncryptedData>
    implements $EncryptedDataCopyWith<$Res> {
  _$EncryptedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? algorithm = null,
    Object? sourcePublicKey = null,
    Object? recipientPublicKey = null,
    Object? data = null,
    Object? nonce = null,
  }) {
    return _then(_value.copyWith(
      algorithm: null == algorithm
          ? _value.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as EncryptionAlgorithm,
      sourcePublicKey: null == sourcePublicKey
          ? _value.sourcePublicKey
          : sourcePublicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      recipientPublicKey: null == recipientPublicKey
          ? _value.recipientPublicKey
          : recipientPublicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get sourcePublicKey {
    return $PublicKeyCopyWith<$Res>(_value.sourcePublicKey, (value) {
      return _then(_value.copyWith(sourcePublicKey: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get recipientPublicKey {
    return $PublicKeyCopyWith<$Res>(_value.recipientPublicKey, (value) {
      return _then(_value.copyWith(recipientPublicKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EncryptedDataImplCopyWith<$Res>
    implements $EncryptedDataCopyWith<$Res> {
  factory _$$EncryptedDataImplCopyWith(
          _$EncryptedDataImpl value, $Res Function(_$EncryptedDataImpl) then) =
      __$$EncryptedDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EncryptionAlgorithm algorithm,
      PublicKey sourcePublicKey,
      PublicKey recipientPublicKey,
      String data,
      String nonce});

  @override
  $PublicKeyCopyWith<$Res> get sourcePublicKey;
  @override
  $PublicKeyCopyWith<$Res> get recipientPublicKey;
}

/// @nodoc
class __$$EncryptedDataImplCopyWithImpl<$Res>
    extends _$EncryptedDataCopyWithImpl<$Res, _$EncryptedDataImpl>
    implements _$$EncryptedDataImplCopyWith<$Res> {
  __$$EncryptedDataImplCopyWithImpl(
      _$EncryptedDataImpl _value, $Res Function(_$EncryptedDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? algorithm = null,
    Object? sourcePublicKey = null,
    Object? recipientPublicKey = null,
    Object? data = null,
    Object? nonce = null,
  }) {
    return _then(_$EncryptedDataImpl(
      algorithm: null == algorithm
          ? _value.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as EncryptionAlgorithm,
      sourcePublicKey: null == sourcePublicKey
          ? _value.sourcePublicKey
          : sourcePublicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      recipientPublicKey: null == recipientPublicKey
          ? _value.recipientPublicKey
          : recipientPublicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncryptedDataImpl implements _EncryptedData {
  const _$EncryptedDataImpl(
      {required this.algorithm,
      required this.sourcePublicKey,
      required this.recipientPublicKey,
      required this.data,
      required this.nonce});

  factory _$EncryptedDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptedDataImplFromJson(json);

  @override
  final EncryptionAlgorithm algorithm;
  @override
  final PublicKey sourcePublicKey;
  @override
  final PublicKey recipientPublicKey;
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
            other is _$EncryptedDataImpl &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm) &&
            (identical(other.sourcePublicKey, sourcePublicKey) ||
                other.sourcePublicKey == sourcePublicKey) &&
            (identical(other.recipientPublicKey, recipientPublicKey) ||
                other.recipientPublicKey == recipientPublicKey) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.nonce, nonce) || other.nonce == nonce));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, algorithm, sourcePublicKey, recipientPublicKey, data, nonce);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptedDataImplCopyWith<_$EncryptedDataImpl> get copyWith =>
      __$$EncryptedDataImplCopyWithImpl<_$EncryptedDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptedDataImplToJson(
      this,
    );
  }
}

abstract class _EncryptedData implements EncryptedData {
  const factory _EncryptedData(
      {required final EncryptionAlgorithm algorithm,
      required final PublicKey sourcePublicKey,
      required final PublicKey recipientPublicKey,
      required final String data,
      required final String nonce}) = _$EncryptedDataImpl;

  factory _EncryptedData.fromJson(Map<String, dynamic> json) =
      _$EncryptedDataImpl.fromJson;

  @override
  EncryptionAlgorithm get algorithm;
  @override
  PublicKey get sourcePublicKey;
  @override
  PublicKey get recipientPublicKey;
  @override
  String get data;
  @override
  String get nonce;
  @override
  @JsonKey(ignore: true)
  _$$EncryptedDataImplCopyWith<_$EncryptedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
