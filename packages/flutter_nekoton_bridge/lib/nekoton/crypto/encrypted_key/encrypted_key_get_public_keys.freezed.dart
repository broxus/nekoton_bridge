// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_get_public_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EncryptedKeyGetPublicKeys _$EncryptedKeyGetPublicKeysFromJson(
    Map<String, dynamic> json) {
  return _EncryptedKeyGetPublicKeysRename.fromJson(json);
}

/// @nodoc
mixin _$EncryptedKeyGetPublicKeys {
  PublicKey get publicKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncryptedKeyGetPublicKeysCopyWith<EncryptedKeyGetPublicKeys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedKeyGetPublicKeysCopyWith<$Res> {
  factory $EncryptedKeyGetPublicKeysCopyWith(EncryptedKeyGetPublicKeys value,
          $Res Function(EncryptedKeyGetPublicKeys) then) =
      _$EncryptedKeyGetPublicKeysCopyWithImpl<$Res, EncryptedKeyGetPublicKeys>;
  @useResult
  $Res call({PublicKey publicKey});

  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class _$EncryptedKeyGetPublicKeysCopyWithImpl<$Res,
        $Val extends EncryptedKeyGetPublicKeys>
    implements $EncryptedKeyGetPublicKeysCopyWith<$Res> {
  _$EncryptedKeyGetPublicKeysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_value.copyWith(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_value.publicKey, (value) {
      return _then(_value.copyWith(publicKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EncryptedKeyGetPublicKeysRenameImplCopyWith<$Res>
    implements $EncryptedKeyGetPublicKeysCopyWith<$Res> {
  factory _$$EncryptedKeyGetPublicKeysRenameImplCopyWith(
          _$EncryptedKeyGetPublicKeysRenameImpl value,
          $Res Function(_$EncryptedKeyGetPublicKeysRenameImpl) then) =
      __$$EncryptedKeyGetPublicKeysRenameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PublicKey publicKey});

  @override
  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class __$$EncryptedKeyGetPublicKeysRenameImplCopyWithImpl<$Res>
    extends _$EncryptedKeyGetPublicKeysCopyWithImpl<$Res,
        _$EncryptedKeyGetPublicKeysRenameImpl>
    implements _$$EncryptedKeyGetPublicKeysRenameImplCopyWith<$Res> {
  __$$EncryptedKeyGetPublicKeysRenameImplCopyWithImpl(
      _$EncryptedKeyGetPublicKeysRenameImpl _value,
      $Res Function(_$EncryptedKeyGetPublicKeysRenameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_$EncryptedKeyGetPublicKeysRenameImpl(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$EncryptedKeyGetPublicKeysRenameImpl
    implements _EncryptedKeyGetPublicKeysRename {
  const _$EncryptedKeyGetPublicKeysRenameImpl({required this.publicKey});

  factory _$EncryptedKeyGetPublicKeysRenameImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EncryptedKeyGetPublicKeysRenameImplFromJson(json);

  @override
  final PublicKey publicKey;

  @override
  String toString() {
    return 'EncryptedKeyGetPublicKeys(publicKey: $publicKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptedKeyGetPublicKeysRenameImpl &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptedKeyGetPublicKeysRenameImplCopyWith<
          _$EncryptedKeyGetPublicKeysRenameImpl>
      get copyWith => __$$EncryptedKeyGetPublicKeysRenameImplCopyWithImpl<
          _$EncryptedKeyGetPublicKeysRenameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptedKeyGetPublicKeysRenameImplToJson(
      this,
    );
  }
}

abstract class _EncryptedKeyGetPublicKeysRename
    implements EncryptedKeyGetPublicKeys {
  const factory _EncryptedKeyGetPublicKeysRename(
          {required final PublicKey publicKey}) =
      _$EncryptedKeyGetPublicKeysRenameImpl;

  factory _EncryptedKeyGetPublicKeysRename.fromJson(Map<String, dynamic> json) =
      _$EncryptedKeyGetPublicKeysRenameImpl.fromJson;

  @override
  PublicKey get publicKey;
  @override
  @JsonKey(ignore: true)
  _$$EncryptedKeyGetPublicKeysRenameImplCopyWith<
          _$EncryptedKeyGetPublicKeysRenameImpl>
      get copyWith => throw _privateConstructorUsedError;
}
