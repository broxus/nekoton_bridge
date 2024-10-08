// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EncryptedKeyPassword _$EncryptedKeyPasswordFromJson(Map<String, dynamic> json) {
  return _EncryptedKeyPassword.fromJson(json);
}

/// @nodoc
mixin _$EncryptedKeyPassword {
  PublicKey get publicKey => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  /// Serializes this EncryptedKeyPassword to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncryptedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncryptedKeyPasswordCopyWith<EncryptedKeyPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedKeyPasswordCopyWith<$Res> {
  factory $EncryptedKeyPasswordCopyWith(EncryptedKeyPassword value,
          $Res Function(EncryptedKeyPassword) then) =
      _$EncryptedKeyPasswordCopyWithImpl<$Res, EncryptedKeyPassword>;
  @useResult
  $Res call({PublicKey publicKey, Password password});

  $PublicKeyCopyWith<$Res> get publicKey;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$EncryptedKeyPasswordCopyWithImpl<$Res,
        $Val extends EncryptedKeyPassword>
    implements $EncryptedKeyPasswordCopyWith<$Res> {
  _$EncryptedKeyPasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncryptedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }

  /// Create a copy of EncryptedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_value.publicKey, (value) {
      return _then(_value.copyWith(publicKey: value) as $Val);
    });
  }

  /// Create a copy of EncryptedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EncryptedKeyPasswordImplCopyWith<$Res>
    implements $EncryptedKeyPasswordCopyWith<$Res> {
  factory _$$EncryptedKeyPasswordImplCopyWith(_$EncryptedKeyPasswordImpl value,
          $Res Function(_$EncryptedKeyPasswordImpl) then) =
      __$$EncryptedKeyPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PublicKey publicKey, Password password});

  @override
  $PublicKeyCopyWith<$Res> get publicKey;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$EncryptedKeyPasswordImplCopyWithImpl<$Res>
    extends _$EncryptedKeyPasswordCopyWithImpl<$Res, _$EncryptedKeyPasswordImpl>
    implements _$$EncryptedKeyPasswordImplCopyWith<$Res> {
  __$$EncryptedKeyPasswordImplCopyWithImpl(_$EncryptedKeyPasswordImpl _value,
      $Res Function(_$EncryptedKeyPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? password = null,
  }) {
    return _then(_$EncryptedKeyPasswordImpl(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$EncryptedKeyPasswordImpl implements _EncryptedKeyPassword {
  const _$EncryptedKeyPasswordImpl(
      {required this.publicKey, required this.password});

  factory _$EncryptedKeyPasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptedKeyPasswordImplFromJson(json);

  @override
  final PublicKey publicKey;
  @override
  final Password password;

  @override
  String toString() {
    return 'EncryptedKeyPassword(publicKey: $publicKey, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptedKeyPasswordImpl &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey, password);

  /// Create a copy of EncryptedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptedKeyPasswordImplCopyWith<_$EncryptedKeyPasswordImpl>
      get copyWith =>
          __$$EncryptedKeyPasswordImplCopyWithImpl<_$EncryptedKeyPasswordImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptedKeyPasswordImplToJson(
      this,
    );
  }
}

abstract class _EncryptedKeyPassword implements EncryptedKeyPassword {
  const factory _EncryptedKeyPassword(
      {required final PublicKey publicKey,
      required final Password password}) = _$EncryptedKeyPasswordImpl;

  factory _EncryptedKeyPassword.fromJson(Map<String, dynamic> json) =
      _$EncryptedKeyPasswordImpl.fromJson;

  @override
  PublicKey get publicKey;
  @override
  Password get password;

  /// Create a copy of EncryptedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptedKeyPasswordImplCopyWith<_$EncryptedKeyPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}
