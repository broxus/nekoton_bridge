// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_get_public_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
DerivedKeyGetPublicKeys _$DerivedKeyGetPublicKeysFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyGetPublicKeysRename.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyGetPublicKeys {
  PublicKey get masterKey;
  Password get password;
  int get limit;
  int get offset;

  /// Create a copy of DerivedKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DerivedKeyGetPublicKeysCopyWith<DerivedKeyGetPublicKeys> get copyWith =>
      _$DerivedKeyGetPublicKeysCopyWithImpl<DerivedKeyGetPublicKeys>(
          this as DerivedKeyGetPublicKeys, _$identity);

  /// Serializes this DerivedKeyGetPublicKeys to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DerivedKeyGetPublicKeys &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, masterKey, password, limit, offset);

  @override
  String toString() {
    return 'DerivedKeyGetPublicKeys(masterKey: $masterKey, password: $password, limit: $limit, offset: $offset)';
  }
}

/// @nodoc
abstract mixin class $DerivedKeyGetPublicKeysCopyWith<$Res> {
  factory $DerivedKeyGetPublicKeysCopyWith(DerivedKeyGetPublicKeys value,
          $Res Function(DerivedKeyGetPublicKeys) _then) =
      _$DerivedKeyGetPublicKeysCopyWithImpl;
  @useResult
  $Res call({PublicKey masterKey, Password password, int limit, int offset});

  $PublicKeyCopyWith<$Res> get masterKey;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyGetPublicKeysCopyWithImpl<$Res>
    implements $DerivedKeyGetPublicKeysCopyWith<$Res> {
  _$DerivedKeyGetPublicKeysCopyWithImpl(this._self, this._then);

  final DerivedKeyGetPublicKeys _self;
  final $Res Function(DerivedKeyGetPublicKeys) _then;

  /// Create a copy of DerivedKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? password = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_self.copyWith(
      masterKey: null == masterKey
          ? _self.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of DerivedKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
      return _then(_self.copyWith(masterKey: value));
    });
  }

  /// Create a copy of DerivedKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_self.password, (value) {
      return _then(_self.copyWith(password: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _DerivedKeyGetPublicKeysRename implements DerivedKeyGetPublicKeys {
  const _DerivedKeyGetPublicKeysRename(
      {required this.masterKey,
      required this.password,
      required this.limit,
      required this.offset});
  factory _DerivedKeyGetPublicKeysRename.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyGetPublicKeysRenameFromJson(json);

  @override
  final PublicKey masterKey;
  @override
  final Password password;
  @override
  final int limit;
  @override
  final int offset;

  /// Create a copy of DerivedKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyGetPublicKeysRenameCopyWith<_DerivedKeyGetPublicKeysRename>
      get copyWith => __$DerivedKeyGetPublicKeysRenameCopyWithImpl<
          _DerivedKeyGetPublicKeysRename>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyGetPublicKeysRenameToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyGetPublicKeysRename &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, masterKey, password, limit, offset);

  @override
  String toString() {
    return 'DerivedKeyGetPublicKeys(masterKey: $masterKey, password: $password, limit: $limit, offset: $offset)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyGetPublicKeysRenameCopyWith<$Res>
    implements $DerivedKeyGetPublicKeysCopyWith<$Res> {
  factory _$DerivedKeyGetPublicKeysRenameCopyWith(
          _DerivedKeyGetPublicKeysRename value,
          $Res Function(_DerivedKeyGetPublicKeysRename) _then) =
      __$DerivedKeyGetPublicKeysRenameCopyWithImpl;
  @override
  @useResult
  $Res call({PublicKey masterKey, Password password, int limit, int offset});

  @override
  $PublicKeyCopyWith<$Res> get masterKey;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$DerivedKeyGetPublicKeysRenameCopyWithImpl<$Res>
    implements _$DerivedKeyGetPublicKeysRenameCopyWith<$Res> {
  __$DerivedKeyGetPublicKeysRenameCopyWithImpl(this._self, this._then);

  final _DerivedKeyGetPublicKeysRename _self;
  final $Res Function(_DerivedKeyGetPublicKeysRename) _then;

  /// Create a copy of DerivedKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? masterKey = null,
    Object? password = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_DerivedKeyGetPublicKeysRename(
      masterKey: null == masterKey
          ? _self.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of DerivedKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
      return _then(_self.copyWith(masterKey: value));
    });
  }

  /// Create a copy of DerivedKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_self.password, (value) {
      return _then(_self.copyWith(password: value));
    });
  }
}

// dart format on
