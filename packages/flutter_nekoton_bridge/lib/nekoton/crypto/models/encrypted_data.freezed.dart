// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EncryptedData {
  EncryptionAlgorithm get algorithm;
  PublicKey get sourcePublicKey;
  PublicKey get recipientPublicKey;
  String get data;
  String get nonce;

  /// Create a copy of EncryptedData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EncryptedDataCopyWith<EncryptedData> get copyWith =>
      _$EncryptedDataCopyWithImpl<EncryptedData>(
          this as EncryptedData, _$identity);

  /// Serializes this EncryptedData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EncryptedData &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm) &&
            (identical(other.sourcePublicKey, sourcePublicKey) ||
                other.sourcePublicKey == sourcePublicKey) &&
            (identical(other.recipientPublicKey, recipientPublicKey) ||
                other.recipientPublicKey == recipientPublicKey) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.nonce, nonce) || other.nonce == nonce));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, algorithm, sourcePublicKey, recipientPublicKey, data, nonce);

  @override
  String toString() {
    return 'EncryptedData(algorithm: $algorithm, sourcePublicKey: $sourcePublicKey, recipientPublicKey: $recipientPublicKey, data: $data, nonce: $nonce)';
  }
}

/// @nodoc
abstract mixin class $EncryptedDataCopyWith<$Res> {
  factory $EncryptedDataCopyWith(
          EncryptedData value, $Res Function(EncryptedData) _then) =
      _$EncryptedDataCopyWithImpl;
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
class _$EncryptedDataCopyWithImpl<$Res>
    implements $EncryptedDataCopyWith<$Res> {
  _$EncryptedDataCopyWithImpl(this._self, this._then);

  final EncryptedData _self;
  final $Res Function(EncryptedData) _then;

  /// Create a copy of EncryptedData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? algorithm = null,
    Object? sourcePublicKey = null,
    Object? recipientPublicKey = null,
    Object? data = null,
    Object? nonce = null,
  }) {
    return _then(_self.copyWith(
      algorithm: null == algorithm
          ? _self.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as EncryptionAlgorithm,
      sourcePublicKey: null == sourcePublicKey
          ? _self.sourcePublicKey
          : sourcePublicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      recipientPublicKey: null == recipientPublicKey
          ? _self.recipientPublicKey
          : recipientPublicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _self.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of EncryptedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get sourcePublicKey {
    return $PublicKeyCopyWith<$Res>(_self.sourcePublicKey, (value) {
      return _then(_self.copyWith(sourcePublicKey: value));
    });
  }

  /// Create a copy of EncryptedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get recipientPublicKey {
    return $PublicKeyCopyWith<$Res>(_self.recipientPublicKey, (value) {
      return _then(_self.copyWith(recipientPublicKey: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _EncryptedData implements EncryptedData {
  const _EncryptedData(
      {required this.algorithm,
      required this.sourcePublicKey,
      required this.recipientPublicKey,
      required this.data,
      required this.nonce});
  factory _EncryptedData.fromJson(Map<String, dynamic> json) =>
      _$EncryptedDataFromJson(json);

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

  /// Create a copy of EncryptedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EncryptedDataCopyWith<_EncryptedData> get copyWith =>
      __$EncryptedDataCopyWithImpl<_EncryptedData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EncryptedDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EncryptedData &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm) &&
            (identical(other.sourcePublicKey, sourcePublicKey) ||
                other.sourcePublicKey == sourcePublicKey) &&
            (identical(other.recipientPublicKey, recipientPublicKey) ||
                other.recipientPublicKey == recipientPublicKey) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.nonce, nonce) || other.nonce == nonce));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, algorithm, sourcePublicKey, recipientPublicKey, data, nonce);

  @override
  String toString() {
    return 'EncryptedData(algorithm: $algorithm, sourcePublicKey: $sourcePublicKey, recipientPublicKey: $recipientPublicKey, data: $data, nonce: $nonce)';
  }
}

/// @nodoc
abstract mixin class _$EncryptedDataCopyWith<$Res>
    implements $EncryptedDataCopyWith<$Res> {
  factory _$EncryptedDataCopyWith(
          _EncryptedData value, $Res Function(_EncryptedData) _then) =
      __$EncryptedDataCopyWithImpl;
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
class __$EncryptedDataCopyWithImpl<$Res>
    implements _$EncryptedDataCopyWith<$Res> {
  __$EncryptedDataCopyWithImpl(this._self, this._then);

  final _EncryptedData _self;
  final $Res Function(_EncryptedData) _then;

  /// Create a copy of EncryptedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? algorithm = null,
    Object? sourcePublicKey = null,
    Object? recipientPublicKey = null,
    Object? data = null,
    Object? nonce = null,
  }) {
    return _then(_EncryptedData(
      algorithm: null == algorithm
          ? _self.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as EncryptionAlgorithm,
      sourcePublicKey: null == sourcePublicKey
          ? _self.sourcePublicKey
          : sourcePublicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      recipientPublicKey: null == recipientPublicKey
          ? _self.recipientPublicKey
          : recipientPublicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _self.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of EncryptedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get sourcePublicKey {
    return $PublicKeyCopyWith<$Res>(_self.sourcePublicKey, (value) {
      return _then(_self.copyWith(sourcePublicKey: value));
    });
  }

  /// Create a copy of EncryptedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get recipientPublicKey {
    return $PublicKeyCopyWith<$Res>(_self.recipientPublicKey, (value) {
      return _then(_self.copyWith(recipientPublicKey: value));
    });
  }
}

// dart format on
