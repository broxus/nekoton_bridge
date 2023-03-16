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
  String get publicKey => throw _privateConstructorUsedError;

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
  $Res call({String publicKey});
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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EncryptedKeyGetPublicKeysRenameCopyWith<$Res>
    implements $EncryptedKeyGetPublicKeysCopyWith<$Res> {
  factory _$$_EncryptedKeyGetPublicKeysRenameCopyWith(
          _$_EncryptedKeyGetPublicKeysRename value,
          $Res Function(_$_EncryptedKeyGetPublicKeysRename) then) =
      __$$_EncryptedKeyGetPublicKeysRenameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class __$$_EncryptedKeyGetPublicKeysRenameCopyWithImpl<$Res>
    extends _$EncryptedKeyGetPublicKeysCopyWithImpl<$Res,
        _$_EncryptedKeyGetPublicKeysRename>
    implements _$$_EncryptedKeyGetPublicKeysRenameCopyWith<$Res> {
  __$$_EncryptedKeyGetPublicKeysRenameCopyWithImpl(
      _$_EncryptedKeyGetPublicKeysRename _value,
      $Res Function(_$_EncryptedKeyGetPublicKeysRename) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_$_EncryptedKeyGetPublicKeysRename(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_EncryptedKeyGetPublicKeysRename
    implements _EncryptedKeyGetPublicKeysRename {
  const _$_EncryptedKeyGetPublicKeysRename({required this.publicKey});

  factory _$_EncryptedKeyGetPublicKeysRename.fromJson(
          Map<String, dynamic> json) =>
      _$$_EncryptedKeyGetPublicKeysRenameFromJson(json);

  @override
  final String publicKey;

  @override
  String toString() {
    return 'EncryptedKeyGetPublicKeys(publicKey: $publicKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EncryptedKeyGetPublicKeysRename &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EncryptedKeyGetPublicKeysRenameCopyWith<
          _$_EncryptedKeyGetPublicKeysRename>
      get copyWith => __$$_EncryptedKeyGetPublicKeysRenameCopyWithImpl<
          _$_EncryptedKeyGetPublicKeysRename>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EncryptedKeyGetPublicKeysRenameToJson(
      this,
    );
  }
}

abstract class _EncryptedKeyGetPublicKeysRename
    implements EncryptedKeyGetPublicKeys {
  const factory _EncryptedKeyGetPublicKeysRename(
      {required final String publicKey}) = _$_EncryptedKeyGetPublicKeysRename;

  factory _EncryptedKeyGetPublicKeysRename.fromJson(Map<String, dynamic> json) =
      _$_EncryptedKeyGetPublicKeysRename.fromJson;

  @override
  String get publicKey;
  @override
  @JsonKey(ignore: true)
  _$$_EncryptedKeyGetPublicKeysRenameCopyWith<
          _$_EncryptedKeyGetPublicKeysRename>
      get copyWith => throw _privateConstructorUsedError;
}
