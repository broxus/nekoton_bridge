// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EncryptedKeyPassword {
  PublicKey get publicKey;
  Password get password;

  /// Create a copy of EncryptedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EncryptedKeyPasswordCopyWith<EncryptedKeyPassword> get copyWith =>
      _$EncryptedKeyPasswordCopyWithImpl<EncryptedKeyPassword>(
          this as EncryptedKeyPassword, _$identity);

  /// Serializes this EncryptedKeyPassword to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EncryptedKeyPassword &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey, password);

  @override
  String toString() {
    return 'EncryptedKeyPassword(publicKey: $publicKey, password: $password)';
  }
}

/// @nodoc
abstract mixin class $EncryptedKeyPasswordCopyWith<$Res> {
  factory $EncryptedKeyPasswordCopyWith(EncryptedKeyPassword value,
          $Res Function(EncryptedKeyPassword) _then) =
      _$EncryptedKeyPasswordCopyWithImpl;
  @useResult
  $Res call({PublicKey publicKey, Password password});

  $PublicKeyCopyWith<$Res> get publicKey;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$EncryptedKeyPasswordCopyWithImpl<$Res>
    implements $EncryptedKeyPasswordCopyWith<$Res> {
  _$EncryptedKeyPasswordCopyWithImpl(this._self, this._then);

  final EncryptedKeyPassword _self;
  final $Res Function(EncryptedKeyPassword) _then;

  /// Create a copy of EncryptedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
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

  /// Create a copy of EncryptedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }

  /// Create a copy of EncryptedKeyPassword
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
class _EncryptedKeyPassword implements EncryptedKeyPassword {
  const _EncryptedKeyPassword(
      {required this.publicKey, required this.password});
  factory _EncryptedKeyPassword.fromJson(Map<String, dynamic> json) =>
      _$EncryptedKeyPasswordFromJson(json);

  @override
  final PublicKey publicKey;
  @override
  final Password password;

  /// Create a copy of EncryptedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EncryptedKeyPasswordCopyWith<_EncryptedKeyPassword> get copyWith =>
      __$EncryptedKeyPasswordCopyWithImpl<_EncryptedKeyPassword>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EncryptedKeyPasswordToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EncryptedKeyPassword &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey, password);

  @override
  String toString() {
    return 'EncryptedKeyPassword(publicKey: $publicKey, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$EncryptedKeyPasswordCopyWith<$Res>
    implements $EncryptedKeyPasswordCopyWith<$Res> {
  factory _$EncryptedKeyPasswordCopyWith(_EncryptedKeyPassword value,
          $Res Function(_EncryptedKeyPassword) _then) =
      __$EncryptedKeyPasswordCopyWithImpl;
  @override
  @useResult
  $Res call({PublicKey publicKey, Password password});

  @override
  $PublicKeyCopyWith<$Res> get publicKey;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$EncryptedKeyPasswordCopyWithImpl<$Res>
    implements _$EncryptedKeyPasswordCopyWith<$Res> {
  __$EncryptedKeyPasswordCopyWithImpl(this._self, this._then);

  final _EncryptedKeyPassword _self;
  final $Res Function(_EncryptedKeyPassword) _then;

  /// Create a copy of EncryptedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? publicKey = null,
    Object? password = null,
  }) {
    return _then(_EncryptedKeyPassword(
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

  /// Create a copy of EncryptedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }

  /// Create a copy of EncryptedKeyPassword
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
