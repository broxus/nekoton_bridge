// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_get_public_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
EncryptedKeyGetPublicKeys _$EncryptedKeyGetPublicKeysFromJson(
    Map<String, dynamic> json) {
  return _EncryptedKeyGetPublicKeysRename.fromJson(json);
}

/// @nodoc
mixin _$EncryptedKeyGetPublicKeys {
  PublicKey get publicKey;

  /// Create a copy of EncryptedKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EncryptedKeyGetPublicKeysCopyWith<EncryptedKeyGetPublicKeys> get copyWith =>
      _$EncryptedKeyGetPublicKeysCopyWithImpl<EncryptedKeyGetPublicKeys>(
          this as EncryptedKeyGetPublicKeys, _$identity);

  /// Serializes this EncryptedKeyGetPublicKeys to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EncryptedKeyGetPublicKeys &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey);

  @override
  String toString() {
    return 'EncryptedKeyGetPublicKeys(publicKey: $publicKey)';
  }
}

/// @nodoc
abstract mixin class $EncryptedKeyGetPublicKeysCopyWith<$Res> {
  factory $EncryptedKeyGetPublicKeysCopyWith(EncryptedKeyGetPublicKeys value,
          $Res Function(EncryptedKeyGetPublicKeys) _then) =
      _$EncryptedKeyGetPublicKeysCopyWithImpl;
  @useResult
  $Res call({PublicKey publicKey});

  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class _$EncryptedKeyGetPublicKeysCopyWithImpl<$Res>
    implements $EncryptedKeyGetPublicKeysCopyWith<$Res> {
  _$EncryptedKeyGetPublicKeysCopyWithImpl(this._self, this._then);

  final EncryptedKeyGetPublicKeys _self;
  final $Res Function(EncryptedKeyGetPublicKeys) _then;

  /// Create a copy of EncryptedKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_self.copyWith(
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
    ));
  }

  /// Create a copy of EncryptedKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _EncryptedKeyGetPublicKeysRename implements EncryptedKeyGetPublicKeys {
  const _EncryptedKeyGetPublicKeysRename({required this.publicKey});
  factory _EncryptedKeyGetPublicKeysRename.fromJson(
          Map<String, dynamic> json) =>
      _$EncryptedKeyGetPublicKeysRenameFromJson(json);

  @override
  final PublicKey publicKey;

  /// Create a copy of EncryptedKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EncryptedKeyGetPublicKeysRenameCopyWith<_EncryptedKeyGetPublicKeysRename>
      get copyWith => __$EncryptedKeyGetPublicKeysRenameCopyWithImpl<
          _EncryptedKeyGetPublicKeysRename>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EncryptedKeyGetPublicKeysRenameToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EncryptedKeyGetPublicKeysRename &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey);

  @override
  String toString() {
    return 'EncryptedKeyGetPublicKeys(publicKey: $publicKey)';
  }
}

/// @nodoc
abstract mixin class _$EncryptedKeyGetPublicKeysRenameCopyWith<$Res>
    implements $EncryptedKeyGetPublicKeysCopyWith<$Res> {
  factory _$EncryptedKeyGetPublicKeysRenameCopyWith(
          _EncryptedKeyGetPublicKeysRename value,
          $Res Function(_EncryptedKeyGetPublicKeysRename) _then) =
      __$EncryptedKeyGetPublicKeysRenameCopyWithImpl;
  @override
  @useResult
  $Res call({PublicKey publicKey});

  @override
  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class __$EncryptedKeyGetPublicKeysRenameCopyWithImpl<$Res>
    implements _$EncryptedKeyGetPublicKeysRenameCopyWith<$Res> {
  __$EncryptedKeyGetPublicKeysRenameCopyWithImpl(this._self, this._then);

  final _EncryptedKeyGetPublicKeysRename _self;
  final $Res Function(_EncryptedKeyGetPublicKeysRename) _then;

  /// Create a copy of EncryptedKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_EncryptedKeyGetPublicKeysRename(
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
    ));
  }

  /// Create a copy of EncryptedKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }
}

// dart format on
