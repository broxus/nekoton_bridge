// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

/// Adds pattern-matching-related methods to [EncryptedData].
extension EncryptedDataPatterns on EncryptedData {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EncryptedData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EncryptedData() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EncryptedData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EncryptedData():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EncryptedData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EncryptedData() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(EncryptionAlgorithm algorithm, PublicKey sourcePublicKey,
            PublicKey recipientPublicKey, String data, String nonce)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EncryptedData() when $default != null:
        return $default(_that.algorithm, _that.sourcePublicKey,
            _that.recipientPublicKey, _that.data, _that.nonce);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(EncryptionAlgorithm algorithm, PublicKey sourcePublicKey,
            PublicKey recipientPublicKey, String data, String nonce)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EncryptedData():
        return $default(_that.algorithm, _that.sourcePublicKey,
            _that.recipientPublicKey, _that.data, _that.nonce);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(EncryptionAlgorithm algorithm, PublicKey sourcePublicKey,
            PublicKey recipientPublicKey, String data, String nonce)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EncryptedData() when $default != null:
        return $default(_that.algorithm, _that.sourcePublicKey,
            _that.recipientPublicKey, _that.data, _that.nonce);
      case _:
        return null;
    }
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
