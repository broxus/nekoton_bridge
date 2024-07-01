// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_get_public_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DerivedKeyGetPublicKeys _$DerivedKeyGetPublicKeysFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyGetPublicKeysRename.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyGetPublicKeys {
  PublicKey get masterKey => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DerivedKeyGetPublicKeysCopyWith<DerivedKeyGetPublicKeys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyGetPublicKeysCopyWith<$Res> {
  factory $DerivedKeyGetPublicKeysCopyWith(DerivedKeyGetPublicKeys value,
          $Res Function(DerivedKeyGetPublicKeys) then) =
      _$DerivedKeyGetPublicKeysCopyWithImpl<$Res, DerivedKeyGetPublicKeys>;
  @useResult
  $Res call({PublicKey masterKey, Password password, int limit, int offset});

  $PublicKeyCopyWith<$Res> get masterKey;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyGetPublicKeysCopyWithImpl<$Res,
        $Val extends DerivedKeyGetPublicKeys>
    implements $DerivedKeyGetPublicKeysCopyWith<$Res> {
  _$DerivedKeyGetPublicKeysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? password = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_value.masterKey, (value) {
      return _then(_value.copyWith(masterKey: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DerivedKeyGetPublicKeysRenameImplCopyWith<$Res>
    implements $DerivedKeyGetPublicKeysCopyWith<$Res> {
  factory _$$DerivedKeyGetPublicKeysRenameImplCopyWith(
          _$DerivedKeyGetPublicKeysRenameImpl value,
          $Res Function(_$DerivedKeyGetPublicKeysRenameImpl) then) =
      __$$DerivedKeyGetPublicKeysRenameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PublicKey masterKey, Password password, int limit, int offset});

  @override
  $PublicKeyCopyWith<$Res> get masterKey;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$DerivedKeyGetPublicKeysRenameImplCopyWithImpl<$Res>
    extends _$DerivedKeyGetPublicKeysCopyWithImpl<$Res,
        _$DerivedKeyGetPublicKeysRenameImpl>
    implements _$$DerivedKeyGetPublicKeysRenameImplCopyWith<$Res> {
  __$$DerivedKeyGetPublicKeysRenameImplCopyWithImpl(
      _$DerivedKeyGetPublicKeysRenameImpl _value,
      $Res Function(_$DerivedKeyGetPublicKeysRenameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? password = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$DerivedKeyGetPublicKeysRenameImpl(
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DerivedKeyGetPublicKeysRenameImpl
    implements _DerivedKeyGetPublicKeysRename {
  const _$DerivedKeyGetPublicKeysRenameImpl(
      {required this.masterKey,
      required this.password,
      required this.limit,
      required this.offset});

  factory _$DerivedKeyGetPublicKeysRenameImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DerivedKeyGetPublicKeysRenameImplFromJson(json);

  @override
  final PublicKey masterKey;
  @override
  final Password password;
  @override
  final int limit;
  @override
  final int offset;

  @override
  String toString() {
    return 'DerivedKeyGetPublicKeys(masterKey: $masterKey, password: $password, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DerivedKeyGetPublicKeysRenameImpl &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, masterKey, password, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DerivedKeyGetPublicKeysRenameImplCopyWith<
          _$DerivedKeyGetPublicKeysRenameImpl>
      get copyWith => __$$DerivedKeyGetPublicKeysRenameImplCopyWithImpl<
          _$DerivedKeyGetPublicKeysRenameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DerivedKeyGetPublicKeysRenameImplToJson(
      this,
    );
  }
}

abstract class _DerivedKeyGetPublicKeysRename
    implements DerivedKeyGetPublicKeys {
  const factory _DerivedKeyGetPublicKeysRename(
      {required final PublicKey masterKey,
      required final Password password,
      required final int limit,
      required final int offset}) = _$DerivedKeyGetPublicKeysRenameImpl;

  factory _DerivedKeyGetPublicKeysRename.fromJson(Map<String, dynamic> json) =
      _$DerivedKeyGetPublicKeysRenameImpl.fromJson;

  @override
  PublicKey get masterKey;
  @override
  Password get password;
  @override
  int get limit;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$DerivedKeyGetPublicKeysRenameImplCopyWith<
          _$DerivedKeyGetPublicKeysRenameImpl>
      get copyWith => throw _privateConstructorUsedError;
}
