// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'derived_key_get_public_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DerivedKeyGetPublicKeys _$DerivedKeyGetPublicKeysFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyGetPublicKeysRename.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyGetPublicKeys {
  String get masterKey => throw _privateConstructorUsedError;
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
      _$DerivedKeyGetPublicKeysCopyWithImpl<$Res>;
  $Res call({String masterKey, Password password, int limit, int offset});

  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyGetPublicKeysCopyWithImpl<$Res>
    implements $DerivedKeyGetPublicKeysCopyWith<$Res> {
  _$DerivedKeyGetPublicKeysCopyWithImpl(this._value, this._then);

  final DerivedKeyGetPublicKeys _value;
  // ignore: unused_field
  final $Res Function(DerivedKeyGetPublicKeys) _then;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? password = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }
}

/// @nodoc
abstract class _$$_DerivedKeyGetPublicKeysRenameCopyWith<$Res>
    implements $DerivedKeyGetPublicKeysCopyWith<$Res> {
  factory _$$_DerivedKeyGetPublicKeysRenameCopyWith(
          _$_DerivedKeyGetPublicKeysRename value,
          $Res Function(_$_DerivedKeyGetPublicKeysRename) then) =
      __$$_DerivedKeyGetPublicKeysRenameCopyWithImpl<$Res>;
  @override
  $Res call({String masterKey, Password password, int limit, int offset});

  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$_DerivedKeyGetPublicKeysRenameCopyWithImpl<$Res>
    extends _$DerivedKeyGetPublicKeysCopyWithImpl<$Res>
    implements _$$_DerivedKeyGetPublicKeysRenameCopyWith<$Res> {
  __$$_DerivedKeyGetPublicKeysRenameCopyWithImpl(
      _$_DerivedKeyGetPublicKeysRename _value,
      $Res Function(_$_DerivedKeyGetPublicKeysRename) _then)
      : super(_value, (v) => _then(v as _$_DerivedKeyGetPublicKeysRename));

  @override
  _$_DerivedKeyGetPublicKeysRename get _value =>
      super._value as _$_DerivedKeyGetPublicKeysRename;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? password = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$_DerivedKeyGetPublicKeysRename(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DerivedKeyGetPublicKeysRename
    implements _DerivedKeyGetPublicKeysRename {
  const _$_DerivedKeyGetPublicKeysRename(
      {required this.masterKey,
      required this.password,
      required this.limit,
      required this.offset});

  factory _$_DerivedKeyGetPublicKeysRename.fromJson(
          Map<String, dynamic> json) =>
      _$$_DerivedKeyGetPublicKeysRenameFromJson(json);

  @override
  final String masterKey;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DerivedKeyGetPublicKeysRename &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(masterKey),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  _$$_DerivedKeyGetPublicKeysRenameCopyWith<_$_DerivedKeyGetPublicKeysRename>
      get copyWith => __$$_DerivedKeyGetPublicKeysRenameCopyWithImpl<
          _$_DerivedKeyGetPublicKeysRename>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DerivedKeyGetPublicKeysRenameToJson(
      this,
    );
  }
}

abstract class _DerivedKeyGetPublicKeysRename
    implements DerivedKeyGetPublicKeys {
  const factory _DerivedKeyGetPublicKeysRename(
      {required final String masterKey,
      required final Password password,
      required final int limit,
      required final int offset}) = _$_DerivedKeyGetPublicKeysRename;

  factory _DerivedKeyGetPublicKeysRename.fromJson(Map<String, dynamic> json) =
      _$_DerivedKeyGetPublicKeysRename.fromJson;

  @override
  String get masterKey;
  @override
  Password get password;
  @override
  int get limit;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$_DerivedKeyGetPublicKeysRenameCopyWith<_$_DerivedKeyGetPublicKeysRename>
      get copyWith => throw _privateConstructorUsedError;
}
