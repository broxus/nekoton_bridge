// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_sign_params_by_public_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
DerivedKeyPasswordByPublicKey _$DerivedKeyPasswordByPublicKeyFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyPasswordByPublicKeyByPublicKey.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyPasswordByPublicKey {
  PublicKey get masterKey;
  PublicKey get publicKey;
  Password get password;

  /// Create a copy of DerivedKeyPasswordByPublicKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DerivedKeyPasswordByPublicKeyCopyWith<DerivedKeyPasswordByPublicKey>
      get copyWith => _$DerivedKeyPasswordByPublicKeyCopyWithImpl<
              DerivedKeyPasswordByPublicKey>(
          this as DerivedKeyPasswordByPublicKey, _$identity);

  /// Serializes this DerivedKeyPasswordByPublicKey to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DerivedKeyPasswordByPublicKey &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, masterKey, publicKey, password);

  @override
  String toString() {
    return 'DerivedKeyPasswordByPublicKey(masterKey: $masterKey, publicKey: $publicKey, password: $password)';
  }
}

/// @nodoc
abstract mixin class $DerivedKeyPasswordByPublicKeyCopyWith<$Res> {
  factory $DerivedKeyPasswordByPublicKeyCopyWith(
          DerivedKeyPasswordByPublicKey value,
          $Res Function(DerivedKeyPasswordByPublicKey) _then) =
      _$DerivedKeyPasswordByPublicKeyCopyWithImpl;
  @useResult
  $Res call({PublicKey masterKey, PublicKey publicKey, Password password});

  $PublicKeyCopyWith<$Res> get masterKey;
  $PublicKeyCopyWith<$Res> get publicKey;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyPasswordByPublicKeyCopyWithImpl<$Res>
    implements $DerivedKeyPasswordByPublicKeyCopyWith<$Res> {
  _$DerivedKeyPasswordByPublicKeyCopyWithImpl(this._self, this._then);

  final DerivedKeyPasswordByPublicKey _self;
  final $Res Function(DerivedKeyPasswordByPublicKey) _then;

  /// Create a copy of DerivedKeyPasswordByPublicKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? publicKey = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      masterKey: null == masterKey
          ? _self.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of DerivedKeyPasswordByPublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
      return _then(_self.copyWith(masterKey: value));
    });
  }

  /// Create a copy of DerivedKeyPasswordByPublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }

  /// Create a copy of DerivedKeyPasswordByPublicKey
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
class _DerivedKeyPasswordByPublicKeyByPublicKey
    implements DerivedKeyPasswordByPublicKey {
  const _DerivedKeyPasswordByPublicKeyByPublicKey(
      {required this.masterKey,
      required this.publicKey,
      required this.password});
  factory _DerivedKeyPasswordByPublicKeyByPublicKey.fromJson(
          Map<String, dynamic> json) =>
      _$DerivedKeyPasswordByPublicKeyByPublicKeyFromJson(json);

  @override
  final PublicKey masterKey;
  @override
  final PublicKey publicKey;
  @override
  final Password password;

  /// Create a copy of DerivedKeyPasswordByPublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyPasswordByPublicKeyByPublicKeyCopyWith<
          _DerivedKeyPasswordByPublicKeyByPublicKey>
      get copyWith => __$DerivedKeyPasswordByPublicKeyByPublicKeyCopyWithImpl<
          _DerivedKeyPasswordByPublicKeyByPublicKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyPasswordByPublicKeyByPublicKeyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyPasswordByPublicKeyByPublicKey &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, masterKey, publicKey, password);

  @override
  String toString() {
    return 'DerivedKeyPasswordByPublicKey(masterKey: $masterKey, publicKey: $publicKey, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyPasswordByPublicKeyByPublicKeyCopyWith<$Res>
    implements $DerivedKeyPasswordByPublicKeyCopyWith<$Res> {
  factory _$DerivedKeyPasswordByPublicKeyByPublicKeyCopyWith(
          _DerivedKeyPasswordByPublicKeyByPublicKey value,
          $Res Function(_DerivedKeyPasswordByPublicKeyByPublicKey) _then) =
      __$DerivedKeyPasswordByPublicKeyByPublicKeyCopyWithImpl;
  @override
  @useResult
  $Res call({PublicKey masterKey, PublicKey publicKey, Password password});

  @override
  $PublicKeyCopyWith<$Res> get masterKey;
  @override
  $PublicKeyCopyWith<$Res> get publicKey;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$DerivedKeyPasswordByPublicKeyByPublicKeyCopyWithImpl<$Res>
    implements _$DerivedKeyPasswordByPublicKeyByPublicKeyCopyWith<$Res> {
  __$DerivedKeyPasswordByPublicKeyByPublicKeyCopyWithImpl(
      this._self, this._then);

  final _DerivedKeyPasswordByPublicKeyByPublicKey _self;
  final $Res Function(_DerivedKeyPasswordByPublicKeyByPublicKey) _then;

  /// Create a copy of DerivedKeyPasswordByPublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? masterKey = null,
    Object? publicKey = null,
    Object? password = null,
  }) {
    return _then(_DerivedKeyPasswordByPublicKeyByPublicKey(
      masterKey: null == masterKey
          ? _self.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of DerivedKeyPasswordByPublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
      return _then(_self.copyWith(masterKey: value));
    });
  }

  /// Create a copy of DerivedKeyPasswordByPublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }

  /// Create a copy of DerivedKeyPasswordByPublicKey
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
